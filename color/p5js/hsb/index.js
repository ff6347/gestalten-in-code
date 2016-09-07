/*eslint-disable*/
var h = 77;
var s = 45;
var b = 80;
var a = 100;

// getting started with p5js
function setup() {
  // executed once
  colorMode(HSB, 360, 100, 100, 100);
  var canvas = createCanvas(400, 400);
  canvas.parent('sketch');
  noStroke();
  background(100);
  fill(h, s, b, a);
  rect(0, 0, width / 3, height);
  h = h + 120;
  fill(h, s, b, a);
  rect(width / 3, 0, width / 3, height);
  h = h + 120;
  fill(h, s, b, a);
  rect((width / 3) * 2, 0, width / 3, height);
    // saveCanvas(canvas,'out','png');
}


function draw() {
  // executed all the time
}
