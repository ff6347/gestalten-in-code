size(500, 500);
background(255);
pushMatrix();
translate(width*0.25, height/2);
beginShape();
for(int i = 0; i < 360;i+= 360/5){
   vertex(cos(radians(i)) * 50, sin(radians(i))*50);
}
endShape(CLOSE);
popMatrix();
pushMatrix();
translate(width*0.75, height/2);
beginShape();
for(int i = 0; i < 360;i+= 360/random(10,23)){
   vertex(cos(radians(i)) * 50 + random(-10,10), sin(radians(i))*50 + random(-10,10));
}
endShape(CLOSE);
popMatrix();
saveFrame("out.png");