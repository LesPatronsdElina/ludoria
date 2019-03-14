$(window).scroll(function(){

  var wintop = $(this).scrollTop();

  $('.footer-wrapper').each(function(){
    if(wintop > $(this).offset().top - 80){
      $('.navbar-mihivai').addClass('d-none');
    }
    if(wintop < $(this).offset().top - 80){
      $('.navbar-mihivai').removeClass('d-none');
    }
  });
});
