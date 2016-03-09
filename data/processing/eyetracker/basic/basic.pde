/**
 * A simple sketch for reading tsv files created by the tobii eyetracker @FH-Potsdam
 *
 * mostly based in the examples found here
 * http://www.processing.org/reference/loadTable_.html
 *
 */
Table table; // declare a table
int w, h; // for the size of the canvas
ArrayList <PVector> points; // will hold the GazePoints X/Y
void settings() {
  table = loadTable("rec05-data.tsv", "header, tsv");
  // get the size of the canvas from the MediaWidth and MediaHeight columns
  w = table.getInt(0, "MediaWidth");
  h = table.getInt(0, "MediaHeight");
  size(w, h);// now set the size depending on the media
}
void setup() {
  background(255);

  points = getPoints(table);
  // draw the lines with vertex
  noFill();

  beginShape();
  // loop all the points to get the single PVector
  for (int i = 0; i < points.size(); i++) {
    PVector p = points.get(i);
    vertex(p.x, p.y); // draw it
  }
  endShape();

  // now draw the points  
  fill(255);
  for (int i = 0; i < points.size(); i++) {
    PVector p = points.get(i);
    ellipse(p.x, p.y, 10, 10);// draw the single PVector
  }
}
void draw() {
  // nothing to see here. move along
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
    if (Float.isNaN(x) || x <= 0 || x > width) {
      continue;
    }
    if (Float.isNaN(y) || y <= 0 || y > height) {
      continue;
    }
    temp.add(new PVector(x, y));
  }
  return temp;
}