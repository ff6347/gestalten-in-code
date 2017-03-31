var lines = [];


function setup() {
  createCanvas(500, 500);
  for (var l = 0; l < 650; l++) {
    lines[l] = {
      x: random(0, width),
      y: random(0, height),
      display: function() {
        stroke(random(125), random(250), random(125), 255);
        line(height/2, width/2, this.x, this.y);
      },
      move: function() {
        this.x = this.x + random(-3, 3);
        this.y = this.y + random(-3, 3);
      }
    }
  }

}

function draw() {
  background(0);
  for (var l = 0; l < lines.length; l++) {
    lines[l].move();
    lines[l].display();
  }
}
