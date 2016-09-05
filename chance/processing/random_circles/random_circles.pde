int x = 5;
int y = 5;
float scaler = 0;

void setup () {
  size(400, 400);
}

void draw() {
  int step = 10;
  for (int i = 0; i < width*height; i+= step) {
    scaler = random(10);
    ellipse(x, y, scaler, scaler);
    x+=step;
    if (x >= width) {
      x = 5;
      y+=step;
    }
  }
  saveFrame("out.png");
  noLoop();
}