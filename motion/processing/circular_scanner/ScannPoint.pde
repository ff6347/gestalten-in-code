// the scanner class
class ScannPoint {
  private float x = 0; // this is the point where we start on the circle
  private float off = 0.0;// this is for the noise the scann point takes
  private float n; // also for noise
  public float amount; // the amount it moves from its orbit
  public float radius; // the radius around the center
  public color c;// its color
  public float w; // its width

  // init 
  ScannPoint(float _radius, color _c, float _w, float _amount, float _x) {
    this.radius = _radius;
    this.c = _c;
    this.w = _w;
    this.amount = _amount;
    this.x = _x;
  }

  // update all its variables
  private void update () {
    this.x++;
    this.off+=.01;
    this.n = noise(this.off) * this.amount;
  }

  // display it
  private void display() {
    // push it to the center of the canvas
    pushMatrix();
    translate(width/2, height/2);// bring zero point to the center
   
   // calc the xy on the circle 
    float px = sin(radians(this.x%360))*(this.radius + this.n); 
    float py = cos(radians(this.x%360))*(this.radius + this.n);
    
    fill(this.c);// color
    ellipse (px, py, this.w, this.w );// draw it
    // pop matrix back
    popMatrix();
  }

  public void run() {
    update();
    display();
  }
}

