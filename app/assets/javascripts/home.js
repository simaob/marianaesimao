// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
function initializeSupport() {
  $("a[rel~=popover], .has-popover").popover();
  $("a[rel~=tooltip], .has-tooltip").tooltip();

  //jQuery for page scrolling feature - requires jQuery Easing plugin
  $('a.page-scroll').bind('click', function(event) {
    var $anchor = $(this);
    $('html, body').stop().animate({
      scrollTop: $($anchor.attr('href')).offset().top
    }, 1500, 'easeInOutExpo');
    event.preventDefault();
  });

  //jQuery to collapse the navbar on scroll
  $(window).scroll(function() {
    if ($(".navbar").offset().top > 50) {
      $(".navbar-fixed-top").addClass("top-nav-collapse");
    } else {
      $(".navbar-fixed-top").removeClass("top-nav-collapse");
    }
  });

};

$(document).on('turbolinks:load', initializeSupport);

