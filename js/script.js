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
    var target = $(this).data().target;

    if (e.shiftKey || e.ctrlKey || e.metaKey || target) {
      target = target ? target : '_blank';
      window.open(url, target);
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

function pathEndsWith(path){
  path = path.replace('/','\/');
  var exp = `(${path})$`;
  var re = new RegExp(exp,"g");
  return location.pathname.match(re)?.length > 0;
}

$(function() {
  if (
    pathEndsWith("/work/services/training/ditap-executive/") ||
    pathEndsWith("/work/services/training/ditap/") ||
    pathEndsWith("/careers/join/") ||
    pathEndsWith("/work/services/service-design/")
  ) {
    var headings = $("h2");

    $(window).scroll(function() {
      var currentHeading = null;

      headings.each(function(index, element) {
        if (window.pageYOffset >= $(element).offset().top - 10) {
          currentHeading = element;
        }
      });

      var hash = currentHeading
        ? "#" + currentHeading.id
        : "";

      if (hash !== window.location.hash) {
        history.replaceState(null, "", hash || ".");
      }
    });
  }
}); // Pre-populate date select on DITAP application

$(function() {
  if (location.pathname == "/work/services/training/ditap/apply/") {
    var urlParams = new URLSearchParams(window.location.search);
    var courseDate = urlParams.get("date");
    $("#date-input").val(courseDate);
  }
}); // Experience filters

//https://stackoverflow.com/questions/8746882/jquery-contains-selector-uppercase-and-lower-case-issue
jQuery.expr[':'].icontains = function(a, i, m) {
  return jQuery(a).text().toUpperCase()
      .indexOf(m[3].toUpperCase()) >= 0;
};

$(function() {
  if (pathEndsWith("/work/experience/")) {
    var searchParams = new URLSearchParams(window.location.search);
    var filters_set = searchParams.get('filters');
    if(filters_set != 'true'){
      window.localStorage.removeItem('filters');
      window.localStorage.removeItem('page');
    }

    var filter_params = window.localStorage.getItem('filters');

    // Initialize empty filters array
    var filters = filter_params ? filter_params.split(',') : []; // All posts to be filtered

    var posts = $("article[data-display=true]");
    $("article[data-display=false]").addClass("hidden");

    // All filter tags actually used by posts
    var usedTags = $.unique(
      Object.values(
        posts.map(function() {
          return $(this).attr("data-tags").split(", ");
        })
      )
    );

    // This function will ensure all added filters have a remove handler
    var addRemoveHandler = function addRemoveHandler() {
      $(".tag-badge")
        .off("click")
        .click(function() {
          var text = $(this).text();
          var filterText = text.toLowerCase();
          filters.splice(filters.indexOf(filterText), 1);
          $(this).remove();
          $('.exp-filter-item:icontains("' + text + '")').removeClass(
            "font-weight-bold"
          );
          filterPosts();
        });
    }; // This function will paginate all visible posts

    if(filter_params){
      filter_params.split(',').forEach((f)=>{
        $('.exp-filter-item:icontains("' + f + '")').addClass(
          "font-weight-bold"
        );
        $(".filter-post-tags").append(
          '<a class="tag-badge capitalize" href="#" onclick="return false;">' +
            f +
            '<i class="fa fa-times ml-2"></i></a>'
        );
      })
      addRemoveHandler();
    }

    var paginatePosts = function paginatePosts() {
      var dataSource = $("article.filter-match").get();
      var pageSize = 12;

      var onPageChange = function onPageChange() {
        if (!$("#accordionHeading- a").hasClass("collapsed")) {
          $("h3.mb-0").click();
        }

        window.scrollTo(0, 0);
      };

       function getCurrentPageParam(){
          var page = window.localStorage.getItem('page')
          return page ? page : 1;
       }


      $(".projects").pagination({
        dataSource: dataSource,
        pageSize: pageSize,
        ulClassName: "pagination d-flex justify-content-center",
        prevText:
          '<i class="fal fa-long-arrow-left mr-2 pagination-icon"></i><b>Previous</b>',
        nextText:
          '<b>Next</b><i class="fal fa-long-arrow-right ml-2 pagination-icon"></i>',
        showPageNumbers: false,
        showNavigator: true,
        formatNavigator: "Page <%= currentPage %> of <%= totalPage %>",
        autoHidePrevious: true,
        autoHideNext: true,
        afterPreviousOnClick: onPageChange,
        afterNextOnClick: onPageChange,
        pageNumber: getCurrentPageParam(),
        callback: function callback(data, pagination) {
          window.localStorage.setItem('page', pagination.pageNumber);
          if(pagination.pageNumber != 1) {
            history.pushState({filters: true}, "", "?filters=true");
          }
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
            }).length == filters.length
          ) {
            $(this).addClass("filter-match");
          } else {
            $(this).removeClass("filter-match");
          }
        });
      } else {
        posts.addClass("filter-match");
      }

      window.localStorage.setItem('filters', filters.join(',').toLowerCase());


      //Disabled unused tags for the remaining posts
      var dataSource = $("article.filter-match");
      var usedTags = $.unique(
        Object.values(
          dataSource.map(function() {
            return $(this).attr("data-tags").split(", ");
          })
        )
      );
      $(".exp-filter-item").each(function() {
        var filterText = $(this).text().toLowerCase();

        if (!usedTags.includes(filterText)) {
          $(this).addClass("filter-disabled");
          $(this).removeClass("filter-enabled");

        } else {
          $(this).addClass("filter-enabled");
          $(this).removeClass("filter-disabled");
        }
      });
      paginatePosts();

    };

    // Disable filter options that won't result in any posts
    $(".exp-filter-item").each(function() {
      var filterText = $(this).text().toLowerCase();

      if (!usedTags.includes(filterText)) {
        $(this).addClass("filter-disabled");
      } else {
        $(this).addClass("filter-enabled");
      }
    });

    // Add click handler to non-disabled filter options
    $(".exp-filter-item.filter-enabled").click(function() {
      var text = $(this).text();
      var filterText = text.toLowerCase();

      if (!filters.includes(filterText)) {
        filters.push(filterText);
        $('.exp-filter-item:icontains("' + text + '")').addClass(
          "font-weight-bold"
        );
        $(".filter-post-tags").append(
          '<a class="tag-badge" href="#" onclick="return false;">' +
            text +
            '<i class="fa fa-times ml-2"></i></a>'
        );
        addRemoveHandler();
      } else {
        filters.splice(filters.indexOf(filterText), 1);
        $('.exp-filter-item:icontains("' + text + '")').removeClass(
          "font-weight-bold"
        );

        $('.tag-badge:icontains("' + text + '")').remove();
      }

      history.pushState({filters: true}, "", "?filters=true");

      filterPosts();
    }); // Do initial filter

    filterPosts();
  }
});


