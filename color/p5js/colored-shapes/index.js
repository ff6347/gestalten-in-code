var colors = [200, 100, 50, 20];

function setup() {
  var canvas = createCanvas(500, 500); 
  background(255);
}
  

function draw() {
  var scaleFactor = 30; 
  noStroke();
 
  var x = 0;
  var y = 0;

  for (var i = 0, side = 30; side > 0; side--, i++) {
    // fill with color
    fill(colors[ i % colors.length ], 0, 0);
    rect( x, y, scaleFactor * side, scaleFactor * side);
  }

  scaleFactor = 50; 
  
  var x = 500;
	var y = 500; 
 	// loop for the radius of the circle
  for (var i = 0, radius = 14; radius > 0; radius--, i++) {
  	// fill with color
 		fill(0, 0, colors[i % colors.length]);
    ellipse( x, y, scaleFactor * radius, scaleFactor * radius);
  }
 

  scaleFactor = 50;

  var x = 0;
  var y = 500;

  for(var i = 0, radius = 14; radius > 0; radius--, i++) {
    
    fill(0,colors[i % colors.length], 0);
    ellipse( x, y, scaleFactor * radius, scaleFactor * radius);

  }

 noLoop();


}
