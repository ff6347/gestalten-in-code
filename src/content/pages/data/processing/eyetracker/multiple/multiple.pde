/**
 * A simple sketch for reading tsv files created by the tobii eyetracker @FH-Potsdam
 *
 * mostly based in the examples found here
 * http://www.processing.org/reference/loadTable_.html
 *
 */
// add the names off all your files in here
String [] tableFileNames = {
  "rec05-data.tsv", 
  "tobii-CSVExport-All-Data-noheader-nofilter.tsv"
};

ArrayList <Table> tables; // will hold all the tables we load
ArrayList <PVector> points; // will hold the GazePoints X/Y
boolean saveImage = false;
void setup() {

  size(1280, 1024);// now set the size depending on the media
  tables = getTables(tableFileNames);// load all the tables
  points = getPoints(tables);// load all the points from all the tables
  // draw the lines with vertex
  background(255);
  noFill();
  beginShape();
  // loop all the points to get the single PVector
  for (int i = 0 ; i < points.size();i++) {
    PVector p = points.get(i);
    vertex(p.x, p.y); // draw it
  }
  endShape();

  // now draw the points  
  fill(255);
  for (int i = 0 ; i < points.size();i++) {
    PVector p = points.get(i);
    ellipse(p.x, p.y, 10, 10);// draw the single PVector
  }
  
  if(saveImage){
    saveFrame("tracker-multiple.jpg");
    exit();
  }
}
void draw() {
  // nothing to see here. move along
}

// reads in all the filenames and returns a ArrayList of tables
ArrayList <Table> getTables(String [] filenames) {
  
  ArrayList <Table> temp = new ArrayList<Table>(); // temporary list
    // loop the filenames
  for (int i = 0; i < filenames.length;i++) {
    Table t =loadTable(filenames[i], "header, tsv"); // load one table
    temp.add(t); // add it to the list
  }
  return temp;// return the list
}

// get all the points from all the tables
// takes an arraylist of tables returns an arraylist of PVector
//
ArrayList <PVector> getPoints (ArrayList <Table> tbls) {
  
  ArrayList<PVector>temp = new ArrayList<PVector>(); // temp list
  
  // loop all the tables
  for (int i = 0; i < tbls.size();i++) {
    Table t = tbls.get(i);// isolate table
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
  }
  return temp;
}