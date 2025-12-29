background(255);
smooth();
size(500, 500);
translate(width/2, height/2);
randomSeed(1000);
int off = width/4;
int r = 10;
quad(
  -off + random(-r, r), 
  -off + random(-r, r), 

  off + random(-r, r), 
  -off + random(-r, r), 

  off + random(-r, r), 
  off + random(-r, r), 

  -off + random(-r, r), 
  off + random(-r, r)
  );
  
  saveFrame("out.png");