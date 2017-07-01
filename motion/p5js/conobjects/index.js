// points on the canvas
var places = [-80, 200, 350 ];
// number of movers
var movers = [1,1,1]
var csize = 500;

function setup(){
  createCanvas(csize,csize);
  for(var i = 0; i < movers.length; i++){
  movers[i] = new Mover(places[i],places[i]);
  }
}
function draw(){
  background(51);
  for(var i = 0; i < movers.length; i++){
    movers[i].update();
  // Display the Mover
    movers[i].display();
    //ecken speichern
    liner();
  }
}

// connect Objects with lines
 function liner() {
   stroke(255);
   for(var i = 0; i < movers.length; i++){
     if(i < movers.length - 1){
       for(var j = 0; j < 4 ; j++){
         line(movers[i].location.x, movers[i].location.y, movers[i+1].location.x, movers[i+1].location.y);
       };
     }else if(i < movers.length){
       line(movers[i].location.x, movers[i].location.y, movers[0].location.x, movers[0].location.y);
     }
   }
  }

// the Object itself

  function Mover (x,y) {
    this.acceleration;
    this.maxspeed = 5;
    this.breite = 30;
    this.hoehe = 30;

    this.location = new p5.Vector(x, y);
    this.velocity = new p5.Vector(0,0);


    function setMag(vari) {
     normalize();
     mult(vari);
   }

    this.update = function() {
      var mouse = new p5.Vector(mouseX,mouseY);
      this.acceleration = p5.Vector.sub(mouse,this.location);
      // Set magnitude of acceleration
      this.acceleration.setMag(0.2);

      // Velocity changes according to acceleration
      this.velocity.add(this.acceleration);
      // Limit the velocity by topspeed
      this.velocity.limit(this.maxspeed);
      // Location changes by velocity
      this.location.add(this.velocity);
      // points to connect with lines
      this.ecke1 = new p5.Vector(0,0);
      this.ecke1.x = this.location.x;
    }


   this.display = function() {
      strokeWeight(1);
      fill(255);
      ellipse(this.location.x,this.location.y,this.breite, this.hoehe);
    }
  }
