import peasy.test.*;
import peasy.org.apache.commons.math.*;
import peasy.*;
import peasy.org.apache.commons.math.geometry.*;
import processing.opengl.*;

// shamelessly taken from here
// http://forum.processing.org/one/topic/basic-displacement-maps.html


PImage extrude; // the image
float [][] val; // will hold the values
int x, y; // curr x,y
PeasyCam cam; // the cam

int meshSize = 50; //resolution of your mesh change it for finer mesh
int xSize, ySize; // size of the mesh
// set it heigher to lower the extrusion. Goes till 255 but you dont see any effect
// from 100 on
float extrusion = 1.9;

void setup() {
  size(500, 500, P3D);// size of sketch
  extrude = loadImage("grey.png"); // load the image
  extrude.loadPixels(); // get it's pixles

  xSize = extrude.width/meshSize; // get image size x
  ySize = extrude.height/meshSize;// also size y
  // pixels is an one dimensional array
  // with all the values of the all the pixels
  // to have a representation of an image
  // we create an 2 dimensional array and
  // and use it as our mesh
  val = new float[xSize][ySize];// create array
  // loop the "pixels"
  for (int y = 0; y < ySize; y++) {
    for (int x = 0; x < xSize; x++) {
      // get the color of the current pixel
      color pixel = extrude.get(x*meshSize, y*meshSize);
      // get the brighness value at a given coordinate
      val[x][y] = (brightness(pixel) / extrusion);

      println("The pixel at the coordinate x:" +  x +" y: " + y +" is: " + val[x][y]);
    }
  }
  cam = new PeasyCam(this, 0, 0, 0, 1000);
}
void draw() {
  // some styling settings
  background(0);
  fill(255);
  lights();
  translate(-width/2, -height/2, 0);// reposition the center
  // now draw the quads
  for (int y = 0; y < ySize-1; y++) {
    for (int x = 0; x < xSize-1; x++) {
      beginShape();
      vertex(x * meshSize, y*meshSize, val[x][y]);
      vertex(x * meshSize+meshSize, y*meshSize, val[x+1][y]);
      vertex(x * meshSize+meshSize, y*meshSize+meshSize, val[x+1][y+1]);
      vertex(x * meshSize, y*meshSize+meshSize, val[x][y+1]);
      endShape(CLOSE);
    }
  }
}

void keyPressed() {
  if (key == 's' || key == 'S'){
    saveFrame("out.png");
  }
}