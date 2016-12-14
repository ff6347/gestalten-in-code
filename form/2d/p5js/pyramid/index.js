function setup() {
  createCanvas(500, 500);
  colorMode(HSB);
  background(98);
  stroke(0);
  strokeWeight(1);
  
  fill(98);
  triangle(width/5, 3*height/5, width/2, height/4, width/2, 3*height/4);
  fill(0);
  triangle(width/2, 3*height/4, width/2, height/4, 4*width/5, 3*height/5);
}