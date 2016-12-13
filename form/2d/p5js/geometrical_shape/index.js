function setup() {
  createCanvas(500, 500);
  colorMode(HSB);
  background(98);
  
  stroke(15);
  strokeWeight(2);
  noFill();
  rectMode(CENTER);
  rect(width/2, height/2, width/3, height/3);
  line(width/3,2*height/3,2*width/3,height/3);
  line(width/3,width/3,width/2,height/2);
}