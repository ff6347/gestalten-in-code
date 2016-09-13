import java.util.Calendar;
int x1, y1, x2, y2;
int x3, y3, x4, y4;
int x5, y5, x6, y6;
int x7, y7, x8, y8;
int step = 25;
int numberoflines;

void setup() {
  colorMode(HSB, 360, 100, 100, 100);
  size(500, 500);
  numberoflines = width/step;
}

void draw() {
  smooth();
  background(360, 0, 100, 100);
  lines();
}


void lines() {
  stroke(120, 100, 100);
  for (int i = 0; i < numberoflines; i++) {
    x1 = 0;
    y1 = i * step ;
    x2 = width -  (i * step);
    y2 = height;

    x3 = i * step;
    y3 = 0;
    x4 = width;
    y4 = height  - (i * step);
    line(x1, y1, x2, y2);

    line(x3, y3, x4, y4);
  }

  for (int i = 0; i < numberoflines; i++) {
    x5 = i * step;
    y5 = 0;
    x6 = 0;
    y6  = (i * step);
    //    y6 = height -  (i * step);

    x7 = width;
    y7 = i* step;
    x8 = i*step;
    //    x8 = width - i*step;

    y8 =   height;
    line(x5, y5, x6, y6);
    line(x7, y7, x8, y8);
  }

  fill(180, 100, 100);

  for (int x = 0; x <= width; x +=step) {
    for (int y  = step/2; y <= height; y+=step) {
      ellipse(x, y, step/4, step/4);
    }
  }

  for (int x = step/2; x <= width; x +=step) {
    for (int y  = 0; y <= height; y+=step) {
      ellipse(x, y, step/4, step/4);
    }
  }
}


void keyPressed() {
  if (key == 's' || key == 'S') {
    String currentTime = timestamp();
    saveFrame("myImage_" + currentTime + ".png");
    println("Saved image " + "\"myImage_" + currentTime + ".png\"");
  }
}

// timestamp
String timestamp() {
  Calendar now = Calendar.getInstance();
  return String.format("%1$ty%1$tm%1$td_%1$tH%1$tM%1$tS", now);
}

