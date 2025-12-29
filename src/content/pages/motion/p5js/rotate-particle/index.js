/*eslint-disable*/
  var num = 100;
  var x,y;
  var angle = 0;
  var positions = [];
function setup() {
  angleMode(DEGREES);
  var canvas = createCanvas(500, 500);
  canvas.parent('sketch');
  x  = width/2;
  y = height/2;

}

function draw() {
  background(255);
  push();
  translate(x,y);
  rotate(angle);
  rect(0,0,10,10);
  pop();
  angle++;
  x += random(-1,1);
  y += random(-1,1);
  if(x <= 0){
    x = 0;
  }else if(x >= width){
    x = width;
  }
  if(y <= 0){
    y = 0;
  }else if(y >= height){
    y = height;
  }
  if(angle === 360){
    angle = 0;
  }
}
