/*eslint-disable*/
/**
 * @author: @fabiantheblind
 * @license: MIT
 *
 * written for "Eingabe, Ausgabe. Grundlagen der prozessorientierten Gestaltung"
 * @FHP WS 2013/2014 by Monika Hoinkis
 *
 * create works of Sol LeWitt in Processing
 * http://www.massmoca.org/lewitt/grid.php
 */

// getting started with p5js
function setup() {
  // executed once
  var canvas = createCanvas(450, 450);
  canvas.parent('sketch');

  var gutter = 45; // the distance to the border

  background(255); // just a color

  var x = 0; // coordinate x
  var y = 0; // coordinate y

  x = gutter / 2; // define x
  y = gutter / 2; // define y

  noFill(); // we dont want anything to be filled
  stroke(0); // this is a black stroke

  rect(x, y, width - gutter, height - gutter); // draw a rectangle
  stroke(color(145, 0, 0)); // change the strokecolor to a dark red (RGB)

  var x1 = gutter; // coordinate x1
  var y1 = gutter; // coordinate y1
  var x2 = width - gutter; // coordinate x2
  var y2 = height - gutter; // coordinate x2

  /**
   * Now draw the center lines
   */
  line(x1, y1, x2, y2);
  line(x2, y1, x1, y2);
  // we ae done
  // saveCanvas(canvas,'out','png');
}
function draw() {
  // executed all the time
}