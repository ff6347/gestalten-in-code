//mountain - array
  var x1, y1, x2, y2;
  x1 = [187, 223, 236, 292, 312, 330, 348, 402, 408, 445, 459, 514, 534, 552, 570, 624, 630, 667, 681, 736, 756, 775, 793, 846, 852];
  y1 = [390, 374, 361, 175, 160, 163, 185, 374, 390, 374, 361, 175, 160, 163, 185, 374, 390, 374, 361, 175, 160, 163, 185, 374, 390];    
  x2 = [227, 233, 285, 303, 321, 341, 397, 412, 448, 455, 507, 525, 543, 561, 619, 634, 670, 677, 730, 748, 765, 786, 842, 856, 892];
  y2 = [390, 374, 185, 163, 160, 175, 361, 374, 390, 374, 185, 163, 160, 175, 361, 374, 390, 374, 185, 163, 160, 175, 361, 374, 390];
  
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
  textAlign(CENTER, BASELINE);
  text("TOBLERONE", width/2, 19*height/21);

//mountain - colors
  var rot = color(5, 80, 85);
  var gelb = color(50, 85, 90);
  var blau = color(225, 65, 55);
  var schwarz = color(25, 10, 15);    
  
//mountain
  for(var i = 0; i <= 26; i++){
    if (y2[i] <= 175) {
      stroke(blau);
      strokeWeight(10);
      strokeCap(SQUARE);    
      line (x1[i], y1[i], x2[i], y2[i]);
  } else if (y2[i] >= 374) {
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
  save('toblerone.png');
}