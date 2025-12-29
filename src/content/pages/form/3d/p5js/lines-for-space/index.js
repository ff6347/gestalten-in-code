function setup() {
  var canvas = createCanvas(500, 500);
  canvas.parent('sketch');
}

function draw() {
  line(random(400), random(400), random(400), random(400));
  if(frameCount === 100) {
    noLoop();
  }
}
