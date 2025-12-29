color c=color(0);
int x, y, xp, yp;
int strokeW=1,flag=0;
void setup()
{
  size(500, 500);
  background(255);
}
void draw()
{
  noStroke();
  fill(c);
  rect(0, 0, 30, 30);
  stroke(c);
  strokeWeight(strokeW);
  if(flag==1) line(mouseX, mouseY, pmouseX, pmouseY);
}
 
void mouseDragged() {
  flag=1;
}
void mouseReleased(){
  flag=0;
}
 
 
void keyPressed() {
  if(key == 's') saveFrame("out.png");
  if (key == 'c')  
    background(255);
  if (key == CODED) {
    if (keyCode == UP) strokeW++; 
    if (keyCode == DOWN) strokeW--;
  }
  if (strokeW<0)strokeW=1;
  if(key== ' ') c = color(random(0,255),random(0,255),random(0,255));
}
