var distribution = new Array(360);
var col = {
  
  r: 155,
  g: 40,
  b: 103
}
function setup() {
  createCanvas(400, 400);
  for (var i = 0; i < distribution.length; i++) {
    distribution[i] = floor(randomGaussian(0,100));
  }
}

function draw() {
  background(0);
  
  col.r = random(100, 155);
  col.g = random(0, 40);
  col.b = random(0, 103);
 translate(width/2, width/2);
 for (var i = 0; i < distribution.length; i++) {
    rotate(TWO_PI/distribution.length);
    stroke(0);
    var dist = abs(distribution[i]);
    line(dist, 0, dist, dist);
    noFill();
    stroke(col.r,col.g,col.b);
    curve(0, dist, dist, 10,10, dist, dist, dist);
  }
}
 
