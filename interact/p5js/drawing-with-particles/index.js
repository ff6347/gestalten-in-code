/*eslint-disable*/
var agents = [];
function setup() {
  var canvas = createCanvas(500, 500);
  canvas.parent('sketch');
  text("draw on me", 10, 15);
}

function draw() {
  for (var i = 0; i < agents.length; i++) {
    agents[i].run();
  }
}

function mouseDragged() {
  agents.push(new Particle(mouseX, mouseY));
}

function Particle(_x, _y) {
  this.x = _x;
  this.y = _y;
  this.display = function() {
    fill(255, 100, 0);
    push();
    translate(this.x, this.y);
    ellipse(0, 0, 10, 10);
    pop();
  };
  this.move = function() {
    this.x = this.x + random(-1, 1);
    this.y += random(-1, 1);

    this.x = constrain(this.x, 0, width);
    this.y = constrain(this.y, 0, height);
  };
  this.run = function() {
    this.display();
    this.move();
  };
}
// END OF CLASS