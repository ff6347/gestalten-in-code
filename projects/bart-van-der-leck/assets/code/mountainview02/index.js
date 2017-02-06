//mountain - array
  var x1, y1, x2, y2;
  x1 = [-4, 39, 73, 146, 180, 199, 225, 270, 300, 343, 394, 419, 442, 494, 536, 575, 606, 640, 697, 746, 782, 826, 901, 956, 975, 1038, 1066];
  y1 = [175, 156, 191, 265, 299, 319, 345, 349, 314, 321, 372, 395, 423, 428, 423, 413, 395, 378, 348, 356, 385, 361, 345, 289, 269, 236, 209];
  x2 = [30, 55, 134, 166, 193, 220, 265, 292, 331, 383, 410, 445, 483, 524, 561, 595, 634, 675, 733, 760, 817, 880, 942, 968, 1023, 1054, 1085];    
  y2 = [141, 172, 252, 285, 312, 339, 384, 327, 345, 361, 388, 395, 423, 428, 423, 413, 395, 345, 348, 356, 385, 361, 303, 276, 221	, 220, 189];
  
function preload() {
  fontLight = loadFont("assets/Proxima-Nova_Light.otf");
}

function setup() {
  createCanvas(1082, 609);
  colorMode(HSB);
  background(100);

//map legend
  fill(15);
  textSize(17);
  textFont(fontLight)
  textAlign(RIGHT, BASELINE);
  text("GFÄLL", 10*width/24, 19*height/21);
  textAlign(LEFT, BASELINE);
  text("LUSEN", 14*width/24, 19*height/21);
  
  stroke(15);
  strokeWeight(1);
  line(11*width/24, 181*height/203, 13*width/24, 181*height/203);  
  
  noFill();
  beginShape();
  vertex(13*width/24-5, 181*height/203-3);
  vertex(13*width/24, 181*height/203+0.5);
  vertex(13*width/24-5, 181*height/203+3.5);
  endShape();

//mountain - colors
  var rot = color(5, 80, 85);
  var gelb = color(50, 85, 90);
  var blau = color(225, 65, 55);
  var schwarz = color(25, 10, 15);    
  
//mountain
  for(var i = 0; i <= 29; i++){
    if (y1[i] <= 269) {
      stroke(blau);
      strokeWeight(10);
      strokeCap(SQUARE);    
      line (x1[i], y1[i], x2[i], y2[i]);
  } else if (y1[i] >= 384) {
      stroke(rot);
      strokeWeight(10);
      strokeCap(SQUARE);    
      line (x1[i], y1[i], x2[i], y2[i]);
  } else {
      stroke(gelb);
      strokeWeight(10);
      strokeCap(SQUARE);    
     line (x1[i], y1[i], x2[i], y2[i]);
   }
  }  
}

function mouseClicked() {
  save('berglandschaft02.png');
}