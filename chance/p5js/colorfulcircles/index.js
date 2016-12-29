//Canvas-Größe
var canvas_size = 500;

//Startgröße Kreis
var circle_size = 500;

//Transparenz der Kreise
var transparency_from = 50;
var transparency_to = 100;

//Abstand der Kreise
var distance_from = 0;
var distance_to = 3;


function setup() {   
  createCanvas(canvas_size, canvas_size);
  background(
    random(0,255),
    random(0,255),
    random(0,255));
}

function draw() {
    
  var x_m = width/2;
  var y_m = height/2;
  
  circle_size = circle_size - (random(distance_from, distance_to));
  var a = random(0, circle_size);
  
  if ( circle_size <= 0){
    save('image.jpg');
    noLoop();
  }
  
  var cR = random(0, 255);
  var cG = random(0, 255);
  var cB = random(0, 255);
  var cA = random(transparency_from, transparency_to);
  fill(cR, cG, cB, cA);
  noStroke();
  
  ellipse(x_m, y_m, a, a);
}

function mouseClicked() {
  noLoop();
}