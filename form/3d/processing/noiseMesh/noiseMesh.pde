// YOU NEED THIS LIBS <a href="http://n-e-r-v-o-u-s.com/tools/obj.php">n-e-r-v-o-u-s obj export</a>
import nervoussystem.obj.*;
import processing.opengl.*;
int  d=10;
float[][] val ;
float xSize, ySize;
float increment = 0.03;
float zoff = 0.0;  
float zincrement = 0.01; 
ObjWriter exporter;
void setup() {
  //smooth();
  size(500, 500, OPENGL);
  val = new float[width/d][height/d];
  xSize = width/d;
  ySize = height/d;
}

void draw() {
  background(0);
  lights();
  fill(255, 0, 175);
  //stroke(0, 150, 150);
  noStroke();
  camera(0, 0, (height/2.0) / tan(PI*60.0 / 360.0), 
  width/2.0, height/2.0, 0, // centerX, centerY, centerZ
  0.0, 1.0, 0.0); // upX, upY, upZ
  translate(0, height/2, -300);
  rotateX(70); 

  noiseSeed(12);
  float xoff = 0.0; // Start xoff at 0
  noiseDetail(8, 0.5);
  // For every x,y coordinate in a 2D space, calculate a noise value and produce a brightness value
  for (int x = 0; x < width/d; x++) {
    xoff += increment;   // Increment xoff 
    float yoff = 0.0;   // For every xoff, start yoff at 0
    for (int y = 0; y < height/d; y++) {
      yoff += increment; // Increment yoff
      float z = noise(xoff, yoff, zoff)*600;
      val[x][y] = z;
    }
  }
  for (int x=0; x<xSize-1; x++) {
    for (int y=0; y<ySize-1; y++) {
      fill((val[x][y])-50, 0, 200);
      beginShape();
      vertex(x*d, y*d, val[x][y]);
      vertex( x*d+d, y*d, val[x+1][y]);
      vertex(x*d+d, y*d+d, val[x+1][y+1]);
      vertex(x*d, y*d+d, val[x][y+1]);
      endShape(CLOSE);
    }
  }
  zoff += zincrement; // Increment zoff
  noLoop();
}

void keyPressed() {
  if (key=='s' || key =='S') {
    saveFrame("out.png");
  }
}
