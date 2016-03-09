/*eslint-disable*/
/**
 * @author: @fabiantheblind
 * @license: MIT
 *
 * written for "Eingabe, Ausgabe. Grundlagen der prozessorientierten Gestaltung"
 * @FHP WS 2013/2014 by Moika Hoinkis
 *
 * create works of Sol LeWitt in Processing
 * http://www.massmoca.org/lewitt/grid.php
 */

// getting started with p5js
function setup() {
  // executed once
  var canvas = createCanvas(800, 450);
  canvas.parent('sketch');
  /**
   * a random location on the canvas
   * with the coordiante x and y
   *
   */
  var x = (random(width));
  var y = (random(height));
  var black = true; // if true tvar it black
  var numberOfCircles = 30; // this is the number of circles we will draw
  var radius = 2 * width; // the initial radius
  var decr = radius / numberOfCircles; // the decrement depends on the radius and the number of circles
  noStroke(); // dont draw a stroke
  /**
   * Now lets loop over the number of circles value
   * and create some ellipses
   *
   */

  for (var i = 0; i < numberOfCircles; i++) {
    // change fill depending on var
    if (black === true) {
      fill(0); // black
    } else {
      fill(255); // white
    }
    ellipse(x, y, radius, radius); // draw the ellipse
    radius = radius - decr; // reduce the radius
    // use modulo to decide if the fill should be black or not
    if (i % 2 === 0) {
      black = false;
    } else {
      black = true;
    }
  } // end i loop


}
function draw() {
  // executed all the time
}
