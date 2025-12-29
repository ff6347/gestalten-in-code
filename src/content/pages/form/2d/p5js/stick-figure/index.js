/* eslint-disable */
var x = 0;
var y = 12;
var w = 42; // make him bigger or smaller
var h = w; // distort by changing the h seperatly
var bmi = 40; // body mass index

// getting started with p5js
function setup() {
  // executed once
  colorMode(HSB, 360, 100, 100, 100);
  var canvas = createCanvas(500, 500);
  canvas.parent('sketch');
  x = width / 2;
  y = height / 2;
  fill(0);
  strokeWeight(3);
  // draw some simple shapes
  // hint! The order in which you draw is important
  // change x and y to move him around
  // a line takes 4 values the starting point and the end point
  line(x - w, y + h, x + w, y + h);
  // a ellipse always takes 4 values as parameter
  ellipse(x, y, w, h);
  // a point just two
  strokeWeight(10);
  stroke(100, 0, 100);
  point(x, y); // look he has a nose
  stroke(0);
  strokeWeight(3);
  // a rectangle also takes 4 values like the ellipse
  // but draws from its upper left corner
  rect(x - bmi / 2, y + h, bmi, h);
  // you can also draw free forms by using vertecies
  noFill();
  beginShape();
  vertex(x - w, y + h * 3);
  vertex(x - w, y + h * 2);
  vertex(x + w, y + h * 2);
  vertex(x + w, y + h * 3);
  endShape();
  // saveCanvas(canvas, 'out','png');
}

function draw() {
  // executed all the time
}