/* eslint-disable */

var h, w;
/**
 * The setup function is executed once
 */
function setup() {
  var canvas = createCanvas(500, 500);
  canvas.parent('sketch');
  h = height / 4;
  fill('black');
  rectMode(CENTER);
  background('white'); // we need to clear the background
  var area = width / 3; // divide the canvas into three areas
  var x = area / 2; // the first x sits in the middle if an area
  var y = height / 2; // y will be half of the canvas hight
  rect(x, y, h, h); // now draw the first rectangle
  x = x + area; // move x
  var x1 = x; // calc the points of the trinagle
  var y1 = y - h / 2; // calc the points of the trinagle
  var x2 = x - h / 2; // calc the points of the trinagle
  var y2 = y + h / 2; // calc the points of the trinagle
  var x3 = x + h / 2; // calc the points of the trinagle
  var y3 = y + h / 2; // calc the points of the trinagle
  triangle(x1, y1, x2, y2, x3, y3); // draw the triangle
  x = x + area; // increase x again
  ellipse(x, y, h, h); // draw the ellipse
  var step = 10; // the steps between the lines and points
  // draw in a loop
  for (var i = 0; i < width; i += step) {
    point(i + step / 2, y); // draw the points
    line(i, 0, i, height); // draw the lines
  }
  var angle = 0;
  var radius = 50;
  var xoff = width / 2;
  var yoff = height - radius;
  beginShape();
  vertex((sin(radians(angle))*radius) + xoff,(cos(radians(angle))*radius) + yoff);
  angle+=(360/5)
  vertex((sin(radians(angle))*radius) + xoff,(cos(radians(angle))*radius) + yoff);
  angle+=(360/5)
  vertex((sin(radians(angle))*radius) + xoff,(cos(radians(angle))*radius) + yoff);
  angle+=(360/5)
  vertex((sin(radians(angle))*radius) + xoff,(cos(radians(angle))*radius) + yoff);
  angle+=(360/5)
  vertex((sin(radians(angle))*radius) + xoff,(cos(radians(angle))*radius) + yoff);
  endShape();
  // saveCanvas(canvas,'out','png');
}
/**
 * The draw function is executed all the time
 */
function draw() {

}
