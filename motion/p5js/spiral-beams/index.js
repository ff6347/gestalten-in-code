    var angle = 0;
    var offset = 250;
    var scalar = 0;
    var speed = 0.25;
    
    function setup() {
      var canvas = createCanvas(500, 500);
      canvas.parent('sketch');
      colorMode(HSB, 260, 100, 100, 100);
      background (120, 25, 70, 100);
      stroke(255);
    }
    function draw() {
      var x = offset + cos(angle) * scalar;
      var y = offset + sin(angle) * scalar;
      var a = 90;
      ellipse(x, y, 6, 6);
      line(width/2, height/2, x, y);
      angle += speed;
      scalar += speed;
    }
