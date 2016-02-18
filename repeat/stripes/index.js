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
  var canvas = createCanvas(450, 450);
  canvas.parent('sketch');
  text("empty example", 10, 10);
  background(255); // white background
  noStroke(); // we dont want a stroke
  fill('#000000'); // fill it with HEX black
  /**
   * loop over the width of the canvas
   * and draw rectangles with caps inbetweeen
   */
  for (var x = 0; x < width; x = x + 90) {
    rect(x, 0, 45, height);
  } //  end of i loop
}
function draw() {
  // executed all the time
}
