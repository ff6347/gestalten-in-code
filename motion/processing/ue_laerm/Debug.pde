

/**
 * this is for debbuging only and has no effect on the Application<br>
 *
 * @author fabianthelbind
 * @author PDXIII
 *
 *
 */
public class Debug {

  /**
   	 * for writing images if true
   	 *
   	 * @see #writeIMGs()
   	 *
   	 */
  public  boolean writeImg = false;
  /**
   	 * the PApplet
   	 */
  private  PApplet p;

  /**
   	 * a unique number for the image
   	 *
   	 * @see #writeIMGs()
   	 */
  private  int imgNum = 0;


  Debug (PApplet p_) {
    this.p = p_;
  }
  /**
   	 * to pass the PApplet to all Methods a static Class doesn't need a
   	 * Constructor
   	 *
   	 * @param p_
   	 *            the PApplet
   	 */
  public void setPAppletDebug(PApplet p_) {
    p = p_;
  }

  /**
   	 * write some images (TIff Sequenzes for videos)
   	 *
   	 * @see #imgNum
   	 * @see #writeImg
   	 * @see <a
   	 *      href="../tmnuelaerm/TmnUelaerm.html#keyReleased()"><code>keyReleased</code></a>
   	 */
  public void writeIMGs() {
    if (writeImg) {
      String sa = PApplet.nf(imgNum, 6);
      p.saveFrame("./bilder/ParticleSystem-" + sa + ".tif");
      imgNum++;
    }
  }

  /**
   	 * the position of the watchAParticle() Method
   	 *
   	 * @see #watchAParticle(ArrayList, ParticleSystem)
   	 */
  private PVector WAP_position = new PVector(800, 50);

  /**
   	 * this is for looking at one Particle
   	 *
   	 * @param ptclsList
   	 * @param ps
   	 *            instance of ParticleSystem
   	 * @see <a
   	 *      href="../particleSystem/ParticleSystem.html"><code>ParticleSystem</code></a>
   	 * @see <a href="../particleSystem/Particle.html"><code>Particle</code></a>
   	 * @see #drawMyPtclForce(PVector, Particle)
   	 */
  public void watchAParticle(ArrayList<Particle> ptclsList, 
  ParticleSystem ps) {

    Particle myPtcl = ptclsList.get(0);

    myPtcl.setColorCol1(150, 100, 100, 100);
    myPtcl.setColorCol2(150, 100, 100, 20);
    p.noFill();
    p.strokeWeight(1);
    p.stroke(style.textColorWhite);
    p.line(WAP_position.x - 7, WAP_position.y - 3, myPtcl.getLoc().x
      - myPtcl.getRadius(), myPtcl.getLoc().y - myPtcl.getRadius());
    p.stroke(150, 100, 100, 100);
    p.ellipseMode(PApplet.CENTER);
    p.ellipse(myPtcl.getLoc().x, myPtcl.getLoc().y, 10, 10);
    p.noFill();
    drawMyPtclForce(WAP_position, myPtcl);
  }

  /**
   	 *
   	 * this is for drawing a specific float or integer value on the screen used
   	 * in watchAParticle
   	 *
   	 * @param pos
   	 *            PVector the position for the Particles forces
   	 * @param myPtcl
   	 *            Particle to analyze
   	 * @see #watchAParticle(ArrayList, ParticleSystem)
   	 */
  private void drawMyPtclForce(PVector pos, Particle myPtcl) {

    p.textFont(style.MisoReg13);
    int lineheight = 14;

    makePtclTextWithShadow(pos, style.textColorBlk, lineheight, myPtcl);
    makePtclTextWithShadow(new PVector(pos.x - 1, pos.y - 1), 
    style.textColorWhite, lineheight, myPtcl);

    p.noStroke();
  }

  private void makePtclTextWithShadow(PVector pos, color col, 
  int lineheight, Particle myPtcl) {

    p.fill(col);
    p.text("The life of one Particle", (lineheight * 0) + pos.x, 0 + pos.y);
    p.text("MaxForce: " + myPtcl.getMaxforce(), 0 + pos.x, (lineheight * 1)+ pos.y);
    p.text("MaxSpeed: " + myPtcl.getMaxspeed(), 0 + pos.x, (lineheight * 2)
      + pos.y);
    p.text("Mass: " + myPtcl.getMass(), 0 + pos.x, (lineheight * 3) + pos.y);
    p.text("Gravity: " + myPtcl.getGravity(), 0 + pos.x, (lineheight * 4)
      + pos.y);
    if (myPtcl.getLifeTime() < 100000.0f) {
      p.text("Lifetime: " + myPtcl.getLifeTime(), 0 + pos.x, (lineheight * 5)
        + pos.y);
    }
    p.noFill();
  }

  /**
   	 * this is for drawing all the {@link Repeller#property} to the screen
   	 *
   	 * @param someRepellers
   	 *            ArrayList of {@link Repeller}
   	 * @see #drawRepellerData(Repeller)
   	 */
  public void watchARepellers(ArrayList<Repeller> someRepellers) {

    for (int j = 0; j < someRepellers.size (); j++) {
      Repeller myRepeller = someRepellers.get(j);
      myRepeller.setColor1(150, 100, 100, 100);
      myRepeller.setColor2(150, 100, 100, 50);
      drawRepellerData(myRepeller);
    }
  }

