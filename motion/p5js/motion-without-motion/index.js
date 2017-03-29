  function setup() {
      createCanvas(400,400);
      noStroke();
      colorMode(HSB, 360, 100, 100, 100);
      background(49,63,100);
      fill (348,63,100,20); 
      
      myEllipse (50,250);
      myEllipse (162.5,375);
      myEllipse (350,150);
      
      // - - - - - - Function - - - - - - 
      function myEllipse (xe, ye) {
      push();
      fill (348,63,100,100);
      ellipse (xe,ye,50,50);
      pop();
      }
      
      // - - - - - -  1st Ball - - - - - - 
      var x = 0;
      var y = 300;
      while (x<=50){
      ellipse (x,y,50,50);
      x +=12.5;
      y -=12.5;
      }
      
      // - - - - - -  2nd Ball - - - - - - 
      var a = 112.5;
      var b = 325;
      
      while (a<=162.5){
      ellipse (a,b,50,50);
     
      a +=12.5; 
      b +=12.5;
      }
      
      // - - - - - -  3rd Ball - - - - - - 
      var a = 300;
      var b = 200;
      while (a<=350){
      ellipse (a,b,50,50);
      a +=12.5;
      b -=12.5;
      }
      } // END SETUP 
      
      function draw() {
      }
      
      function mousePressed(){
      save('image.jpg');
      }
