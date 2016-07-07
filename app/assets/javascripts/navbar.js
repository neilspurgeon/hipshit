$(document).ready(function() {

  $('#menu-btn').on('click', function(e) {
    $('#menu').slideToggle();
    $('#menu-btn__open').toggle();
    $('#menu-btn__close').toggle();
  });

});

