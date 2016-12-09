// $.fn.extend({
//   animateCss: function(animationName) {
//     var animationEnd =
//       'webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend';
//     this.addClass('animated ' + animationName).one(animationEnd,
//       function() {
//         $(this).removeClass('animated ' + animationName);
//       });
//   }
// });
//
// $('#headeranimate').animateCss('fadeInDown');

$(function() {
  $('a[href*="#"]:not([href="#"])').click(function() {
    if (location.pathname.replace(/^\//, '') == this.pathname.replace(
        /^\//,
        '') && location.hostname == this.hostname) {
      var target = $(this.hash);
      target = target.length ? target : $('[name=' + this.hash.slice(1) +
        ']');
      if (target.length) {
        $('html, body').animate({
          scrollTop: target.offset().top
        }, 1000);
        return false;
      }
    }
  });
});
