class ObjWriter {

  
    private int factor = 1;
    
public ObjWriter( int factor){

    this.factor = factor;
    
    }



public void write( ArrayList <PVector> verts){
        


  smooth();

  stroke(255);
  strokeWeight(1);
//  g2p.display(xoff, yoff, zoff);
    pushMatrix();
    translate((width/2), (height/2), 0);

    for (int i = 0; i < verts.size();i++) {
      PVector p = verts.get(i);
      float x = p.x *this.factor + (this.factor);
      float y = p.y *this.factor + (this.factor);
      float z = p.z *this.factor + (this.factor);
      point(x, y, z);

      //      drawPoints(x, y, z);
    }
    popMatrix();  // nothing happens here right now
  


    
  }

}