// https://stackoverflow.com/questions/1533910/randomize-a-sequence-of-div-elements-with-jquery
(function($) {
  $.fn.randomize = function(tree, childElem) {
    var randOrder = window.localStorage.getItem('sortOrder') ? 
                    window.localStorage.getItem('sortOrder').split(',') :
                    [];
    var sortOrder = ''
    return this.each(function() {
      var $this = $(this);
      if (tree) $this = $(this).find(tree);
      var unsortedElems = $this.children(childElem);
      var elems = unsortedElems.clone();

      elems.sort(function() {
        var next = randOrder[0] ? randOrder.shift() : Math.round(Math.random());
        sortOrder += `${next},`; 
        return (next - 0.5);
      });

      for (var i = 0; i < elems.length; i++){
        unsortedElems.eq(i).replaceWith(elems[i]);
      }

      sortOrder = sortOrder.substring(0, sortOrder.length - 1);
      window.localStorage.setItem('sortOrder', sortOrder);
    });
  };

})(jQuery);

$(function() {
  if (pathEndsWith("/company/about/")) {
    var hash = window.location.hash;
    if(!hash) window.localStorage.removeItem('sortOrder');
    $(".employees-row").randomize(undefined, "div.employee-col");
    $('[data-toggle="tooltip"]').tooltip();
    if(hash){
      $(hash)[0].scrollIntoView(true);

      function scroll() {
        var hash = window.location.hash;
        $(hash)[0].scrollIntoView(true);
      }

      setTimeout( scroll, 300 );
    }
    $(".employee-footer a").click(function(){
      var parentID = $(this).closest( ".employee-col" ).attr('id');
      window.location.hash = parentID;
    })
  }
})
