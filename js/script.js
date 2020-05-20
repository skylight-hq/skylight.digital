"use strict";

// Activate current main nav item
$(function() {
  var $anchorToDeactivate = $("#navbar-nav-collapsible a[aria-current]");
  $anchorToDeactivate.removeAttr("aria-current");
  var pathArray = location.pathname.split("/");
  var firstLevelPath = pathArray[1];
  var $anchorToActivate = $(
    '#navbar-nav-collapsible a[href*="' + firstLevelPath + '"]'
  );

  if ($anchorToActivate.length >= 1) {
    var secondLevelPath = pathArray[2];
    var parent = $anchorToActivate.first().parents(".dropdown");
    var path = secondLevelPath ? secondLevelPath : firstLevelPath;
    $anchorToActivate = parent.find(".dropdown-toggle");
    var $subAnchorToActivate = parent
      .find('.dropdown-item[href*="' + path + '"]')
      .first();

    if ($subAnchorToActivate.length > 0) {
      $subAnchorToActivate.attr("aria-current", "page");
      $anchorToActivate.attr("aria-current", "page");
    }
  }
}); // Onclick window location handler

$(function() {
  $(".card-link").on("click", function(e) {
    var url = $(this).data().href;

    if (e.shiftKey || e.ctrlKey || e.metaKey) {
      window.open(url, "_blank");
    } else {
      window.location = url;
    }
  });
}); // Enable tooltips

$(function() {
  $('[data-toggle="tooltip"]').tooltip();
}); // Screenshot modals

$(function() {
  $('[data-toggle="modal"]').click(function() {
    var targetId = $(this).data("target");
    $("#" + targetId).modal("show");
  });
}); // Form icons

$(function() {
  $(".form-social-btn-icons button").click(function() {
    if (!$(".can-touch").length) {
      $(this).blur();
    }

    var targetElementId = $(this).data("toggle");

    if ($(this).attr("aria-expanded") == "false") {
      $(this).attr("aria-expanded", true);
    } else {
      $(this).attr("aria-expanded", false);
    }

    $("#" + targetElementId).toggleClass("sr-only");
  });
}); // Solution for dealing with sticky :hover effects on mobile devices

$(function() {
  var isTouch = false; // var to indicate current input type (is touch versus no touch)

  var isTouchTimer;
  var curRootClass = ""; // var indicating current document root class ("can-touch" or "")

  function addtouchclass() {
    clearTimeout(isTouchTimer);
    isTouch = true;

    if (curRootClass != "can-touch") {
      // add "can-touch' class if it's not already present
      curRootClass = "can-touch";
      document.documentElement.classList.add(curRootClass);
    }

    isTouchTimer = setTimeout(function() {
      // maintain "istouch" state for 1000ms so removetouchclass doesn't get fired immediately following a touch event
      isTouch = false;
    }, 1000);
  }

  function removetouchclass() {
    if (!isTouch && curRootClass == "can-touch") {
      // remove 'can-touch' class if not triggered by a touch event and class is present
      isTouch = false;
      curRootClass = "";
      document.documentElement.classList.remove("can-touch");
    }
  }

  document.addEventListener("touchstart", addtouchclass, false); // this event only gets called when input type is touch

  document.addEventListener("mouseover", removetouchclass, false); // this event gets called when input type is everything from touch to mouse/trackpad
}); // External links open in new window

$(function() {
  $(document.links)
    .filter(function() {
      return this.hostname != window.location.hostname;
    })
    .attr("target", "_blank");
}); // Hash update with scroll

$(function() {
  if (
    location.pathname === "/work/services/training/ditap/" ||
    location.pathname === "/careers/join/"
  ) {
    var headings = $("h2");
    window.setInterval(function() {
      headings.each(function(i) {
        if (
          window.pageYOffset >= $(this).offset().top &&
          (i === headings.length - 1 ||
            window.pageYOffset < headings.eq(i + 1).offset().top)
        ) {
          var urlId = "#" + $(this).attr("id");
          history.replaceState(null, null, urlId);
        } else if (i === 0 && window.pageYOffset < $(this).offset().top - 1) {
          var newUrl = window.location.pathname + window.location.search;
          history.pushState("", document.title, newUrl);
        }
      });
    }, 100);
  }
}); // Pre-populate date select on ditap application

