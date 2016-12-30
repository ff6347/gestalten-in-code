// Kreis1
var circleX;
var circleY;
var sizeX;
var sizeY;

// Kreis2
var circleX2;
var circleY2;
var sizeX2;
var sizeY2;

// Kreis3
var circleX3;
var circleY3;

//Kreis4
var circleX4;
var circleY4;

//Kreis5
var circleX5
var circleY5


function setup() {
  createCanvas (500,500);
  colorMode (HSB, 360,100,100, 100);
  
  circleX = 0;
  circleY = 0;
  sizeX = 10;
  sizeY = 10;
  
  circleX2 = 50;
  circleY2 = -50;
  sizeX2 = 10;
  sizeY2 = 10;
  
  circleX3 =250;
  circleY3 =0;
  circleX4 =500;
  circleY4 =250;
  circleX5 =-60;
  circleY5 =560;
}

function draw() {
  background (255);
  noStroke ();

//Kreis1
  circleX = circleX+1;
  circleY = circleY+1;
  fill (120, 30, 100,50);
  ellipse (circleX, circleY, sizeX,sizeY);

//Kreis2  
  circleX2 = circleX2+1;
  circleY2 = circleY2+1;
  fill (120, 30, 100,50);
  ellipse (circleX2, circleY2, sizeX2,sizeY2);

//Kreis3
  circleY3 = circleY3+1.5;
  fill (20,40,100,100);
  ellipse (circleX3, circleY3, 20,20);
  
//Kreis4
  circleX4 = circleX4-2;
  fill (50);
  ellipse (circleX4, circleY4, 10,10);
  
//Kreis5
  circleX5 = circleX5+0.25;
  circleY5 = circleY5-0.25;
  fill (50,10);
  ellipse (circleX5, circleY5, 110,110);
  
  
  
   
// Kreis1 
if (circleX <= 250) {
  sizeX = sizeX+0.25;
  sizeY = sizeY+0.25;
}

else if (circleX >= width) {
  circleX = 0;
  circleY = 0;
  sizeX = 10;
  sizeY = 10;
}

else if (circleX >250) {
  sizeX = sizeX-0.25;
  sizeY = sizeY-0.25;
}
  
// Kreis2  
if (circleX2 <= 300) {
  sizeX2 = sizeX2+0.25;
  sizeY2 = sizeY2+0.25;
}

else if (circleX2 >= width+50) {
  circleX2 = 50;
  circleY2 = -50;
  sizeX2 = 10;
  sizeY2 = 10;
}

else if (circleX2 >300) {
  sizeX2 = sizeX2-0.25;
  sizeY2 = sizeY2-0.25;
}

//Kreis3 
if (circleY3 >= 500) {
  circleX3 =250;
  circleY3 =0;
}

//Kreis4
if (circleX4 <= 0) {
  circleX4 =500;
  circleY4 =250;
}

//Kreis5
if (circleX5 >= width+60) {
  circleX5 =-60;
  circleY5 =560;
}
  
}

function mousePressed () {
  save ('image.png');
  
}

  

  
  
  
