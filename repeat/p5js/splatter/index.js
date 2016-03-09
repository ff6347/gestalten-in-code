/*eslint-disable*/
function setup() {
  var canvas = createCanvas(500, 500);
  canvas.parent('sketch');
  var x = random(0,width);
  var y = random(0,width);
  var num = 100;
  for(var i = 0; i < num; i++){
    var w = random(0,6);
    ellipse(x + random(-20,20),y + random(-20,20), w, w);
  }
}

function draw() {

}
