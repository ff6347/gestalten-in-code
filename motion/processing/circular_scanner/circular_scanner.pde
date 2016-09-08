// simple sketch that creates a sort of scanner

//These are unused but got to have if you want to see the
//simple code where it comes from in the draw
//int x = 0;
int step = 100; // step is just used to for the circles in the background
//int radius = 300;
//float off = .0;

//Create some new scanners
ScannPoint scanner;
ScannPoint another_scanner;
// we also can have a list of scanners
ArrayList <ScannPoint> scanns;

void setup() {

  size(800, 800, P2D);

  colorMode(HSB, 360, 100, 100); // because HSB is cooler
  scanns = new ArrayList<ScannPoint>(); // init the list


  // ScannPoint(float _radius, color _c, float _w, float _amount, float _x)
  // radius is the radius of the orbit
  // color is the color of the ellipse
  // w is the width of the ellipse
  // amount is the amount the ellipse can differ from its orbit
  // x is the starting point of the ellipse

  scanner = new ScannPoint(300, color(260, 90, 90), 5, 100, 90);
  another_scanner = new ScannPoint(305, color(360, 90, 90), 5, 100, 90);

  // fill the list with new scan points
  for (int i = 100; i < 300; i+=5) {
    scanns.add(new ScannPoint(i, color(160, 90, 90), 5, random(10, 100), random(360)));
  }
  smooth(2);
}
void draw() {

  bg_and_ranges(); // clear the bg and draw the circles
  for (int i = 0; i < scanns.size(); i++) {
    scanns.get(i).run();
  }
  scanner.run(); // run one scanner
  another_scanner.run(); // run another
   // saveFrame("seq/out-####.png");
   // if(frameCount == 250) exit();
}