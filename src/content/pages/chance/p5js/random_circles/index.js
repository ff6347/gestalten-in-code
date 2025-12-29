var x = 5;
var y = 5;
var scaler = 0;

function setup () {
  var canvas = createCanvas(500, 500);
  canvas.parent('sketch');
  noLoop();
}

function draw() {
  var step = 10;
  for (var i = 0; i < width * height; i += step) {
    scaler = random(10);
    ellipse(x, y, scaler, scaler);
    x += step;
    if (x >= width) {
      x = 5;
      y += step;
    }
  }
  // saveCanvas(canvas, 'out', 'png');
}
