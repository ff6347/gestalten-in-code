size(500,500);
background(255);
int step = width/10;
for(int x = step; x < width;x+=step){
  for(int y = step; y < height; y+=step){
    if(x != 100 && x != 200 && x != 350 && y != 200 && y != 450){
    ellipse(x,y,width/20,width/20);
    }
  }
}