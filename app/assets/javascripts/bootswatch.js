$('#main-menu').load('shared/main-menu.html', function(){
  if($('body').hasClass('preview')){
    $('#main-menu-left').append('<li class="dropdown" id="preview-menu"></li>');
    $('#preview-menu').load('shared/preview-menu.html');
  }

  $('a[rel=tooltip]').tooltip({
    'placement': 'bottom'
  });
});
