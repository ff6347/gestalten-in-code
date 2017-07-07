var ball;
var population;
var from;
var to;
var esize = 2;
var multiplkator = 4;

function setup () {
  //gradient from and to color
  from = color(204, 102, 0);
  to = color(0, 102, 153);
  createCanvas(500,500);
  canvas.parent('sketch'); 
  population = new Population();
  ball = new Ball();
}

function draw(){
  background(0)
  population.run();


}

function Population() {
  this.balls = [];
  this.popsize = width/multiplikator;

  for (var i = 0; i < this.popsize; i++){
    this.balls[i] = new Ball(i);
  }

  this.run = function() {
    for (var i = 0; i < this.popsize; i++){
      this.balls[i].show();
      this.balls[i].update();
    }
  }
}

function Ball(argument) {
  this.pos = createVector(argument*multiplikator,height/2)
  this.vel = p5.Vector.random2D();
  this.acc = createVector();
  // color of highlight
  this.color = 255

  this.show = function() {
     push();
     translate(this.pos.x, this.pos.y);
     rectMode(CENTER);
     noStroke();
     fill(this.color);
     ellipse(0,0,esize,noise(argument)*height);
     pop();
   }

   this.update = function() {
     value = map(argument,0,100,0,1)
    this.color = lerpColor(from, to, value);
    //light up the one you touch
    if((mouseX === this.pos.x) || this.pos.x ===mouseX-1 || this.pos.x ===mouseX+1){
      this.color = color(255,255,255);
    }
   }
}
