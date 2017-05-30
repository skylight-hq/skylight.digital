// Activate current main nav item
$(function() {
  var $anchorToDeactivate = $('#navbar-nav-collapsible a[aria-current]')
  $anchorToDeactivate.removeAttr('aria-current')

  var pathArray = location.pathname.split('/')
  var firstLevelPath = pathArray[1]
  var $anchorToActivate = $('#navbar-nav-collapsible a[href*="' + firstLevelPath + '"]').closest('a')
  $anchorToActivate.attr('aria-current', 'page')
})

// Onclick window location handler
$(function() {
  $('.card-link').on('click', function(e) {
    var url = $(this).data().href

    if (e.shiftKey || e.ctrlKey || e.metaKey) {
      window.open(url, '_blank')
    } else {
      window.location = url
    }
  })
})

// Enable tooltips
$(function() {
  $('[data-toggle="tooltip"]').tooltip()
})

// Screenshot modals
$(function() {
  $('[data-toggle="modal"]').click(function() {
    var targetId = $(this).data('target')
    $('#' + targetId).modal('show')
  })
})

// Join page navigation behavior
function swapJoinContent(hash) {
  // Guard against missing or malformed hash
  if (!hash || typeof hash !== 'string') {
    return false
  }

  var parentHash
  var childHash

  if (hash.indexOf('-') > -1) {
    parentHash = '#' + hash.split('-')[0]
    childHash = '#' + hash
  } else {
    parentHash = '#' + hash
  }

  var $contentElements = $('.join-content-col > div')
  var $contentElementToActivate = $(parentHash)
  var $navElements = $('.subnav-col li')
  var $navElementToActivate = $navElements.has('a[href$="' + parentHash + '"]')

  // Guard against answer that is not present on the page
  if (($contentElementToActivate.length === 0) || ($navElementToActivate.length === 0)) {
    return false
  }

  $contentElements.hide()
  $contentElementToActivate.show()

  $navElements.removeClass('current')
  $navElements.find('a').removeAttr('aria-current')

  $navElementToActivate.addClass('current')
  $navElementToActivate.find('a').attr('aria-current', 'location')

  $('html, body').scrollTop(0)

  if (childHash) {
    location.hash = childHash
  }
}

$(function() {
  $('.join-content-col > div').not('#application').hide()

  if (location.hash.length > 0) {
    var hash = location.hash.substr(1)
    swapJoinContent(hash)
  }

  var $navAnchors = $('.join-us .subnav-col a')

  var navPaths = $.map($navAnchors, function(anchor) {
    return anchor.getAttribute('href')
  })

  var $pageAnchors = $('.join-content-col a')
  $pageAnchors = $pageAnchors.filter(function() {
    return $.inArray(this.getAttribute('href'), navPaths) != -1
  })

  var $allAnchors = $navAnchors.add($pageAnchors)

  $allAnchors.on('click', function(e) {
    e.preventDefault()

    var dest = $(this).attr('href')
    history.pushState(null, null, dest)

    var hash = this.hash.substr(1)
    swapJoinContent(hash)
  })
})

// Form file upload
$(function() {
  $('#resume-input-file').change(function() {
    var fileName = this.files[0].name
    $('.btn-file').addClass('file-width-max')
    $('#resume-input-file + span').html(fileName)
  })
})

// Form icons
$(function() {
  $('.form-icons div').click(function(e) {
    e.preventDefault()

    var targetElementId = $(this).data('toggle')

    if ($(this).attr('aria-expanded') == 'false') {
      $(this).attr('aria-expanded', true)
    } else {
      $(this).attr('aria-expanded', false)
    }

    $(this).find('i').toggleClass('current')
    $('#' + targetElementId).toggleClass('sr-only')
  })
})

// Solution for dealing with sticky :hover effects on mobile devices
$(function() {
	var isTouch = false // var to indicate current input type (is touch versus no touch)
	var isTouchTimer
	var curRootClass = '' // var indicating current document root class ("can-touch" or "")

	function addtouchclass() {
		clearTimeout(isTouchTimer)
		isTouch = true

		if (curRootClass != 'can-touch') { // add "can-touch' class if it's not already present
			curRootClass = 'can-touch'
			document.documentElement.classList.add(curRootClass)
		}

		isTouchTimer = setTimeout(function() { // maintain "istouch" state for 1000ms so removetouchclass doesn't get fired immediately following a touch event
      isTouch = false
    }, 1000)
	}

	function removetouchclass() {
		if (!isTouch && curRootClass == 'can-touch') { // remove 'can-touch' class if not triggered by a touch event and class is present
			isTouch = false
			curRootClass = ''
			document.documentElement.classList.remove('can-touch')
		}
	}

	document.addEventListener('touchstart', addtouchclass, false) // this event only gets called when input type is touch
	document.addEventListener('mouseover', removetouchclass, false) // this event gets called when input type is everything from touch to mouse/trackpad
})
