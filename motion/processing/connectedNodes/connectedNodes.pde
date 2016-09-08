// this algorithm is brute force
// needs something like sector based collision
import controlP5.*;
ControlP5 cp5;
int sliderValue = 10;
int distance = 10;
NodeSystem ns; // the System
int num = 1000; // number of nodes

color white;
color black;
color col1;
color col2;
color highlite;

void setup() {
  cp5 = new ControlP5(this);
  // change the original colors
  colorMode(HSB, 360, 100, 100, 100);
  white = color(360, 0, 100);
  black = color(360, 100, 0);
  col1 = color(126, 0, 70);  
  col2 = color(341, 0, 70);
  highlite = color(126, 20, 100);
  cp5.setColorForeground(col1);
  cp5.setColorBackground(black);
  //cp5.setColorLabel(color(360, 100, 0));
  //cp5.setColorValue(black);
  cp5.setColorActive(highlite);

  cp5.addSlider("distance")
    .setPosition(50, 50)
    .setRange(0, 20)
    .setValue(distance);
  background(white);  // bg for startup

  size(500, 500);
  // the starting distance for the calculation of the lines
  // create the NodeSystem with distance
  ns = new NodeSystem(distance);

  // frameRate(1);
  smooth(); // make it smooth
  // initalise all the nodes
  // if you put the init into the draw it calcs every loop new nodes
  ns.init(num);
}// end of setup

//
void draw() {


  //  distance = sliderValue;
  ns.distance = distance;
  // write a rect in the size of the sketch for smooth background clear
  noStroke();
  fill(white, 100);
  rect(0, 0, width, height);

  // run the node system
  stroke(black, 50);
  fill(white);
  ns.run();

  fill(white);
  noStroke();
  rect(0, 0, 250, 100);

  
  //  noLoop();
}

void keyPressed(){
  if(key == 's' || key == 'S'){
    saveFrame("out.png");
  
  }
}