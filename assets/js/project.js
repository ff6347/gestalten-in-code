$(document).ready(function() {


  if ($(window).width() < 450) {
  var images = $('img');
  images.each(function(i, val){
    var res = val.src.split('/');
    if(res[res.length -1] !== 'splash.png'){

    console.log('before: ' + val.src);
    val.src = val.src.replace(/\.png/,'-thumb.png');
    console.log(val.src);
    }

  });
}
});
