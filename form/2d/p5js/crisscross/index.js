function setup() {
var a = 150;
var canvas = createCanvas(500,500);
canvas.parent('sketch');

background(255);
fill(0);
rect(350,0, a,a);
rect(350,350,a,a);
rect(0,0,a,a);
rect(0,350,a,a);
}

function draw() {
fill(255,255,255);
rectMode(CENTER);
noStroke();
rect(width/2,height/2,300,300);
}
