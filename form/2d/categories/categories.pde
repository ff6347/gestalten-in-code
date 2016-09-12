int borderRadius = 75;
size(500,500);
background(255);
fill(0);
noStroke();
rect(10,10,480,480,borderRadius,borderRadius,borderRadius,borderRadius);
fill(255);
rect(75,75,350,350,borderRadius,borderRadius,borderRadius,borderRadius);
fill(0);
ellipse(150,150,50,50);
rectMode(CENTER);
rect(275,150, 150, 50,borderRadius,borderRadius,borderRadius,borderRadius);
ellipse(150,250,50,50);
rect(275,250, 150, 50,borderRadius,borderRadius,borderRadius,borderRadius);

ellipse(150,350,50,50);
rect(275,350, 150, 50,borderRadius,borderRadius,borderRadius,borderRadius);

saveFrame("cats.png");