/*eslint-disable*/
function Thing(_x, _y, _diam) {
  this.x = _x;
  this.y = _y;
  this.diam = _diam;
  this.over = false;

  this.display = function() {
    if (this.over === true) {
      fill('LightGreen');
    } else {
      fill(0);
    }
    ellipse(this.x, this.y, this.diam, this.diam);
  }

  this.isInside = function() {
    var d = dist(mouseX, mouseY, this.x, this.y);
    if (d > this.diam / 2) {
      this.over = true;
    } else {
      this.over = false;
    }
  }
  this.update = function() {
    this.x = this.x + random(-1, 1);
    this.y = this.y + random(-1, 1);
    this.x = constrain(this.x, 0, width);
    this.y = constrain(this.y, 0, width);
    this.diam = this.diam + random(-1, 1);
  }
}

var things = [];
function setup() {
  var canvas = createCanvas(500, 500);
  canvas.parent('sketch');
  var x = width / 2;
  var y = height / 2;
  var diam = 20;

  things.push(new Thing(x, y, diam));
  things.push(new Thing(x, 100, diam));
  things.push(new Thing(20, y, diam));
}

function draw() {
  background(255);
  for (var i = 0; i < things.length; i++) {
    things[i].isInside();
    things[i].display();
    things[i].update();

  }

}