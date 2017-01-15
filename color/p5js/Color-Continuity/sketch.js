
function setup() {
  var canvas = createCanvas(500, 500);
      canvas.parent('sketch');


  background(255);
  noStroke();
  blendMode(DIFFERENCE);
  ellipseMode(RADIUS);

  fill(255,0,0);//red=cyan
  ellipse(300, 285, 75, 75);

  fill(0,255,0);//green=magenta
  ellipse(200, 285, 75, 75);

  fill(0,0,255);//blue=yellow
  ellipse(250, 200, 75, 75);

}

function draw() {

}
