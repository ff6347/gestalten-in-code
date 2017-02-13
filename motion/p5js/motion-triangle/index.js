function cssColor(color){
  return "rgb(" + color.r + "," + color.g + "," + color.b + ")";
}
colors = {
  blue:   cssColor({ r: 0, g: 38, b: 255 }) ,
  yellow: cssColor({ r: 240, g: 250, b: 0 }) ,
  red :   cssColor({ r: 255, g: 0, b: 0 }),
};


var CANVAS_WIDTH  = 500;
var CANVAS_HEIGHT = 500;


// create new Vector object
var movingVector = new p5.Vector(100, 100);
// create new Vector object
var changeVector = new p5.Vector(5, 10);

scaleFactor = {
  a : 1/2,
  b : 15/16
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

  if ( ( movingVector.x > CANVAS_WIDTH ) || ( movingVector.x < 0 ) ) {
    // change sign of v.x (change direction)
    changeVector.x = changeVector.x * -1;
  }
  
  if ( ( movingVector.y > CANVAS_HEIGHT ) || ( movingVector.y < 0 ) ) {
    // change sign of v.y (change direction)
    changeVector.y = changeVector.y * -1;
  }


  if( movingVector.x > (CANVAS_WIDTH * scaleFactor.a) ){
    fill(colors.blue); // blue
    triangle(CANVAS_WIDTH * scaleFactor.a, 0, movingVector.x, movingVector.y, CANVAS_WIDTH, CANVAS_HEIGHT * scaleFactor.b);
 
    fill(colors.yellow); // yellow
    triangle(CANVAS_WIDTH * scaleFactor.a, 0, movingVector.x, movingVector.y, 0, CANVAS_HEIGHT * scaleFactor.b);

    // ORDER: the blue triangle is under the yellow triangle

  } else {
    // draw first the yellow triangle
    fill(colors.yellow); // yellow
    triangle(CANVAS_WIDTH * scaleFactor.a, 0, movingVector.x, movingVector.y, 0, CANVAS_HEIGHT * scaleFactor.b);
    // then the blue triangle
    fill(colors.blue); // blue
    triangle(CANVAS_WIDTH * scaleFactor.a, 0, movingVector.x, movingVector.y, CANVAS_WIDTH, CANVAS_HEIGHT * scaleFactor.b);

    // ORDER: the yellow triangle is under the blue triangle
  }  

  
  if ( movingVector.y < (CANVAS_HEIGHT * scaleFactor.b) ) {
    fill(colors.red);  // red    
    triangle( 0, CANVAS_HEIGHT * scaleFactor.b, movingVector.x, movingVector.y, CANVAS_WIDTH, CANVAS_HEIGHT * scaleFactor.b );    
  } else { /* dont draw the red triangle */ } 


}









