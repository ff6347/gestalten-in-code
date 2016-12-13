function setup() {
  createCanvas(500, 500);
  colorMode(HSB);
  rectMode(CENTER);
}

var angle = 0;

function draw(){
  background(98);  
  translate(width/2, height/2);
  for (var angle = 0; angle < 180; angle += 12) {
    push();
    rotate(radians(angle));    
    noFill();
    stroke(15);
    strokeWeight(0.5);
    rect(0, 0, width/3, height/3);    
    pop();
  }
}