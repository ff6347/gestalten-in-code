function setup() {
  var canvas = createCanvas(500, 500);
  canvas.parent('sketch');
  colorMode(HSB);
  background(98);
  noStroke();

  for (var x = 0; x <= width; x += random(0, width / 10)) {
    fill(15);
    ellipse(x, random(height / 4 - 20, height / 4 + 20), width / 20, height / 20);
    ellipse(x, random(height / 2 - 20, height / 2 + 20), width / 20, height / 20);
    ellipse(x, random(3 * height / 4 - 20, 3 * height / 4 + 20), width / 20, height / 20);
  }
}
