function setup() {
    var canvas = createCanvas(500, 500);
    canvas.parent('sketch');

  links = 50;
  rechts = 450;
  r = 0;
  g = 0;
  b = 0;
}

function draw() {
  colR = random(0, r);
  colG = random(0, g);
  colB = random(0, b);

  r = r + random(0, 3);
  g = g + random(0, 3);
  b = b + random(0, 3);

  stroke(colR, 50, colB, 100);

  line(0, links, 500, rechts);

  links++
  rechts--

  if(links >= 400){
    noLoop();
  }
}
