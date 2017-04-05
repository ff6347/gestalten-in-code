var rows;
var columns;

var xStep;
var yStep;

var heightoff;
var widthoff;

var positions = [];

function setup(){
  var canvas = createCanvas(500, 500); // !this is important
  canvas.parent('sketch'); // !this as well
  background(252);

  rows = 15;
  columns = 15;

  heightoff = (height - 30);
  widthoff = (width - 30)

  xStep = widthoff/columns;
  yStep = heightoff/rows;

  for(var x = 30; x < widthoff; x += xStep){
  for(var y = 30; y < heightoff; y += yStep){
    var p = createVector(x, y);
    positions.push(p);
  }
  }

  var size = 15;
  fill(220);
  strokeWeight(0.5);
  for(var i = 0; i < positions.length; i++){
    ellipse(positions[i].x, positions[i].y, size, size);
    size = Math.abs(randomGaussian(2, 2)) | 12;
    strokeWeight(random(0,0.5));
  }
}
