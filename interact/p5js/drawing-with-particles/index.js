/*eslint-disable*/
var agents = [];
var nottouched = true;
var once = false;
var col = null;
function setup() {
  var canvas = createCanvas(500, 500);
  canvas.parent('sketch');
  colorMode(HSB);
  col = color(random(360), 70, 90);
}

function draw() {
  if(nottouched == true){
    background(255);
    textAlign(CENTER);
    text('draw here and hit "s" to save an image', width/2, height/2);

  }
  if(once == false && nottouched == false){
    background(255);
    once = true;
  }
  for (var i = 0; i < agents.length; i++) {
    agents[i].run();
  }
}

function mouseDragged() {
  nottouched = false;
  agents.push(new Particle(mouseX, mouseY));
}

function keyPressed (){
  // console.log(keyCode);
  if(keyCode === 83 || keyCode === 16){
    // lower case and upper case s
    saveCanvas(canvas, 'out','png');
  }
}

function Particle(_x, _y) {
  this.x = _x;
  this.y = _y;
  this.color = col;
  this.display = function() {
    fill(this.color);
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