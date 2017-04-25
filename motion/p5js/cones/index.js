const height = 60;
const radius = 60;
let y = 0;
let increment = 1;

function setup() {
  var canvas = createCanvas(500, 500, WEBGL);
  frameRate(30);
  canvas.parent('sketch');
}

function drawCones(count, current) {
  current = current || 1;

  if (current > count) {
    return;
  }

  cone(radius, height);
  push();
  translate(2 * radius, 0);
  drawCones(count, current + 1);
  pop();
}

function drawRotated(count, position) {
  push();
  rotateX(radians(90));
  drawCones(count, position);
  pop();
}

function draw() {
  camera(0, 0, 300);
  background(250);

  y = y + increment;

  if (y === 0) {
    increment = 1;
  } else if (y === height) {
    increment = -1;
  }
}

function draw(){
  pointLight(250, 250, 250, y * 8, y * 8, 0);
  translate(0, - 4 * radius);
  drawRotated(1);
  translate(-2 * radius, 2 * radius);
  drawRotated(3);
  translate(-2 * radius, 2 * radius);
  drawRotated(5);
  translate(2* radius, 2 * radius);
  drawRotated(3);
  translate(2 * radius, 2 * radius);
  drawRotated(1);
}
