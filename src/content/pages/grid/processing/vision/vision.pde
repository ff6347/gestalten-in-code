size(500, 500);
background(255);
int counter = 0;
int radius = 12;
int offset = 25;
int step = width/10;
for (int i = offset; i < width; i+=width/10) {
  strokeWeight(8);
  stroke(128);
  line(i, 0, i, height);
  line(0, i, width, i);
  if (counter%2 == 0) line(i -offset, 0, i + width - offset, height);
  if (counter%2 == 0) line(0, offset + step + i, width, i + height + offset + step);
  if (counter%2 == 0) line( i +offset, 0, 0, i + offset);
  if (counter%2 == 0) line( width, i + offset, i + offset, height);

  counter++;
}
fill(10);
strokeWeight(1);
stroke(255);

for (int x = offset; x < width; x += 200) {
  for (int y = offset; y < height; y += 100) {
    ellipse(x, y, radius, radius);
  }
}

//saveFrame("out.png");