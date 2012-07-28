$(document).ready(function() {

  $(function() {
  $('.container-menu a').bind('click',function(event){
    var $anchor = $(this);
    $('html, body').stop().animate({
      scrollTop: $($anchor.attr('href')).offset().top
    }, 1500,'easeInOutExpo');
    event.preventDefault();
    });
  });

  $(".brand-right").mouseover(function() {
    document.getElementById('login_form').style.display = "block";
  })


  $('.container').click(function() {
    document.getElementById('login_form').style.display = "none";
  })

});
