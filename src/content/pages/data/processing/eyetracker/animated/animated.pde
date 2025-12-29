/**
 * A simple sketch for reading tsv files created by the tobii eyetracker @FH-Potsdam
 * animated with image export
 *
 * mostly based in the examples found here
 * http://www.processing.org/reference/loadTable_.html
 *
 */
Table table; // declare a table
int w, h; // for the size of the canvas
ArrayList <PVector> points; // will hold the GazePoints X/Y
float x; // will hold the current x GazePoint
float y; // will hold the current y GazePoint
float px;  // will hold the previous x GazePoint
float py;  // will hold the previous y GazePoint
int count; // the points to not run into a NullPointer Exception
boolean saveImageSequence = false; // set this to true to save images
void settings() {
  table = loadTable("rec05-data.tsv", "header, tsv");
  // get the size of the canvas from the MediaWidth and MediaHeight columns
  w = table.getInt(0, "MediaWidth");
  h = table.getInt(0, "MediaHeight");
  size(w, h);// now set the size depending on the media
}
void setup() {

  // get all points from the table
  // see the getPoints method
  points = getPoints(table);
  background(255);
  // draw the lines with vertex
  //  noFill();

  //  beginShape();
  //  // loop all the points to get the single PVector
  //  for (int i = 0 ; i < points.size();i++) {
  //    PVector p = points.get(i);
  //    vertex(p.x, p.y); // draw it
  //  }
  //  endShape();

  // now draw the points  
  //  fill(255);
  //    for (int i = 0 ; i < points.size();i++) {
  //    PVector p = points.get(i);
  //    ellipse(p.x, p.y,10,10);// draw the single PVector
  //  }
}
void draw() {
  PVector p = points.get(count);// gwet one point
  x = p.x; // extract x
  y = p.y; // extract y
  if (count == 0) {
    // in the first loop we need to set the px,py
    // if not it it will draw a line from 0,0
    // so its just  line with no length
    px = x;
    py = y;
  }
  // the ellipse is draw over each line If you want to
  // have the line stop at the diameter of the ellipse
  // you need to push the matrix subtract the diameter 
  // from the vector and then set x,y

  line(x, y, px, py); // draw the line
  ellipse(x, y, 10, 10); // draw the ellipse

  px = x; // set the current x to the previous x
  py = y; // set the current y to the previous y
  // if you want to save images
  if (saveImageSequence) {
    saveFrame("tracker-#####.jpg");
  }

  count++;// increment the counter by one
  // constrain the counter
  // if not we get a nullpointer exception
  if (count == points.size() -1) {
    count = 0;// reset
    background(255);// delete the image
    // if you are saving a sequence
    if (saveImageSequence) {
      exit();// stop the programm
    }
  }
}
ArrayList <PVector> getPoints (Table t) {
  ArrayList<PVector>temp = new ArrayList<PVector>();
  // this is an Iterator loop see
  // http://processing.org/reference/javadoc/core/processing/data/TableRow.html
  // http://processing.org/reference/javadoc/core/processing/data/Table.html#rows()
  for (TableRow row : t.rows()) {
    // int timestamp = row.getInt("Timestamp"); // get an int from the current row
    // String number = row.getString("Number"); // get a string from the current row
    float x = row.getFloat("GazePointX"); // get a float from ...
    float y = row.getFloat("GazePointY"); // ...
    // if there are no values or if the values are out of the screen
    // skip them
    if (Float.isNaN(x) || x <= 0 || x > width) {
      continue;
    }
    if (Float.isNaN(y) || y <= 0 || y > height) {
      continue;
    }
    temp.add(new PVector(x, y));// add them to the temporary list
  }// end loop
  return temp;// return the list
}