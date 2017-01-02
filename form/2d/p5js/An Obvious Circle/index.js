function setup() {
 var canvas = createCanvas(500, 500); 
  canvas.parent('sketch');
}

function draw() {
  
  var a = 0;
  var b = 200;
  
  noStroke();
  fill(60);
  
  ellipse(b,b,b+150,b+150);
  
  strokeWeight(30);
  stroke(255);
  
  line(a,b-100,b*2,b);
  line(a,b,b*2,b-30);
  line(a,b+70,b*2,b+110);
  line(a,b-140,b*2,b/4);
  
  strokeWeight(2);
  
  line(b-20,b*2,b+100,a);
  line(b-5,b*2,b+70,a);
  line(b-10,b*2,b+80,a);
  line(b-25,b*2,b+10,a);
  line(b-70,b*2,b-170,a);
  line(b-140,b+130,b-40,a);
}
