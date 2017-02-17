var initialOffset    = 10;
var offset           = 25;
var globalCircleSize = 15;

var col = {
  r: 180,
  g: 63,
  b: 203
}


function setup() {
   var canvas = createCanvas(500, 500); 
   canvas.parent('sketch');
   background(0);  
}

function draw() {
        
    circleSize = globalCircleSize;

    strokeWeight(3);
    
    for(var y = initialOffset; y < height; y = y + offset ) {
    for(var x = initialOffset; x < width; x = x + offset){
      
        //fill(col.r, col.g, col.b)

        ellipse(x, y, circleSize, circleSize);
        circleSize = Math.abs(randomGaussian(5, 10)) | 0;
    }
     
    }
}

//play with strokeWeight :) 
