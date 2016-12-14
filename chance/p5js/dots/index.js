function setup() {
  createCanvas(500, 500);
  colorMode(HSB);
  background(98);
  noStroke(); 
  
  for (var x1 = 0; x1 <=width; x1 +=random(0, width/10)){
    fill(15);
    ellipse(x1, random(height/4-20, height/4+20), width/20, height/20);
    ellipse(x1, random(height/2-20, height/2+20), width/20, height/20);
    ellipse(x1, random(3*height/4-20, 3*height/4+20), width/20, height/20);
  }
}