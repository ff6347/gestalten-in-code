var myHeight = 30;
var radius = 30;

var light_r = light_g = light_b = 250;
var light_a = 255;

var counter = 0;
var increment = 1;

function setup() {
  var canvas = createCanvas(300, 300, WEBGL);
  canvas.parent('sketch');
}

function drawACone(_x, _y) {
  push();
  translate(_x, _y);
  rotateX(radians(90));
  cone(radius, myHeight);
  pop();
}

function draw() {
  counter += increment;

  if (counter === 0) {
    increment = 1;
  } else if (counter === height) {
    increment = -1;
  }

  var light_x = sin(radians(counter)) * radius;
  var light_y = cos(radians(counter)) * radius;
  var light_z = counter;

  pointLight(light_r, light_g, light_b, light_a, light_x, light_y, light_z);

  drawACone(0, 0);
  drawACone(0, radius * 2);
  drawACone(0, -radius * 2);
  drawACone(-radius * 2, 0);
  drawACone(radius * 2, 0);
  drawACone(radius * 2, radius * 2);
  drawACone(-radius * 2, -radius * 2);
  drawACone(radius * 2, -radius * 2);
  drawACone(-radius * 2, radius * 2);
  drawACone(0, -radius * 4);
  drawACone(0, radius * 4);
  drawACone(radius * 4, 0);
  drawACone(-radius * 4, 0);
}
