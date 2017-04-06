// Circle1
var circleX;
var circleY;

// Circle2
var circleX2;
var circleY2;


// Circle3
var circleX3;
var circleY3;


// Circle4
var circleX4;
var circleY4;


// Circle5
var circleX5;
var circleY5;

var d1 = 8;

//Rectangle 

var rectX;
var rectH;
var x = 0;

function setup() {
   createCanvas(500,500);
   var canvas = createCanvas(500, 500); 
   canvas.parent('sketch');
   colorMode(HSB, 360, 100, 100, 100);
  
  circleX = width*0.25;
  circleY = 20;
  
  circleX2 = width*0.5;
  circleY2 =0;
  
  circleX3 = width*0.75;
  circleY3 = -10;
  
  circleX4 = width*0.6;
  circleY4 = -10;
  
  circleX5 = width*0.2;
  circleY5 = -30;
  
  rectX = 499;
  rectH = 1;
  
}


function draw() {
  background (0,0,360,100);
  fill (227,68,40);

  //Cirlce1
  circleY = circleY+2;
  ellipse (circleX, circleY, d1,d1);
  
  //Cirlce2
  circleY2 = circleY2+2;
  fill (227,68,40);
  ellipse (circleX2, circleY2, d1,d1);
 
  //Cirlce3
  circleY3 = circleY3+2;
  fill (227,68,40);
  ellipse (circleX3, circleY3, d1,d1);
  
  //Cirlce4
  circleY4 = circleY4+4;
  fill (227,68,40);
  ellipse (circleX4, circleY4, d1,d1);
 
  //Cirlce5
  circleY5 = circleY5+4;
  fill (227,68,40);
  ellipse (circleX5, circleY5, d1,d1);
  
    
//Kreis1 
if (circleY >= height) {
  circleX = width*0.25;
  circleY = +30;
}

//Kreis2 
if (circleY2 >= height) {
  circleX2 = width*0.5;
  circleY2 =0;
}


//Kreis3 
if (circleY3 >= height) {
  circleX3 = width*0.75;
  circleY3 = -20;

}


//Kreis4 
if (circleY4 >= height) {
  circleX4 = width*0.6;
  circleY4 = 0;
}

//Kreis5 
if (circleY5 >= height) {
  circleX5 = width*0.2;
  circleY5 = -40;
  rectX = rectX-1;
  rectH = rectH+1;
}
  
  //Line  
  stroke(227,68,40);
  rect(0, rectX, width, rectH);

 // Klammer End Draw 
}

