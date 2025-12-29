/*eslint-disable*/
var val = 1;
// getting started with p5js
function setup() {
  // executed once
  var canvas = createCanvas(400, 400);
  canvas.parent('sketch');
  var count = 0;
  var size = 5;
  var select = floor(random(0,(width/5)*(height/5)));
  var x1,y1;
  console.log(select);
  for (var x = 0; x < width; x += size) {
    for (var y = 0; y < height; y += size) {
      count++;
      if(count === select){
        x1 = x;
        y1 = y;
        console.log('x : %s || y : %s',x,y);
        ellipse(x, y, size, size);
      }else{
        ellipse(x, y, size, size);
      }
    }
  }
  ellipse(y1, x1, size*2, size*2);
  // saveCanvas(canvas, 'out','png');
}
function draw() {
  // executed all the time

}