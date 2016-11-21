size(500, 500);
background(255);

translate(width/2, height/2);
noFill();
strokeWeight(10);
int a = 90;
int off = 30;
for (int i = 0; i < 4; i++) {
  arc(0, 0, width/4, width/4, radians(off + (a - 80)), radians(off  + (a - 10)), OPEN);
  a += 90;
}
fill(255);
strokeWeight(1);
rect(0, 0, -width/4, height/4);
saveFrame("out.png");