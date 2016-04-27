/**
 * @TODO: a sketch showing small multiples
 * @TODO: write comments
 *
 */
int area = 20;
int num = 5;
int gutter = 5;
int w = 5;
int h = 5;

ArrayList<Block> blocks;
void setup() {
  size(450, 450);
  blocks = new ArrayList<Block>();
  int stepx = gutter + area/2;
  int stepy = gutter + area/2;
  for (int x = stepx; x < width; x+= (width/stepx) ) {
    for (int y = stepy; y < height; y+= (height/stepy) ) {
      //blocks.add(new Block(x, y));
      blocks.add(new Block(x, y, w, h, area, num));

      println(x + " || " + y);
    }
  }
}

void draw() {
  background(255);
  for (int i = 0; i < blocks.size(); i++) {
    blocks.get(i).display();
  }
  saveFrame("out.png");
  noLoop();
}

class Block {
  int x =0;
  int y = 0;
  int num = 5;
  int area = 10;
  int w = 5;
  int h = 5;
  ArrayList<PVector> coordinates;
  Block(int x, int y) {
    this.x = x;
    this.y = y;
    coords();
  }
  Block(int x, int y, int w, int h, int area, int num) {
    this.x = x;
    this.y = y;
    this.num = num;
    this.area = area;
    this.h = h;
    this.w = w;
    coords();
  }


  void coords() {
    coordinates = new ArrayList<PVector>();
    for (int j = 0; j <this.num; j++) {
      coordinates.add(new PVector(random(-this.area/2, this.area/2), random(-this.area/2, this.area/2)));
    }
  }
  void display() {
    rectMode(CENTER);
    pushMatrix();
    translate(this.x, this.y);
    fill(0);

    for (int i = 0; i < this.coordinates.size(); i++) {
      PVector p = coordinates.get(i);
      if (i != coordinates.size() -1) {
        line(p.x, p.y, coordinates.get(i +1).x, coordinates.get(i+1).y);
      } else {
        line(p.x, p.y, coordinates.get(0).x, coordinates.get(0).y);
      }
      rect(p.x, p.y, this.w, this.h);
    }
    popMatrix();
  }
}