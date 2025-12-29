
void setup() {
  background(255);
  size(500,500);
  println("Setup only once");
}
void mouseDragged(){
  noFill();
  ellipseMode(CENTER);
  strokeWeight(2);
  stroke(random(0,200));
  float radius = random(1,10);
  ellipse(mouseX,mouseY,radius,radius);
}
void draw() {

}
void keyPressed(){
  if(key == 'c'){
    noStroke();
  fill(255);
  rect(0,0,width,height);
  }
  if(key == 's'){
  
  saveFrame("out.png");
}
}
