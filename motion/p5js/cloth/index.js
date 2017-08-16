/**
* P5 js sketch based on De Hong Attractor by Paul Bourke
* xn+1 = sin(a yn) - cos(b xn)
* yn+1 = sin(c xn) - cos(d yn)
*
* Ludwig Frank
* v2 - More organic
**/


var SCALING = 0.6;
var x2, y2;

var NOICE_A = 0.0;
var NOICE_B = 1.1;
var NOICE_C = -2.2;
var NOICE_D = 2.3;
var x = 0;
var y = 0;
var VALUE_A = 0.0;
var VALUE_B = 0.0;
var VALUE_C = 0.0;
var VALUE_D = 0.0;
var a = 1.4191403;
var b = -2.2841523;
var c = 2.4575403;
var d = -2.177196;

function init () {
  background(240);
}

function generateValues () {
  NOICE_A += 0.0008;
  NOICE_B += noise(VALUE_A) * 0.01;

  VALUE_A = noise(NOICE_A) * 2;
  VALUE_B = noise(NOICE_B) * 4;

  a = VALUE_A;
  b = VALUE_B;
  c = 2.4575403;
  d = -2.177196;
}

function setup () {
  var canvas = createCanvas(windowWidth, windowHeight);
  canvas.parent('sketch');
  stroke(90);
  init();
}

function draw () {
  background(240);
  generateValues();

  for (var i = 0; i < 8000; i++) {

    x2 = sin(a * y) - cos(b * x);
    y2 = sin(c * x) - cos(d * y);

    x = x2;
    y = y2;

    point(
            map(x2, -SCALING, SCALING, height / 2, width / 2),
            map(y2 * noise(2, 4), -SCALING, SCALING, height / 2, width / 2)
        );
  }
}

