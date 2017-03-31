$(function () {
  $('[data-toggle="tooltip"]').tooltip()
})

$(function() {
  $('#main-nav a.current').removeClass('current')
  var pathArray = location.pathname.split('/')
  var firstLevelPath = pathArray[1]
  $('#main-nav a[href*="' + firstLevelPath + '"]').closest('a').addClass('current')
})
