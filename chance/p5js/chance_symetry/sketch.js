var a = 0;
var b = 0;
function setup() {
  createCanvas(500, 500);
  background(255);
  
}

function draw() {
  noLoop();
  smooth();
    for(var d =10; d < 500; d += 10){
  ellipseMode(RADIUS);
  noFill();
  ellipse(0, width/2, d, d);
  ellipse(width, height/2, d, d)
    }
}

function mousePressed(){
  save('image.jpg');
}