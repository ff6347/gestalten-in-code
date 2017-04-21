var dis = 20;
var n = 80;
var r = 100;

function setup() {
  var canvas = createCanvas(500, 500);
  background(255);
  canvas.parent('sketch');
}

function drawLines(count, distance) {
  distance = distance || 20;

  for (var i = 0; i < count; i++) {
     var x = i * distance;

    line(x, 0, x, 500);
  }
}

function draw() {
    noLoop();
  stroke(0);
  strokeWeight(2);
  drawLines(200, dis);

 for(var j = n; j < 500; j++) {
    r = (r + j)*0.9;

  fill(255);
  ellipse(250, 250, 35);

  strokeWeight(12);
  stroke(255);
  noFill();
  ellipse(250, 250, r);
 }
}
