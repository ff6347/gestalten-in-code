// size of full canvas
var canvas_size = 500;

// starting size of circles
// works best with being the same size as canvas_size
var circle_size = 500;

// transparency range of all circles
var transparency_from = 50;
var transparency_to = 100;

// distance between all circles
var distance_from = 0;
var distance_to = 3;
var offset = 0;

function setup() {
  var canvas = createCanvas(canvas_size, canvas_size);
  canvas.parent('sketch');
  colorMode(HSB, 360, 100, 100, 100);
  background(100);
  offset = random(360);
}

function draw() {

  var x_m = width / 2;
  var y_m = height / 2;

  circle_size -= (random(distance_from, distance_to));
  var a = random(0, circle_size);

  if (circle_size <= 0) {
    noLoop();
  }

  var cH = (random(120, 240) + offset) % 360;
  var cS = random(50, 100) + circle_size;
  var cB = random(50, 100);
  var cA = random(transparency_from, transparency_to);
  fill(cH, cS, cB, cA);
  noStroke();

  ellipse(x_m, y_m, a, a);
}

function mouseClicked() {
  noLoop();
}
