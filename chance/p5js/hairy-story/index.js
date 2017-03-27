function setup() {
  var canvas = createCanvas(500, 500);
      canvas.parent('sketch');
  background(255);
}

function draw() {
  noFill();
  for(var d = 150; d > 0; d -= 500){
    ellipse(width/2 + random(1000), height/2 + random(1000), d + random(150, 500), d + random(150, 500));
  }
}
