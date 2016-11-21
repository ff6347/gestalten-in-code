size(500,500);
noFill();
background(255);
translate(width/2, height/2);
arc(0, 0, width/4, width/4, radians(-10), radians(310), OPEN);

line(cos(radians(150)) * 40,
sin(radians(150)) * 40,
cos(radians(330)) * 200,
sin(radians(330)) * 200);

line(cos(radians(150)) * 80,
sin(radians(150)) * 80,
cos(radians(150)) * 200,
sin(radians(150)) * 200);
saveFrame("out.png");