  /**
   	 * this is for drawing all data near the {@code Repeller}
   	 *
   	 * @param myRep
   	 *            A {@link Repeller}
   	 */
  private void drawRepellerData(Repeller myRep) {
    // TODO Auto-generated method stub
    p.textFont(style.MisoReg13);
    int lineheight = 16;
    p.noStroke();
    makeRepTextWithShadow(myRep.getLoc(), style.textColorBlk, lineheight, myRep.property);
    makeRepTextWithShadow(new PVector(myRep.getLoc().x - 1, myRep.getLoc().y - 1), 
    style.textColorWhite, lineheight, myRep.property);
    p.noFill();
  }

  private void makeRepTextWithShadow(PVector loc, color col, 
  int lineheight, Property property) {
    p.fill(col);
    // p.text("Data of this Repeller", loc.x +12, 0 + loc.y+12
    // +(lineheight*0));
    p.text("index: " + property.getIndex(), loc.x + 12, 0 + loc.y + 12
      + (lineheight * 0));
    p.text("Name: " + property.getName(), loc.x + 12, 0 + loc.y + 12
      + (lineheight * 1));
    p.text("Propertys : " + "Day " + " prvt:( "
      + property.valueByIndex(0, 0) + ") " + " pblc:( "
      + property.valueByIndex(0, 1) + ") " + " work:( "
      + property.valueByIndex(0, 2) + ") ", loc.x + 12, 0 + loc.y
      + 11 + (lineheight * 2));
    p.text("Propertys : " + "Nite " + " prvt:( "
      + property.valueByIndex(1, 0) + ") " + " pblc:( "
      + property.valueByIndex(1, 1) + ") " + " work:( "
      + property.valueByIndex(1, 2) + ") ", loc.x + 12, 0 + loc.y
      + 12 + (lineheight * 3));
  }

  /**
   	 * @param pathsList
   	 *            An {@code ArrayList} of {@link Path}
   	 */
  public void displayAllPaths(ArrayList<Path> pathsList) {

    for (int i = 0; i < pathsList.size (); i++) {

      pathsList.get(i).ptclPathDisplay();
    }
  }

  /**
   	 * Draw a Grid for adjustment
   	 */
  public void drawGrid() {

    float gridSize = 100;

    for (int i = 0; i < 100; i++) {
      p.strokeWeight(1);
      p.stroke(230);

      p.line(i * gridSize, 0, i * gridSize, p.height);
      p.line(0, i * gridSize, p.width, i * gridSize);

      p.noStroke();
    }
  }

  /**
   	 * draw the tuio Cursors
   	 *
   	 * @param tuioCursorList
   	 * @see java.util.ArrayList
   	 *
   	 */
  public void drawCursors(ArrayList<TuioCursor> tuioCursorList) {

    for (int i = 0; i < tuioCursorList.size (); i++) {
      TuioCursor tcur = (TuioCursor) tuioCursorList.get(i);
      p.stroke(100, 255, 255);
      p.noFill();
      p.ellipse(tcur.getScreenX(p.width), tcur.getScreenY(p.height), 10, 
      10);
    }
  }

  /**
   	 *
   	 * this is an overlay for not using the console draws the number of active
   	 * cursors on the screen
   	 *
   	 * @param tuioCursorList
   	 * @see java.util.ArrayList
   	 */
  public void drawCursorCount(ArrayList<TuioCursor> tuioCursorList) {

    p.noStroke();
    p.fill(style.textColorWhite);
    p.text(tuioCursorList.size(), 50, 50);
    p.noFill();
  }

  /**
   	 * this is an overlay for not using the console draws the
   	 * processing.frameRate on the screen
   	 */
  public void drawFrameRate() {

    p.noStroke();
    p.fill(style.textColorWhite);
    p.text("Framerate: " + p.frameRate, 50, 50);
    p.noFill();
  }

  /**
   	 * this is an overlay for not using the console draws the
   	 * processing.frameCount on the screen
   	 */
  public void drawFrameCount() {

    p.noStroke();
    p.fill(style.textColorWhite);
    p.text("Framecount: " + p.frameCount, 50, 70);
    p.noFill();
  }

  public void drawinfo() {
    this.drawFrameRate();
    this.drawFrameCount();
    p.noStroke();
    p.fill(style.textColorWhite);
    p.text("hit 'd' for debug overlays", 50, 90);
    p.text("hit 'g' for debug grid", 50, 110);
    p.text("hit 'a' for debug areas", 50, 130);
    p.text("hit 's' for to save an jpg image", 50, 150);
    p.text("hit 'i' for tiff sequence saving in point", 50, 170);
    p.text("hit 'o' for tiff sequence saving out point", 50, 190);
    p.text("hit 'c' for debug cursors", 50, 210);
    
    p.noFill();
  }
  /**
   	 * for writing single images on keystroke
   	 *
   	 * @param time
   	 */
  public void saveFrame(float time) {
    // TODO Auto-generated method stub
    p.saveFrame("./bilder/MyImg" + time + ".jpg");
  }
}