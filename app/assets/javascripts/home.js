// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).on("page:change", function(){
  
  $(".chosen-select").chosen();
  
  $("#scroll-to").click(function() {
      $('html, body').animate({
              scrollTop: $(".title.pure-u-1").offset().top
      }, 1000);
  });
  $("#magnifying-glass").click(function() {
      $('html, body').animate({
              scrollTop: $(".pure-g.explore").offset().top
      }, 1000);
  });
  $("#newsletter-signup").click(function() {
      $('html, body').animate({
              scrollTop: $(".pure-g.newsletter").offset().top
      }, 1000);
  });
  $('.validate.pure-form.pure-form-stacked').bind('click', function(){
      $(this).closest('form').find('input:text, input:email, select, textarea').val('');
  })
});