$(function() {
  if (location.pathname == "/work/services/training/ditap/apply/") {
    var urlParams = new URLSearchParams(window.location.search);
    var courseDate = urlParams.get("date");
    $("#date-input").val(courseDate);
  }
}); // Experience filters

$(function() {
  if (location.pathname === "/work/experience/") {
    // Initialize empty filters array
    var filters = []; // All posts to be filtered

    var posts = $("article[data-display=true]");
    $("article[data-display=false]").addClass("hidden"); // All filter tags actually used by posts

    var usedTags = $.unique(
      Object.values(
        posts.map(function() {
          return $(this).attr("data-tags").split(", ");
        })
      )
    ); // This function will ensure all added filters have a remove handler

    var addRemoveHandler = function addRemoveHandler() {
      $(".tag-badge")
        .off("click")
        .click(function() {
          var text = $(this).text();
          var filterText = text.toLowerCase();
          filters.splice(filters.indexOf(filterText), 1);
          $(this).remove();
          $('.exp-filter-item:contains("' + text + '")').removeClass(
            "font-weight-bold"
          );
          filterPosts();
        });
    }; // This function will paginate all visible posts

    var paginatePosts = function paginatePosts() {
      var dataSource = $("article.filter-match").get();
      var pageSize = 12;

      var onPageChange = function onPageChange() {
        if (!$("#accordionHeading- a").hasClass("collapsed")) {
          $("h3.mb-0").click();
        }

        window.scrollTo(0, 0);
      };

      $(".projects").pagination({
        dataSource: dataSource,
        pageSize: pageSize,
        ulClassName: "pagination d-flex justify-content-center",
        prevText:
          '<i class="fa fa-chevron-left mr-2 pagination-icon"></i><b>Previous</b>',
        nextText:
          '<b>Next</b><i class="fa fa-chevron-right ml-2 pagination-icon"></i>',
        showPageNumbers: false,
        showNavigator: true,
        formatNavigator: "Page <%= currentPage %> of <%= totalPage %>",
        autoHidePrevious: true,
        autoHideNext: true,
        afterPreviousOnClick: onPageChange,
        afterNextOnClick: onPageChange,
        callback: function callback(data) {
          posts.addClass("hidden");
          data.forEach(function(post) {
            return (post.className = "project-col");
          });

          if (dataSource.length <= pageSize) {
            $(".paginationjs").hide();
          } else {
            $(".paginationjs-nav")
              .detach()
              .prependTo(".pagination")
              .addClass("mx-3 mx-sm-5");
            $(".paginationjs-prev").detach().prependTo(".pagination");
          }
        },
      });
    }; // This function will filter all posts based on the contents of the
    // filters array

    var filterPosts = function filterPosts() {
      if (filters.length) {
        posts.each(function() {
          var tags = $(this).attr("data-tags").split(", ");

          if (
            tags &&
            tags.filter(function(tag) {
              return filters.includes(tag);
            }).length
          ) {
            $(this).addClass("filter-match");
          } else {
            $(this).removeClass("filter-match");
          }
        });
      } else {
        posts.addClass("filter-match");
      }

      paginatePosts();
    }; // Disable filter options that won't result in any posts

    $(".exp-filter-item").each(function() {
      var filterText = $(this).text().toLowerCase();

      if (!usedTags.includes(filterText)) {
        $(this).addClass("filter-disabled");
      } else {
        $(this).addClass("filter-enabled");
      }
    }); // Add click handler to non-disabled filter options

    $(".exp-filter-item.filter-enabled").click(function() {
      var text = $(this).text();
      var filterText = text.toLowerCase();

      if (!filters.includes(filterText)) {
        filters.push(filterText);
        $('.exp-filter-item:contains("' + text + '")').addClass(
          "font-weight-bold"
        );
        $(".filter-post-tags").append(
          '<a class="tag-badge" href="#" onclick="return false;">' +
            text +
            '<i class="fa fa-times-circle ml-1"></i></a>'
        );
        addRemoveHandler();
      } else {
        filters.splice(filters.indexOf(filterText), 1);
        $('.exp-filter-item:contains("' + text + '")').removeClass(
          "font-weight-bold"
        );
        $('.tag-badge:contains("' + text + '")').remove();
      }

      filterPosts();
    }); // Do initial filter

    filterPosts();
  }
});
