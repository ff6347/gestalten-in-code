function setup() {
   var canvas = createCanvas(500, 500);
       canvas.parent('sketch');
  background(255);
  stroke(1);
  
  for(var i = 10; i < 500; i += 9){
    stroke(1);
    strokeWeight(i/50);
    line(i, 0, i, 550);
    line(500, i, 0, i);
  }
}

function draw() {
  
}
