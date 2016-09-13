// create a color palette
// using https://github.com/SvenWoltmann/color-thief-java
// we need the buffered image as well
// see http://forum.processing.org/one/topic/pimage-to-bufferedimage.html
import de.androidpit.colorthief.*;
import java.awt.image.BufferedImage;
ColorThief t; // new color thief object
PImage img; // our image
void setup() {
  img = loadImage("ldr.jpg");// load the image
  size(500, 500);// set the size based on image
  t = new ColorThief(); // init the color thief object
  // PImage to buffered
  BufferedImage bimg = (BufferedImage) img.getImage();
  // create the palette
  // a value of 5 will give you six colors
  int[][] palette = t.getPalette(bimg, 20);
  println(palette.length);
  // calc the sizes
  int step = width / palette.length;
  int y = 0;
  int x = img.width;
  int h = height;
  int w = step;
  noStroke(); // style
  // now loop the result
  // and display the colors
  for (int i = 0; i < palette.length; i++) {
    int r = palette[i][0];
    int g = palette[i][1];
    int b = palette[i][2];
    fill(r, g, b);
    rect(x, y, w, h);
    x+=step;
  }
  image(img, 0, 0);// and display the image
  saveFrame("out.png");
}
void draw() {
}

