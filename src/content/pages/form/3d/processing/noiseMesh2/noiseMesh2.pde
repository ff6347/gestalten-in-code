
import nervoussystem.obj.*;
import peasy.*;

//demo creating a simple mesh using perlin noise as height information
// change noise resolution by moving the mouse and export pressing a key
// found here http://forum.processing.org/topic/basic-displacement-maps
boolean record;
PeasyCam cam;
float noiseScale= 3;
float noiseScaleFactor = 1000;

int meshSize = 25;
int resX = 50;
int resY = 50;
float[][] val = new float[resX][resY]; 
void setup() {
  size(500, 500, P3D);
  //    smooth();

  background(255);

  cam = new PeasyCam(this, 0, 0, 0, 600);
}

void draw() {
  translate(-resX/2*meshSize, -resY/2*meshSize);
  noiseScale= noiseScaleFactor *.0002;
  float xoff = 0.0;
  for (int x =0; x<resX; x++) {
    xoff +=noiseScale;
    float yoff = 0.0;
    for (int y =0; y<resY; y++) {
      yoff +=noiseScale;
      val[x][y] = noise(xoff, yoff)*255;
    }
  }

  background(0);
  if (record) {

    beginRecord("nervoussystem.obj.OBJExport", "noiseMesh.obj");
  }

  for (int x =0; x<resX-1; x++) {
    for (int y =0; y<resY-1; y++) {
      beginShape();
      colorMode(HSB, 255);
      fill( val[x][y], 255, 255);
      vertex(x*meshSize, y*meshSize, val[x][y] );
      vertex((x+1)*meshSize, y*meshSize, val[x+1][y] );
      vertex((x+1)*meshSize, (y+1)*meshSize, val[x+1][y+1] );
      vertex(x*meshSize, (y+1)*meshSize, val[x][y+1] );
      endShape(CLOSE);
    }
  }


  if (record) {
    endRaw();
    endRecord();
    record = false;
  }
//  saveFrame("out-###.png");
//  if(frameCount == 250) exit();
}


void keyPressed() {
  if (key == 's' || key == 'S') {

    record = true;
  }

  if (key == 'i' || key == 'I') {

    meshSize+=5;
  }

  if (key == 'o' || key == 'O') {

    meshSize-=5;
  }

  if (key == CODED) {
    if (keyCode == UP) {
      noiseScaleFactor+=10;
    } else if (keyCode == DOWN) {
      noiseScaleFactor-=10;
    } else if (keyCode == LEFT) {
      resX +=10;
      resY +=10;
      val = new float[resX][resY];
    } else if (keyCode == RIGHT) {
      resX -=10;
      resY -=10;
      if (resX < 2) {
        resX=1;
        resY=1;
      }
      val = new float[resX][resY];
    }
  }
}



