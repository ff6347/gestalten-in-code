function setup() {
  var canvas = createCanvas(500, 500);
      canvas.parent('sketch');
  background(255);
  stroke(1);
  noFill();
  smooth();
  rect(200,200,100,100);

  var y = 200;
  while (y < 300){
    line(300, 200, 200, y);
    y += 5;
  }
}

function draw() {

}

function mousePressed(){
  save('out.png');
}
