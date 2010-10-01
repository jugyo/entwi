$(function() {
  $('.comment-form textarea, .tweet-form textarea').focus(
    function() {
      $(this).css({height:'5em'});
    }
  );
});
