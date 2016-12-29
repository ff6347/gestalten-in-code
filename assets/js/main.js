// http://jsfiddle.net/TrueBlueAussie/ZJDkF/8/
jQuery.fn.fitToParent = function () {
  this.each(function () {
    var canvas = jQuery(this);
    var p5w = canvas.attr('width');
    var p5h = canvas.attr('height');
    var width = canvas.width();
    var height = canvas.height();
    var parentWidth = canvas.parent().width();
    var parentHeight = canvas.parent().height();

    var aspect = width / height;
    var parentAspect = parentWidth / parentHeight;

    if (aspect > parentAspect) {
      newWidth = parentWidth;
      newHeight = newWidth / aspect;
    } else {
      newHeight = parentHeight;
      newWidth = newHeight * aspect;
    }
    canvas.width(newWidth < p5w ? newWidth : p5w);
    canvas.height(newHeight < p5h ? newHeight : p5h);
  });
};

/* global $ document window */
$(document).ready(function() {
  // console.log('ready');
  // var tagblock = $('.block-page-tags');
  $('#sketch canvas').fitToParent();
});


$(window).resize(function () {
  $('#sketch canvas').fitToParent();
});
