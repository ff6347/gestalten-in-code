size(500, 500);
background(255);
translate(width/2, height/2);
noFill();
strokeWeight(10);
strokeCap(SQUARE);

int a = 90;
int off = 30;
int diam = width/3;
for (int i = 0; i < 4; i++) {
  arc(0, 0, diam, diam, radians(off + (a - 80)), radians(off  + (a - 10)), OPEN);
  a += 90;
}
saveFrame("out.png");