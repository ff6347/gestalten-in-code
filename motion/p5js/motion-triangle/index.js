var CANVAS_WIDTH  = 500;
var CANVAS_HEIGHT = 500;
var triangleColors =  {
  blue:   "rgb(0, 38, 255)",                          
  yellow: "rgb(240, 250, 0)",                           
  red :   "rgb(255, 0, 0)"                               
};

// create new Vector object
var movingVector = new p5.Vector(100, 100);
// create new Vector object
var changeVector = new p5.Vector(5, 10);

var scaleFactor = {
  x : 1/2,
  y : 15/16
};


function setup() {
  var canvas = createCanvas(CANVAS_WIDTH, CANVAS_HEIGHT);   
  canvas.parent('sketch');
  frameRate(120);
}

function draw() { 
  
  background(0); 
  noStroke();
  

  movingVector.add( changeVector );

  if ( ( movingVector.x > width ) || ( movingVector.x < 0 ) ) {
    // change sign of v.x (change direction)
    changeVector.x = changeVector.x * -1;
  }
  
  if ( ( movingVector.y > height ) || ( movingVector.y < 0 ) ) {
    // change sign of v.y (change direction)
    changeVector.y = changeVector.y * -1;
  }

  if( movingVector.x > (width * scaleFactor.x) ){
    fill(triangleColors.blue); // blue
    triangle( width * scaleFactor.x, 0, movingVector.x, movingVector.y, width, height * scaleFactor.y);
 
    fill(triangleColors.yellow); // yellow
    triangle( width * scaleFactor.x, 0, movingVector.x, movingVector.y, 0, height * scaleFactor.y);

    // ORDER: the blue triangle is under the yellow triangle

  } else {
    // draw first the yellow triangle
    fill(triangleColors.yellow); // yellow
    triangle( width * scaleFactor.x, 0, movingVector.x, movingVector.y, 0, height * scaleFactor.y);
    // then the blue triangle
    fill(triangleColors.blue); // blue
    triangle( width * scaleFactor.x, 0, movingVector.x, movingVector.y, width, height * scaleFactor.y);

    // ORDER: the yellow triangle is under the blue triangle
  }  

  if ( movingVector.y < (height * scaleFactor.y) ) {
    fill(triangleColors.red);  // red    
    triangle( 0, height * scaleFactor.y, movingVector.x, movingVector.y, width, height * scaleFactor.y );    
  } else { /* dont draw the red triangle */ } 


}
