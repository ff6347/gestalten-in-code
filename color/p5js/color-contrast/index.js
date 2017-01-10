var x = y = 0;
var a = b =  250;  

function setup() {
   var canvas = createCanvas(500, 500);
       canvas.parent('sketch');
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
