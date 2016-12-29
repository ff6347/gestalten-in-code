void setup() {
  size(500, 500);
  textAlign(CENTER);
  textSize(12);
}
void draw() {
  background(255);
  fill(255);
  rect(20, 20, 20, 20);
  fill(0);
  if (((mouseX > 20) && (mouseX < 40)) && ((mouseY> 20)&&(mouseY < 40))) {
    text("we are in the rect", width/2, height/2);
    saveFrame("out.png");
  } else {
    text("hoover the with the mouse over the rect", width/2, height/2);
  }
}

