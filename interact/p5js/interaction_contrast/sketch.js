  var x, y, a, b;
  x,y = 0;
  var a  = 250;
  var b = 250;
  
function setup() {
  createCanvas(500, 500);
  background(0);
  smooth();
}

function draw() {
  strokeWeight(2);
  stroke(255);
  noLoop();
  rect(0, y, width, height/2);
 
  stroke(0);
  rectMode(CENTER);
  blendMode(DIFFERENCE);
  rect(width/2, height/2, a, b); 
}

function mousePressed(){
  save('image.jpg');
}