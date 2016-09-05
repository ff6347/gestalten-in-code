size(500, 500);
background(255);
color c1 = color(#E96368);
color c2 = color(#A9F0D1);
noFill();
strokeWeight(3);
randomSeed(105);
int flowoff= 23;
int jittoff= 42;
PVector [] jitter = {
  new PVector(width - width/10, height/10), 
  new PVector(width/2, height/2), 
  new PVector(width/10, height - height/10)
};

PVector [] flowing = {
  new PVector(width/10, height/10), 
  new PVector(width/2, height/2), 
  new PVector(width - width/10, height - height/10)
};

stroke(0);

for (int i = 0; i < flowing.length - 1; i++) {
  PVector p1 = flowing[i];
  PVector p2 = flowing[i+1];
  beginShape(); 
  curveVertex(0,0);
  if(i == 0){
    stroke(c1);
  }else{
    stroke(c2);
  }
  for (int j = 0; j < 10; j++) {
    float x = lerp(p1.x, p2.x, j/10.0);
    float y = lerp(p1.y, p2.y, j/10.0);
    if (j == 0 ) {
      curveVertex(p1.x, p1.y);
    } else if (j==9) {
      curveVertex(p2.x, p2.y);
    } else {
      curveVertex(x + random(-flowoff, flowoff), y + random(-flowoff, flowoff));
    }
  }
  curveVertex(width,height);
  endShape(OPEN);
}






for (int i = 0; i < jitter.length-1; i++) {
  PVector p1 = jitter[i];
  PVector p2 = jitter[i+1];
  beginShape();
    if(i == 0){
    stroke(c1);
  }else{
    stroke(c2);
  }
  for (int j = 0; j < 10; j++) {
    float x = lerp(p1.x, p2.x, j/10.0);
    float y = lerp(p1.y, p2.y, j/10.0);
    if (j == 0 ) {
      vertex(p1.x, p1.y);
    } else if (j==9) {
      vertex(p2.x, p2.y);
    } else {
      vertex(x + random(-jittoff, jittoff), y + random(-jittoff, jittoff));
    }
  }
  endShape(OPEN);
}
saveFrame("out.png");