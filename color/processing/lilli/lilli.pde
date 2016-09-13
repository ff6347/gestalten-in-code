int y = 2;
int x = 0;
boolean direction_y = true;
void setup() {
  background(0);
  size(500, 500);
  x = width/2;
  //frameRate(12);
  loadPixels();
}
void draw() {
  noStroke();
  fill(255);
  rect(0, height/2, width, height/2);
  rect(0, 0, width, 1);
  stroke(255);
  point(x, y);
  if (get(x, y) == -1) {
    direction_y = !direction_y;
    x = int(random(width));
  }
  if (direction_y == true) {
    y++;
  } else if (direction_y == false) {
    y--;
  }
}

void keyPressed() {
  if (key=='s' || key =='S') {
//    saveFrame("out.png");
  }
}

