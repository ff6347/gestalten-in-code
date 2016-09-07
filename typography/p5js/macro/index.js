/*eslint-disable*/
var s = 700;
var x = -100;
var y = 400;
function setup() {
  var canvas = createCanvas(500,500);
  canvas.parent('sketch');
  textFont('Arvo');
  textSize(s);
  textStyle(BOLD);
  text('p5', x, y);
  var off = textWidth('p5');
  textStyle(NORMAL);
  text('js', x + off, y);
  // saveCanvas(canvas,'out','png');
}

function draw() {

}
