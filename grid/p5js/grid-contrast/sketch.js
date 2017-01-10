function setup() {
   var canvas = createCanvas(500, 500);
       canvas.parent('sketch');
  background(220);
  
  var i = 0;
  while (i < 500){
    stroke(100);
    line(i, i, width, i);
    i = i + 2;
  }
  
  noStroke();
  fill(220);
  rect(200, 200, 100, 100);
  var y = 200;
  while(y < 300){
    stroke(100);
    line(y, y, y, 300);
    y += 2;
  }
}

function draw() {
  
}
