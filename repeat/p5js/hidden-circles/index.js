var dis = 20;

function setup() {
  createCanvas(500, 500);
  background(255);
}

function drawLines(count, distance) {
  distance = distance || 20;
  
  for (var i = 0; i < count; i++) {
     var x = i * distance;
    
    line(x, 0, x, 500);
  }
}

function draw() {
  stroke(0);
  strokeWeight(2);
  drawLines(100, dis);
  
  strokeWeight(10);
  stroke(255, 255, 255);
  noFill();
  ellipse(250, 250, 100);
  
  fill(255);
  ellipse(250, 250, 35);
  
  strokeWeight(10);
  stroke(255, 255, 255);
  noFill();
  ellipse(250, 250, 150);
  
  strokeWeight(10);
  stroke(255, 255, 255);
  noFill();
  ellipse(250, 250, 240);
  
  strokeWeight(10);
  stroke(255, 255, 255);
  noFill();
  ellipse(250, 250, 300);
  
  strokeWeight(10);
  stroke(255, 255, 255);
  noFill();
  ellipse(250, 250, 340);
  
  strokeWeight(10);
  stroke(255, 255, 255);
  noFill();
  ellipse(250, 250, 400);
  
  strokeWeight(10);
  stroke(255, 255, 255);
  noFill();
  ellipse(250, 250, 440);
  
  strokeWeight(10);
  stroke(255, 255, 255);
  noFill();
  ellipse(250, 250, 500);
}
 
 function mouseClicked(){
  save('Law of Connected Elements - Lines.png');
}