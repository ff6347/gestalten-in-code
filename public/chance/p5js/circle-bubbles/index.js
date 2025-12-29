function setup() {
   var canvas = createCanvas(500, 500);
       canvas.parent('sketch');
background(0);
strokeWeight(5);

  var a = 50;
  var b = 120;
  var c = 180;

stroke(255);
smooth();
noFill();
ellipse(a, a, a, a);
ellipse(a+100, a+100, a+100, a+100);
ellipse(b+100, b+100, b+100, b+100);
ellipse(c+100, c+100, c+100, c+100);


a = a + c;
b = height-b;

ellipse(a+100, a+100, a+100, a+100);
ellipse(b+100, b+100, b+100, b+100);
ellipse(c+300, c+300, c+300, c+300);
}

function draw() {

}
