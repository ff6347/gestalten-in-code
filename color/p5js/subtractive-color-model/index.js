function setup() {
  var canvas = createCanvas(500, 500);
  canvas.parent('sketch');


  background(255);
  noStroke();
  blendMode(DIFFERENCE);
  // ellipseMode(RADIUS);

  var i = 150;

  fill(255, 0, 0);// red=cyan
  ellipse(width / 1.75, height / 1.75, i, i);

  fill(0, 255, 0);// green=magenta
  ellipse(height / 2.5, height / 1.75, i, i);

  fill(0, 0, 255);// blue=yellow
  ellipse(width / 2, height / 2.5, i, i);

}

function draw() {

}
