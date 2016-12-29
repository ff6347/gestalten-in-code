size(500, 500);
background(255);
int step = width/10;
for (int x = step; x < width; x+=step) {
  int flip = 0;
  for (int y = step; y < height; y+=step) {
    if (flip%2 == 0) {
      fill(0);
    } else {
      fill(255);
    }
    ellipse(x, y, width/20, width/20);
    flip++;
  }
}

saveFrame("out.png");