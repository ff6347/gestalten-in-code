var distance = 20;
var n = 80;
var radius = 100;

function setup() {
  var canvas = createCanvas(500, 500);
  background(255);
  canvas.parent('sketch');
}

function drawLines(count) {
  for (var i = 0; i < count; i++) {
    var x = i * distance;

    line(x, 0, x, 500);
  }
}

function draw() {
  noLoop();
  stroke(0);
  strokeWeight(2);
  drawLines(200);

  for(var i = n; i < 500; i++) {
    radius = (radius + i) * 0.9;

    fill(255);
    ellipse(250, 250, 35);

    strokeWeight(12);
    stroke(255);
    noFill();
    ellipse(250, 250, radius);
  }
}
