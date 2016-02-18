/*eslint-disable*/
var w = 0;
function setup() {
  var canvas = createCanvas(400, 300);
  canvas.parent('sketch');
  w = random(width / 4, width / 2);
  noStroke();
}

function draw() {
  background(40);
  for (var i = 0; i < 100; i++) {
    var r1 = random(-10, 10);
    var r2 = random(-10, 10);
    fill(220, 10);
    ellipse((width / 2) + r1, (height / 2) + r2, w, w);

  }

}