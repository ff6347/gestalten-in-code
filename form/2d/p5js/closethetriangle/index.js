function setup() {
  var canvas = createCanvas(500, 500);
  canvas.parent('sketch');
  colorMode(HSB, 360, 100, 100, 100);
  background(150, 75, 90, 100);


  fill(20);
  rect(0, 0, width / 2, height);

  noStroke();
  fill(150, 75, 90, 100);
  triangle(150, 100, 100, 300, 380, 250);
}

function draw() {

}


