function setup() {
  createCanvas(500, 500);
  colorMode(HSB);
  background(98);
  noStroke();
  fill(15);
  rectMode(CENTER);
  rect(width/2, height/2, width/2, height/2);
  
  for (var y1 = height/4; y1 <=3*height/4; y1 +=random(height/100,height/10)){
    noStroke();
    fill(98);
    ellipse(random(width/4-5,width/4+5), y1, width/20, height/20);
  }
  
  for (var x1 = width/4; x1 <=3*width/4; x1 +=random(width/100, width/10)){
    noStroke();
    fill(98);
    ellipse(x1, random(height/4-5, height/4+5), width/20, height/20);
  }

  for (var y2 = height/4; y2 <=3*height/4; y2 +=random(height/100, height/10)){
    noStroke();
    fill(98);
    ellipse(random(3*width/4-5,3*width/4+5), y2, width/20, height/20);
  }
  
  for (var x2 = width/4; x2 <=3*width/4; x2 +=random(width/100, width/10)){
    noStroke();
    fill(98);
    ellipse(x2, random(3*height/4-5,3*height/4+5), width/20, height/20);
  }  
}