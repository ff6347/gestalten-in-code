void bg_and_ranges() {
  // delete the bg
  noStroke();
  fill(0, 10);
  rect(0, 0, width, height);
  // draw the circles in the bg
  stroke(128);
  noFill();
  for (int i = 1; i < 8; i++) {
    ellipse(width/2, height/2, (width - step* i), (width - step*i));
  }
}
