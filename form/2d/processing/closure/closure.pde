//import peasy.*;
//PeasyCam cam;
PVector [] top = {
  new PVector(-25, -25, -25), 
  new PVector(25, -25, -25), 
  new PVector(25, -25, 25), 
  new PVector(-25, -25, 25)
};

PVector [] bottom = {
  new PVector(-25, 25, -25), 
  new PVector(25, 25, -25), 
  new PVector(25, 25, 25), 
  new PVector(-25, 25, 25)
};
PVector [] front = {
  top[2], 
  top[3], 
  bottom[3], 
  bottom[2]
};

PVector [] back = {
  top[0], 
  top[1], 
  bottom[1], 
  bottom[0]
};
void setup() {
  size(500, 500, P3D);

  //cam = new PeasyCam(this, 100);
  //cam.setMinimumDistance(50);
  //cam.setMaximumDistance(500);
  //cam.setActive( false);

  //cam.lookAt(0, 0, 30);
}
void draw() {
  background(255);
  fill(0);

  pushMatrix();
  translate(top[0].x + width/2, top[0].y +height/2, 300);
  sphere(10);
  popMatrix();
  pushMatrix();
  translate(width/2, height/2, 300);
  noStroke();
  stroke(100);

  strokeWeight(10);

  rotateY(radians(65));


  noFill();
  beginShape();
  for (int i = 0; i < top.length; i++) {
    PVector p = top[i];
    vertex(p.x, p.y, p.z);
    println(p.x + " " + p.y + " " + p.z);
  }

  endShape(CLOSE);

  beginShape();
  for (int i = 0; i < bottom.length; i++) {
    PVector p = bottom[i];
    vertex(p.x, p.y, p.z);
    println(p.x + " " + p.y + " " + p.z);
  }
  endShape(CLOSE);

  beginShape();
  for (int i = 0; i < front.length; i++) {
    PVector p = front[i];
    vertex(p.x, p.y, p.z);
    println(p.x + " " + p.y + " " + p.z);
  }
  endShape(CLOSE);
  beginShape();
  for (int i = 0; i < back.length; i++) {
    PVector p = back[i];
    vertex(p.x, p.y, p.z);
    println(p.x + " " + p.y + " " + p.z);
  }
  endShape(CLOSE);
  popMatrix();

  //saveFrame("out.png");
  //noLoop();
}