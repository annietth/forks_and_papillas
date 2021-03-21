jQuery(document).ready(function($) {

  $('#burger').on('click', function() {
    $(this).toggleClass("is-clicked");
    $(".header__container").toggleClass("menu-is-open");
    $(".menu-is-open .header__window").css('display', 'flex');
  })



});