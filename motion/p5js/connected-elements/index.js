function setup() {
  var canvas = createCanvas(500, 500);
  canvas.parent('sketch');
  strokeWeight(2);
}
function draw() { 
  background(204);
  if (mouseIsPressed){
    fill(0);
    stroke(255);
  } else {
    fill(255);
    stroke(0);
  }
  line(width/5, 0, mouseX, mouseY);
  line(width/1.25, 0, mouseX, mouseY);
  line(width/5,height, mouseX, mouseY);
  line(width/1.25, height, mouseX, mouseY);
  noStroke();
  ellipse(mouseX, mouseY/2, width/8, width/8)
}
