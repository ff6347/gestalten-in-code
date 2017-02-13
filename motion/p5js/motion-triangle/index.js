// create new Vector object
var movingVector = new p5.Vector(600, 300);
// create new Vector object
var changeVector = new p5.Vector(5, 9);

function setup() {
  var canvas = createCanvas(800, 800);
  canvas.parent('sketch');
}

function draw() { 
  
  background(0); 
  noStroke();
  frameRate(120);

  movingVector.add( changeVector );

  if ( ( movingVector.x > width ) || ( movingVector.x < 0 ) ) {
    // change sign of v.x (change direction)
    changeVector.x = changeVector.x * -1;
  }
  
  if ( ( movingVector.y > height ) || ( movingVector.y < 0 ) ) {
    // change sign of v.y (change direction)
    changeVector.y = changeVector.y * -1;
  }

  // draws the blue triangle when it is less than 400 on the right side. 
  if( movingVector.x > 400 ){
    fill(0, 38, 255); // blue
    triangle(400, 0, movingVector.x, movingVector.y, 800, 750);
 
    fill(255, 251, 0); // yellow
    triangle(400, 0, movingVector.x, movingVector.y, 0, 750);

    // ORDER: the blue triangle is under the yellow triangle

  } else {
    // draw first the yellow triangle
    fill(255, 251, 0); // yellow
    triangle(400, 0, movingVector.x, movingVector.y, 0, 750);
    // then the blue triangle
    fill(0, 38, 255); // blue
    triangle(400, 0, movingVector.x, movingVector.y, 800, 750);

    // ORDER: the yellow triangle is under the blue triangle
  }  

  // if movingVector is in the upper boundry [0, 750) draw the red triangle
  if ( movingVector.y < 750 ) {
    fill(255, 0, 0);  // red    
    triangle( 0, 750, movingVector.x, movingVector.y, 800, 750 );    
  } else { /* dont draw the red triangle */ } 

}
