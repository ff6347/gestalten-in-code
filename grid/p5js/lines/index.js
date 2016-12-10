function setup() {
  createCanvas(500, 500);
  colorMode(HSB);
}

function draw() {
  background(98);
  
  for (var y = 0; y <= 500; y += 5){
    stroke(30);
    strokeWeight(2);
    line(0, y, 500, y);
  }
  
  noStroke();
  fill(100);
  rectMode(CENTER);
  rect(width/2, height/2, width/3, height/3);
}