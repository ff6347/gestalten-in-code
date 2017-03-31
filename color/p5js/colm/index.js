col = {
  c1 : 20,
  c2 : 57,
  c3 : 84
}
var p1 = 0;
var p2 = 0;
var x = 62;
var y = 62;
var addf = 62;
var zero = 0;
function setup() {
  colorMode(HSB);
createCanvas(500,500);
background(57,9,85);
}

function draw() {
  noStroke();
  fill(col.c1,col.c2,col.c3);
  rect(p1,p2,x,y);
  x++;
   if(x>500){
   p2= p2+ 62;
   x= zero;
   }
//---------------------------------------------------
   
  if(p2==0){
    col.c1 = 20;
    col.c2 = 57;
    col.c3 = 84;
  }
  if(p2==62){
    col.c1 = 10;
    col.c2 = 52;
    col.c3 = 83;
  }
 
   if(p2==124){
     col.c1 = 7;
     col.c2 = 48;
     col.c3 = 72;
   }
   if(p2==186){
     col.c1 = 349;
     col.c2 = 45;
     col.c3 = 82;
   }
   if(p2==248){
     col.c1 = 338;
     col.c2 = 40;
     col.c3 = 66;
   }
   if(p2==310){
     col.c1 = 322;
     col.c2 = 33;
     col.c3 = 64;
   }
   
   if(p2==372){
     col.c1 = 220;
     col.c2 = 40;
     col.c3 = 33;
   }
   
  if (p2>372){ 
    background(57,9,85);
 
    p2= 0;
  }
  

}

