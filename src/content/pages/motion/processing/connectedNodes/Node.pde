// thew node class holdes the only the points
// the lines get caculated in the NodeSystem
class Node{
  
  
  PVector pos; // the node position
  PVector vel; // the velocity of the node
  float diam; // the diameter
  int cons = 0; // the connection he has
  
  // the constructor
  Node(PVector pos,float diam){
  this.pos = pos;
  this.diam = diam;
  // start with own velocity
  vel = new PVector(random(-2,2),random(-2,2));

  }

// draw the node
  void show(){ 
  ellipse(pos.x, pos.y, diam, diam);
  }
  
  // update the posiotn
    void update() {
    // Motion 101: Locations changes by velocity.
    pos.add(vel);
  }
  
  // check Edges makes them come in from the other side
void checkEdges() {

    if (pos.x > width) {
      pos.x = 0;
    } else if (pos.x < 0) {
      pos.x = width;
    } // X
    
    if (pos.y > height) {
      pos.y = 0;
    } else if (pos.y < 0) {
      pos.y = height;
    }// Y

  }// end checkEdges
}
