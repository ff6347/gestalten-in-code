/*eslint-disable*/
function setup() {
  var canvas = createCanvas(500, 500);
  canvas.parent('sketch');
  var x = random(0,width);
  var y = random(0,width);
  var num = 100;
  for(var i = 0; i < num; i++){
    var w = random(0,6);
    ellipse(x + random(-40,40),y + random(-40,40), w, w);
  }
    // saveCanvas(canvas, 'out','png');

}

function draw() {

}
