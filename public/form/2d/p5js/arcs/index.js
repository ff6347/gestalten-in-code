/*eslint-disable*/
var i = 0;
var a = 0;
function setup() {
  //executed once
  var canvas = createCanvas(400, 400);
  canvas.parent('sketch');
  background(255, 10);
  noFill();
  while (i < width) {
    strokeWeight(map(i,0,width,8,0.5));
    arc(width / 2, height / 2, i % width, i % width, a % 360, a % 360 * -1, OPEN);
    a++;
    i += 13;
  }
  // saveCanvas(canvas,'out','png');
}
function draw() {
}

