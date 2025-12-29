/*eslint-disable*/

var particles = [];
function setup() {
  var canvas = createCanvas(500,500);
  canvas.parent('sketch');
  for(var i = 0; i < 100;i++){
    var one_particle = new particle(random(width), random(height));
    particles.push(one_particle);
  }
}
function draw() {
  background(255,100);
  for(var j = 0; j < particles.length;j++){
    particles[j].display('hsl(203, 56%, 40%)');
    particles[j].update();
  }
  // particles[55].x = 10;
  // particles[55].y = 10;
  particles[55].display('limegreen');
}

function particle(_x, _y){
  this.x = _x;
  this.y = _y;
  this.display = function(col){
    fill(col);
    ellipse(this.x, this.y, 10, 10);
  }
  this.update = function (){
    this.x = constrain(this.x + random(-1,1), 0, width);
    this.y = constrain(this.y + random(-1,1), 0, height);
  }
}
