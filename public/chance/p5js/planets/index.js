var PARTICLE_COUNT = 120;
var EDGES = 50;

var f, x;

function setup() {
  noStroke();
  var canvas = createCanvas(500, 500);
  canvas.parent('sketch');
}


function draw() {
  fill(130);
  randomSeed(40);
  background(240);
  f = 0;

  if (mouseIsPressed) {
    restart();
  }

  for (var i = 0; i <= PARTICLE_COUNT; i++) {
    push();

    translate(width / 2, height / 2);
    rotate(f);

    for (var j = -120; j < 80; j++) {
      x = randomGaussian(15, j);
      ellipse(x, randomGaussian(200, x / PARTICLE_COUNT), 1, 1);
    }

    f = TAU / EDGES * random(x);
    pop();
  }
}
