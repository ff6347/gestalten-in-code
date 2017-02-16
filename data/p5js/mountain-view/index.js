//mountain - array
  var x1, y1, x2, y2;
  x1 = [19, 56, 84, 112, 158, 182, 270, 298, 333, 364, 393, 407, 454, 500, 517, 554, 585, 622, 675, 689, 720, 790, 847, 900, 932, 987, 1046];
  y1 = [428, 390, 386, 425, 416, 393, 376, 348, 313, 305, 337, 353, 374, 327, 311, 286, 341, 319, 345, 382, 408, 424, 417, 410, 385, 360, 304];
  x2 = [48, 78, 103, 139, 174, 237, 285, 327, 358, 380, 400, 453, 479, 511, 541, 580, 609, 658, 686, 724, 775, 831, 882, 938, 979, 1035, 1057];    
  y2 = [399, 368, 406, 400, 400, 337, 361, 319, 289, 321, 344, 399, 349, 316, 286, 313, 318, 353, 355, 382, 408, 424, 417, 410, 385, 314, 293];
  
function preload() {
  fontLight = loadFont("assets/Proxima-Nova_Light.otf");
}

function setup() {
  var canvas = createCanvas(1082, 609);
  canvas.parent('sketch');
  colorMode(HSB);
  background(100);

//map legend
  fill(15);
  textSize(17);
  textFont(fontLight)
  textAlign(RIGHT, BASELINE);
  text("BERCHTESGADEN", 10*width/24, 19*height/21);
  textAlign(LEFT, BASELINE);
  text("NUSSDORF", 14*width/24, 19*height/21);
  
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
    if (y1[i] <= 348) {
      stroke(blau);
      strokeWeight(10);
      strokeCap(SQUARE);    
      line (x1[i], y1[i], x2[i], y2[i]);
  } else if (y2[i] >= 400) {
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
  save('berglandschaft01.png');
}