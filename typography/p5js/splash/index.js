/*eslint-disable*/
var h1 = 'GESTALTEN';
var h2 = 'IN CODE';
var th = 144;
var c1 = 'hsl(201, 89%, 74%)';
var white = 'hsl(201, 0%, 100%)';
function setup() {
  var canvas = createCanvas(1920, 1080);
  canvas.parent('sketch');
  textFont('SohoGothicStd-ExtraBold'); // you need the post script name of a font
  background(c1);
  fill(white);
  stroke(white);
  textSize(th);
  var w1 = textWidth(h1);
  text(h1, (width / 2) - (w1 / 2), height / 2);
  textSize(th/2);
  fill(c1);
  rect(0,height/2,width, height/2);
  line(0,height/2,width, height/2);
  strokeWeight(4);
  var w2 = textWidth(h2);
  text(h2, (width / 2) - (w2 / 2), (height / 2) + (th/2));
}
function draw() {

}
