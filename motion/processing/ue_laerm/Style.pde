

/**
 * Here we make all the color and text stuff centralized. Its like a CSS<br>
 *
 * @author fabiantheblind
 *
 */
public class Style {

  /**
   * the PApplet
   */
  private  PApplet p;

/**
 * colors
 */
  public color ptclCol1;
  public color ptclCol2;
  public color ptclCol3;
  public color tmn_green;
  public color tmn_lightBlue;
  public color tmn_blue;
  public color tmn_darkBlue;
  public color tmn_lightRed;
  public color tmn_red;
  public color tmn_darkRed;
  public color tmn_lightLilac;
  public color tmn_lilac;
  public color tmn_darkLilac;
  public color superSoftWhite;
  public color superSoftGrey;
  public color activeColor;
  public color inactiveCol;
  public color tintingH;

  /**
   * PDXIII background Stuff
   */
  public  float tinter;
  /**
   * PDXIII background Stuff
   */
  public  boolean tintBack = false;
  /**
   * PDXIII background Stuff
   */
  public  float tintMax = 60;
  /**
   * PDXIII background Stuff
   */
  public  float tintMin = 20;

  /**
   * PDXIII background Stuff
   */
  public float tintSize = tintMax - tintMin;

  /**
   * PDXIII background Stuff
   */
  public float tintingStep = 0.2f;
  /**
   * PDXIII background Stuff
   */
  public PImage fadingBG;
  /**
   * If you wan't the Text white
   */
  public int textColorWhite;

  /**
   * if u want it black
   */
  public int textColorBlk;

  /**
   * the color of the clearscreen
   *
   * @see <a
   *      href="../tmnuelaerm/TmnUELaerm.html#clearScreen()"><code>TMN_UE_Laerm.clearScreen()</code></a>
   */
  public int clsColor;

   int size = 40;
  /**the Size of the path when 9 paths
   *
   */
  public int[] pathsSize9 = { size, size*2, size*3, size*4, size*5, size*6, size*7, size*8, size*9 };

   int a = 30;
   int b = 40;
  /**
   * the radius around the path when 9 paths
   */
  public int[] pathsRadius9 = { a, b, a, a, b, a,a, b, a};

  /**
   * the Size of the path when 3 paths
   *
   */
  public int[] pathsSize3 = { 100, 250, 360};

   /**
   * the radius around the path when 3 paths
   */
  public int[] pathsRadius3 = { 60, 70, 60};


  /**
   * to set the PApplet for the whole Class
   *
   * @param _p
   */

  Style(PApplet _p) {
    this.p = _p;
  }

  public PFont MisoBold11;
  public PFont MisoReg13;
  public PFont MisoBold18;
  public PFont MisoBold36;
  public PFont MisoBold72;
  public PFont MisoBold144;

  /**
   * Create all colors and stuff
   */
  public void create() {
    this.p.colorMode(PApplet.HSB, 360, 100, 100);

    // colors
    this.ptclCol1 = color(0, 0, 100, 100);
    this.ptclCol2 = color(0, 100, 0, 100);
    this.ptclCol3 = color(360, 0, 0, 100);
    this.tmn_green = color(107, 100, 100);
    this.tmn_lightBlue = color(210, 10, 100, 80);
    this.tmn_blue = color(210, 50, 100, 80);
    this.tmn_darkBlue = color(210, 90, 100, 80);
    this.tmn_lightRed = color(20, 10, 100, 80);
    this.tmn_red = color(20, 50, 100, 80);
    this.tmn_darkRed = color(20, 90, 100, 80);
    this.tmn_lightLilac = color(280, 10, 100, 80);
    this.tmn_lilac = color(280, 50, 100, 80);
    this.tmn_darkLilac = color(280, 90, 100, 80);
    this.textColorWhite = color(255, 0, 100, 100);
    this.textColorBlk = color(255, 0, 0, 100);
    this.superSoftWhite = color(0, 0, 100, 5);
    this.superSoftGrey = color(0, 0, 20, 5);
    this.activeColor = color(0);
    this.inactiveCol = color(0, 0,0,23);
    this.tintingH = 220;
    this.clsColor = color(255, 100, 0, 100);

    // PDXIII TUIO Stuff
    // enable on system installed fonts
//    this.p.hint(PApplet.ENABLE_NATIVE_FONTS);
    MisoBold11 = this.p.createFont("Miso-Bold", 11);
    MisoReg13 = this.p.createFont("Miso", 13);
    MisoBold18 = this.p.createFont("Miso-Bold", 18);
    MisoBold36 = this.p.createFont("Miso-Bold", 36);
    MisoBold72 = this.p.createFont("Miso-Bold", 72);
    // MisoBold144 = this.p.createFont("Miso-Bold", 144);

    // PDXIII background Stuff
    fadingBG = this.p.loadImage("fadingBG.png");



    // int[] pathsSize = { 100, 250, 360};//, 230, 250, 270, 340, 360, 380
    // };
    // int[] pathsRadius = { 60, 70, 60};//, 20, 60, 30, 20, 60, 30 };
  }

  public boolean switchTime(boolean day) {

    if (style.tinter > style.tintSize / 2 + style.tintMin) {
      day = true;
    } else {
      day = false;
    }
    return day;

  }

  public boolean switchPath(boolean day, boolean switchP) {

    if (frameCount % (style.tintSize) == 0) {
      switchP = true;
      return switchP;
    } else {
      switchP = false;
      return switchP;
    }
  }

  public void theBackground() {

    // if (Style.tinter > Style.tintSize / 2 + Style.tintMin) {
    // DAY = true;
    // switchPath = true;
    // } else {
    // DAY = false;
    // switchPath = true;
    // }

    int a = PApplet.ceil(tinter);
    this.p.tint(style.tintingH, 0, 40 + tinter,70);

//    inactiveCol = this.p.color(Style.tintingH, 0,  a + 20);
                fadingBG.resize(displayWidth, displayHeight);

    this.p.image(fadingBG, 0, 0);
    if (tinter >= tintMax) {
      tintBack = true;
    }

    if (tinter <= tintMin) {
      tintBack = false;
    }

    if (!tintBack) {
      tinter += tintingStep;
    } else {
      tinter -= tintingStep;
    }

  }

  /**
   * A Clear Screen Method writes a
   * {@code processing.core.PApplet.rect(float, float, float, float)} every
   * Frame
   *
   * @deprecated
   */
  public void clearScreen() {
    this.p.noStroke();
    this.p.fill(style.clsColor);
    this.p.rect(0, 0, this.p.width, this.p.height);

  }

  /**
   * PDXIII background Stuff
   *
   * @param tinter
   * @deprecated
   */
  void drawBG(float tinter) {

    // PDXIII background Stuff
    this.p.tint(tinter, 255, 255, 100);
    this.p.image(style.fadingBG, 0, 0);
    tinter += 0.5f;
    if (tinter > 360) {
      tinter = 0;
    }
    // end PDXIII background Stuff

  }
}