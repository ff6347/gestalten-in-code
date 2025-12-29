size(500,500);
background(255);
int x1 = width /2;
int x2 = width - width/4;

int y1 = height/4;
int y2 = y1;
for(int i = 0; i < 10; i++){
  line(x1,y1,x2,y2);
  y2 *= 1.1;
  y1 *=1.1;
  x1 -= 20;
}
saveFrame("out.png");