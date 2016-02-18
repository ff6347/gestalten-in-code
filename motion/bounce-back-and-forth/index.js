/*eslint-disable*/
// simple bouncing from right to left
// @author fabiantheblind
var hit = false;
var w = 100;
var h = 100;
var x = 0;
var y = h / 2;

function setup() {
  var canvas = createCanvas(w, h);
  canvas.parent('sketch');
}

function draw() {
  noStroke();
  rect(0, 0, width, height);

  strokeWeight(1);
  stroke(0);
  noFill();
  rect(0, 0, width -1 , height -1 );
  ellipse(x, y, 10, 10);
  if (hit === true) {
    x--;
  } else {
    x++;
  }
  if (x === width) {
    hit = true;
  }
  if (x === 0) {
    hit = false;
  }

}