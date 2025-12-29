function setup() {
  var canvas = createCanvas(500, 500);
  canvas.parent('sketch');
  colorMode(HSB);
  background(98);

  from = color(50, 90, 90);
  to = color(20, 90, 90);
  between = lerpColor(from, to, 0.5);

  noStroke();
  rectMode(CENTER);
  fill(from);
  rect(3 * width / 8, height / 2, width / 8, 3 * height / 8);
  fill(between);
  rect(width / 2, height / 2, width / 8, 3 * height / 8);
  fill(to);
  rect(5 * width / 8, height / 2, width / 8, 3 * height / 8);
}
