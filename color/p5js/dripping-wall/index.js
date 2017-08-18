var WIDTH = 500,
  HEIGHT = 500,
  BACKGROUND = 240,
  COLOR_PALETTE = ['#69d2e7', '#a7dbd8', '#e0e4cc', '#f38630', '#fa6900'],
  MAX = 100,
  STROKES = 100;

var time = 1,
  particles = [],
  deltaX = 400,
  deltaY = 1000,
  strokeArray = [],
  palette = [];

class Particle {
  constructor(x = WIDTH / 2, y = HEIGHT / 2, radius = 10, rotation) {
    this.x = x,
            this.y = y,
            this.r = radius,
            this.rotation = 0;
  }

  render(color, delta) {
    fill(color);
    tint(255, 127);
    noStroke();
    ellipse(this.x, this.y, this.r, this.r);
  }

  rotate() {}
}

class Stroke {
  constructor(x, y, color) {
    this.particles = [],
            this.x = x,
            this.y = y,
            this.dx = x,
            this.dy = y,
            this.color = color;
  }

  render() {
    this.particles.map((particle, index) => {
      particle.render(this.color, this.dx);
    });

    this.dx += 0.006;
    this.dy += 0.006;
  }

  addParticle(deltaX, deltaY) {

    var fx = map(noise(this.dx * noise(cos(400) / 40) * noise(sin(1000) / 40)), 0, 1, 0, WIDTH);
    var fy = map(noise(this.dy), 0, 1, 0, HEIGHT);

    var dist = Math.sqrt((fx - this.x) * (fx - this.x) + (fy - this.y) * (fy - this.y));

    var maxSize = (x) => {
      if (x > 15) {
        return 15;
      }
      return x;
    };

    if (this.particles.length < 2) {
      this.particles.push(new Particle(fx, fy, 5, fx / fy * Math.PI * 2));
    } else {
      this.particles.push(new Particle(fx, fy, maxSize(map(dist, 4, 0, 0, 10)), fx / fy * Math.PI * 2));
    }

    this.x = fx;
    this.y = fy;
  }
}


function preload() {
  var input = [];

  for (var i = 0; i < STROKES; i++) {
    input.push('N');
  }


  var url = 'http://colormind.io/api/';
  var data = {
    model: 'default',
    input: input
  };

  var http = new XMLHttpRequest();

  http.onreadystatechange = () => {
    if (http.readyState == 4 && http.status == 200) {
      palette = JSON.parse(http.responseText).result;

      for (var i = 0; i < STROKES; i++) {
        strokeArray.push(new Stroke(
                    Math.random() * 800,
                    Math.random() * 800,
                    palette[Math.floor(Math.random() * 5)]
                ));
      }
    }
  };

  http.open('POST', url, true);
  http.send(JSON.stringify(data));
}

function setup() {
  var canvas = createCanvas(WIDTH, HEIGHT);
  canvas.parent('sketch');
  background(BACKGROUND);
}

function draw() {
  if (time > MAX) {
    noLoop();
  }

  background(BACKGROUND);

  if (true) {
    particles.push(new Particle(Math.random() * 800, Math.random() * 800));
  }

  for (var i = 0; i < strokeArray.length; i++) {
    strokeArray[i].addParticle(deltaX, deltaY);
    strokeArray[i].render();
  }

  time++;
}
