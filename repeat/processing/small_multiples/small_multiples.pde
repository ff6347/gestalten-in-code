/**
 * @TODO: write comments
 *
 */
int area = 20; // the area for the blocks
int num = 5; // the number of rects in one block
int gutter = 5; // the gutter between blocks
int w = 5; // the width of one rect in a block
int h = 5; // the height of one rect in a block
ArrayList<Block> blocks; // will hold all the blocks
/**
 * The setup is executed once
 */
void setup() {
  size(480, 480); // the size of the window
  blocks = new ArrayList<Block>(); // init the list
  int stepx = gutter + area/2; // calc the steps per block x
  int stepy = gutter + area/2; // calc the steps per block y
  // create coordiantes for each block
  // and create blocks
  for (int x = stepx; x < width; x+= (width/stepx) ) {
    // loop the x axis
    for (int y = stepy; y < height; y+= (height/stepy) ) {
      // loop the y axis
      //blocks.add(new Block(x, y)); // simple creation of blocks 
      blocks.add(new Block(x, y, w, h, area, num)); // extend creation of blocks
      println(x + " || " + y); // just to see where the coords are
    } // end of y loop
  } // end of x loop
} // end of setup

/**
 * The draw executed all the time
 * in this case everything could take place in the setup
 * but we still do it here
 */
void draw() {
  background(255); // white background
  // loop all the blocks in the list and display them
  for (int i = 0; i < blocks.size(); i++) {
    blocks.get(i).display(); // call the internal display function of each block
  } // end of i loop
  saveFrame("out.png"); // save an image
  noLoop(); // don't loop everything for now
}
/**
 * The Block class
 * each one is a set of rectangles
 * connected by lines
 */
class Block {
  int x = 0; // the block's x
  int y = 0; // the block's y
  int num = 5; // the number of rectangles
  int area = 10; // the area to cover
  int w = 5; // the width of one rect
  int h = 5; // the height of one rect
  ArrayList<PVector> coordinates; // will hold all the rectangles coordiantes
  // the constructor simple
  Block(int x, int y) {
    this.x = x; // pass on the x from outside to the block
    this.y = y; // pass on the y from outside to the block
    coords(); // initalize the coordiantes of the rectangles
  } // end of simple constructor
  Block(int x, int y, int w, int h, int area, int num) {
    this.x = x; // the blocks x
    this.y = y; // the blocks y
    this.num = num; // the number of rects
    this.area = area; // the area to cover
    this.h = h; // the rects height
    this.w = w; // the rects width
    coords(); // initalize the coordiantes of the rectangles
  } // end of complex constructor


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