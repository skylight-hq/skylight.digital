$(function () {
  $('[data-toggle="tooltip"]').tooltip()
})

$(function() {
  $('#main-nav a.current').removeClass('current')
  $('a[href="' + location.pathname + '"]').closest('a').addClass('current')
})
