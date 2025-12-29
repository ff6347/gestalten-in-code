/*eslint-disable*/
var y1 = 0;
var x1 = 0;
var y2 = 0;
var x2 = 0;
var noiseXOff = 0;
var incr = true;

function setup() {
  var canvas = createCanvas(500, 500);
  canvas.parent('sketch');
  x1 = width / 4;
  x2 = (width / 4) * 3;
  cls();
}
function cls() {
  background(255);
  rectMode(CENTER);
  noStroke();
  fill(200);
  rect(x1, height / 2, 10, height);
  rect(x2, height / 2, 10, height);

}
function draw() {
  stroke(0);
  strokeWeight(1);
  if (keyIsDown(SHIFT) !== true) {
    point(randomX(x1), y1)
    point(noiseX(x2), y2);
    y1++;
    y2++;
  }
  if (y1 === height || y2 === height) {
    y1 = y2 = 0;
    cls();
  }
}

function keyPressed (){
  // console.log(keyCode);
  if(keyCode === 83 || keyCode === 16){
    // lower case and upper case s
    saveCanvas(canvas, 'out','png');
  }
}

function randomX(_x) {
  var r = random(-5, 5);
  console.log('Random: %s', r);
  return _x + r;
}

function noiseX(_x) {
  noiseXOff = noiseXOff + 0.1;
  var rawNoise = noise(noiseXOff);
  var scaledNoise = rawNoise * 5;
  var offsetedNoise = scaledNoise - 2.5;
  var n = offsetedNoise;
  console.log('Raw: %s Scaled: %s Offseted/Final: %s', rawNoise, scaledNoise, offsetedNoise);
  return _x + n;
}