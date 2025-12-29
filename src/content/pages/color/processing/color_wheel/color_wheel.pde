// a simple color wheel to better understand HSB
// uses controlP5 lib https://github.com/sojamo/controlp5
// author: @fabiantheblind
// license: Public Domain
//
import controlP5.*;
ControlP5 cp5; // controlP5 Object
int sat = 100; // this will hold the saturation
int brght = 100; // the brightness
int h = 0; // the hue
int diam; // thie diameter of the wheel will be set later
PVector center; // center of the canvas
color bg; // the background colr
void setup() {
  cp5 = new ControlP5(this); // new controller obj
  colorMode(HSB, 360, 100, 100, 100); // set to HSB A
  smooth(); // make it smooth
  size(500, 500); // set canvas

  // add a new slider for hue sat and brightness
  // we have a white bg so we must change the label color
  // also set the label
  cp5.addSlider("h")
    .setPosition(10, 20)
    .setRange(0, 360)
    .setLabel("HUE")
    .setColorLabel(color(360, 0, 0))
    ;
  cp5.addSlider("sat")
    .setPosition(10, 40)
    .setRange(0, 100)
    .setLabel("SATURATION")
    .setColorLabel(color(360, 0, 0))
    ;
  cp5.addSlider("brght")
    .setPosition(10, 60)
    .setRange(0, 100)
    .setLabel("BRIGHTNESS")
    .setColorLabel(color(360, 0, 0))
    ;

  diam = width/2 -50; // the size of the wheel
  bg = color(360, 0, 100); // set the background color
  center = new PVector(width/2, height/2); // center of the canvas
}

void draw() {
  background(bg); // draw the bg each frame
  pushMatrix(); // move everything
  translate(center.x, center.y); // to the center

  // create the wheel in a loop
  for (int i = 0; i < 361; i++) {
    // draw the longer line to see the selected hue
    strokeWeight(1);
    if (i == h ) {
      stroke(h, sat, brght); // set color
      // calc x cos/sin takes radians not degrees
      float temp_x = sin(radians(i)) * (diam + 10);// make it a bit longer
      float temp_y = cos(radians(i)) * (diam + 10); // make it a bit longer
      line(0, 0, temp_x, temp_y ); //
    }

    float x = sin(radians(i)) * diam; // calc x cos/sin takes radians not degrees
    float y = cos(radians(i)) * diam; // calc y

    stroke(i, sat, brght, 90);// set color for all lines
    line(0, 0, x, y); // draw the lines
  }
  popMatrix(); // move back
  fill(h, sat, brght);
  noStroke();
  rect(width - 20, 0,20,20);
  noFill();
}

void keyPressed(){
  if(key == 's' || key == 'S'){
    saveFrame("out.png");
  }
}