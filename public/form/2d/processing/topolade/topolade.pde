// original code taken from
// https://github.com/topada/FHP-IO-topolade-algorithm
// by https://github.com/topada
// MIT Licensed
// port to processing by Fabian Morón Zirfas

void setup() {
  size(600, 600, P3D);
  noLoop();
}

void draw() {

  background(0);


  noFill();
  strokeWeight(2);
  stroke(255);


  float lines = 5;
  float zigs = 5;
  float areas = (lines - 1) * zigs;
  ArrayList <ArrayList<PVector>> lines_arr = new ArrayList<ArrayList<PVector>>();
  for (int i = 0; i < lines; i++) {
    lines_arr.add(zzline(i, lines, zigs));
  }

  for (int j = 0; j < lines_arr.size() -1; j++) {
    for (int k = 0; k < lines_arr.get(j).size() -2; k++) {
      line(lines_arr.get(j).get(k+1).x, lines_arr.get(j).get(k+1).y, lines_arr.get(j+1).get(k+1).x, lines_arr.get(j+1).get(k+1).y);
    }
    PImage l_texture = loadImage("lines.png");
    textureMode(IMAGE);
    int c = int(random(2));
    ArrayList<PVector> a = new ArrayList<PVector>();
    for (int l = 0; l < lines -1; l++) {
      if (c == 0 ) {
        c = 1;
      } else {
        c = 0;
      }

      for (int m = 1 + c; m < zigs + 1; m+=2 ) {
        beginShape();
        texture(l_texture);
        vertex(lines_arr.get(l).get(m-1).x, lines_arr.get(l).get(m-1).y, 0, 0);
        vertex(lines_arr.get(l).get(m).x, lines_arr.get(l).get(m).y, 0, 0);
        vertex(lines_arr.get(l +1).get(m).x, lines_arr.get(l +1).get(m).y, 0, 120);
        vertex(lines_arr.get(l +1).get(m-1).x, lines_arr.get(l +1).get(m-1).y, 0, 120);
        endShape(CLOSE);
        a.add(new PVector(l, m));
      }
    }
    int s = int(random(areas/2));
    PVector sun_area = a.get(s);
    int l = int(sun_area.x);
    int m = int(sun_area.y);
    if (m == zigs) {
      m = m;
    } else {
      m = m+1;
    }
    float x1 = lines_arr.get(l).get(m-1).x+lines_arr.get(l+1).get(m).x/2;
    float y1 =  lines_arr.get(l).get(m-1).x + lines_arr.get(l+1).get(m).y/2 ;
    PVector mid_alpha = new PVector( x1, y1);
    float x2 = lines_arr.get(l).get(m).x + lines_arr.get(l+1).get(m-1).x/2;
    float y2 =  lines_arr.get(l).get(m).y + lines_arr.get(l+1).get(m-1).y /2;
    PVector mid_beta  = new PVector(x2, y2);
    PVector sun_center = new PVector (mid_alpha.x+mid_beta.x/2, mid_alpha.y+mid_beta.y/2);
    float    sun_size = dist(mid_alpha.x, mid_alpha.y, mid_beta.x, mid_beta.y);
    fill(0);
    stroke(255);
    ellipse(sun_center.x, sun_center.y, sun_size, sun_size);
  }
      //saveFrame("out.png");
}


ArrayList<PVector> zzline(float i, float lines, float zigs) {
  ArrayList <PVector> list = new ArrayList<PVector>(); 
  float last_shift_h = 0;
  float max_shift_w = width / (lines * 2);
  float max_shift_h = height / (lines * 2);
  float start_h  = (i + 0.5 ) * (height / lines);
  beginShape();
  for (int j = 0; j < width + 1; j += width / zigs) {
    float shift_h = random(max_shift_h * -1, max_shift_h);
    float shift_w = random(max_shift_w * -1, max_shift_w);
    if (last_shift_h < 0 && shift_h < 0 || last_shift_h > 0 && shift_h > 0) {
      shift_h *= -1;
    }
    last_shift_h = shift_h;
    float y = int(start_h+shift_h);

    float x;
    if (j != 0 && j < width) {
      x = int(j + shift_w);
    } else {
      x = int(j);
    }
    vertex(x, y);
    list.add(new PVector(x, y));
  }
  endShape();
  return list;
}

void keyPressed() {
  if (key == 's' || key == 'S') {

  }
}
void mousePressed() {

  redraw();
};