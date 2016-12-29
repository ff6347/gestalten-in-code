ArrayList<Box> boxen;

void setup() {
  size(500, 500);
  boxen = new ArrayList<Box>();
  for (int i = 0; i < 100; i++) {
    boxen.add(new Box(new PVector(random(width), random(height))));
  }
}
void draw() {
  background(255);
  runner();
  saveFrame("out.png");
  noLoop();
}

void runner() {
  for (int i = 0; i < boxen.size(); i++) {
    boxen.get(i).display();
  }
}

class Box {
  PVector p;
  int w;
  int h;
  ArrayList<PVector> corners;

  Box(PVector p ) {
    this.w = 10;
    this.h = 10;
    this.p = p;
    this.corners = new ArrayList<PVector>();
    this.corners.add(this.p.copy());
    this.corners.add(new PVector(this.p.x, this.p.y + this.h));
    this.corners.add(new PVector(this.p.x + this.w, this.p.y + this.h));
    this.corners.add(new PVector(this.p.x + this.w, this.p.y));
  }

  void display() {
    rect(this.p.x, this.p.y, this.w, this.h);
    for (int i = 0; i < this.corners.size(); i++) {
      ellipse(this.corners.get(i).x, this.corners.get(i).y, this.w/4, this.h/4);
    }
  }
}