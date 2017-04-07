var col = {

  r: 155,
  g: 40,
  b: 103
}

function setup() {
  var a;
  createCanvas(400,400);
  }

function draw() {
  noStroke();
  col.r = random(0, 255);
  col.g = random(0, 255);
  col.b = random(0, 255);
   
  fill(col.r,col.g,col.b);
  background(0);
  var a = frameCount% width;
  var w = random(400);
  var h = random(400);

  ellipse(w,h,a,a);

}
function mousePressed() {
  noLoop();
}
