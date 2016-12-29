/*eslint-disable*/
int s = 500;
int x = -100;
int y = 400;
PFont f;
void setup() {
  background(0);
  size(500,500);
  f = createFont("SohoGothicStd-ExtraBold", 144);
 textFont(f);
  textSize(s);
 
  text("p5", x, y);
  saveFrame("logo.png");
}

void draw() {

}