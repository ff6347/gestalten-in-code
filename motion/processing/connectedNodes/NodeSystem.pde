class NodeSystem{
  
  ArrayList <Node> nodes; // a list of nodes
  float distance; // inintal distance

  // constructor 
  NodeSystem(float dis){
  this.distance = dis;
  
  }


  // this initalizes the nodes
  void init(int num){
    
    nodes = new ArrayList();
    
    // loop thru num
    for(int i = 0; i < num; i++){
      // make a random point 
      float x = random(10, width - 10);
      float y = random(10, height - 10);
      
      
      float diam = 1;// with diameter
      
      PVector pos = new PVector(x,y);// position into PVector
    Node n = new Node(pos,diam); 
    nodes.add(n); // add the new node to the list
    }
  
  }
  
  
  // run the nodesystem
  void run(){
 
    display();
    
  }

// calculate the connections and draw the lines
void calcConnections(Node n){
  
  int num = 0; // number of connections

  for(int i = 0; i < nodes.size(); i ++){
    
      PVector  v1 = n.pos; // position of the refrence positoin
      PVector  v2 = nodes.get(i).pos; // every other node
      float d =  PVector.dist(v1, v2);// calc the distance
  
      // now if the node already has some connections
      // make the diastance he can check higher
      if((d < distance + n.cons* 3) &&(d > 1)){
                     
        line(v1.x , v1.y,v2.x, v2.y); // draw the line
                num++; // increment num
      }
    // set the connections of the node to the num
  n.cons = num;
  }
  }
  
  // display the nodes and draw the connections
void display(){


       Node n = null;// keep it clear
       
  for(int i = 0; i < nodes.size(); i++){
    n = nodes.get(i);
    // call the functions of node
    n.checkEdges(); 
    calcConnections(n);
    n.diam = n.cons/3; // set the size
    n.show();// display
    n.update(); // and update position
    
    }
    
    
  } // end display
  
  
}
