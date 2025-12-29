var links = 50;
var rechts = 450;
var r = 0;
var g = 0;
var b = 0;

function setup() {
  var canvas = createCanvas(500, 500);
  canvas.parent('sketch');
  background(0);
}

function draw() {
  colR = random(0, r);
  colG = random(0, g);
  colB = random(0, b);

  r += random(0, 3);
  g += random(0, 3);
  b += random(0, 3);

  stroke(colR, 50, colB, 100);

  line(0, links, 500, rechts);

  links++;
  rechts--;

  if(links >= 400) {
    noLoop();
  }
}
