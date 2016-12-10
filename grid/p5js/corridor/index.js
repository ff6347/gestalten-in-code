function setup() {
  createCanvas(500, 500);
  colorMode(HSB);
  rectMode(CENTER);
  background(98);
  
  stroke(15);
  line(width/2, 4*height/10, width/2, 6*height/10);
  
  for (var x = 0; x <=500; x +=25){
    line(x, 0, width/2, 4*height/10);
    line(x, height, width/2, 6*height/10);  
  }
}