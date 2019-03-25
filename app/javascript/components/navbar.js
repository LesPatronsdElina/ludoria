$(window).scroll(function(){

  var wintop = $(this).scrollTop();

  $('.footer-wrapper').each(function(){
    if(wintop > $(this).offset().top - 150){
      $('.main-navbar').addClass('d-none');
      $('#flash').addClass('top-0');
    }
    if(wintop < $(this).offset().top - 150){
      $('.main-navbar').removeClass('d-none');
      $('#flash').removeClass('top-0');
    }
  });
});
