

/**
 * This Class is justz a tryout. esting to draw the background in a parallel thread<br>
 * doesn't work quite well
 * @author fabiantheblind
 *
 */
public class Background implements Runnable {

	Thread thread;

//	private boolean running; // Is the thread running? Yes or no?
//	private int wait; // How many milliseconds should we wait in between
//						// executions?
//	private String id; // Thread name
//	private int count; // counter

	/**
	 * PDXIII background Stuff
	 */
	private  float tinter;
	/**
	 * PDXIII background Stuff
	 */
	private  boolean tintBack = false;
	/**
	 * PDXIII background Stuff
	 */
	private  float tintMax = 60;
	/**
	 * PDXIII background Stuff
	 */
	private  float tintMin = 20;

	/**
	 * PDXIII background Stuff
	 */
	private  float tintSize = tintMax - tintMin;

	/**
	 * PDXIII background Stuff
	 */
	public PImage fadingBG;

	private PApplet parent;

	// Constructor, create the thread
	// It is not running by default
	public Background(PApplet parent, String s, PImage fadingBG) {
		//parent.registerDispose(this);
		// wait = w;
//		running = false;
//		this.id = s;
//		this.count = 0;
//		this.p = p;
		this.fadingBG = fadingBG;

	}
	  public void start() {
		    thread = new Thread(this);
		    thread.start();
		  }

	  public void run() {
		    // do something threaded here
		  backGround(parent);
		  }
	  public void stop() {
		    thread = null;
		  }

		  // this will magically be called by the parent once the user hits stop
		  // this functionality hasn't been tested heavily so if it doesn't work, file a bug
		  public void dispose() {
		    stop();
		  }


	private synchronized void backGround(PApplet parent){
//		parent.colorMode(PApplet.HSB, 360, 100, 100);
		parent.tint(220, 40 + tinter, 40 + tinter, 100);
		parent.image(fadingBG, 0, 0);
		if (tinter >= tintMax) {
			tintBack = true;
		}

		if (tinter <= tintMin) {
			tintBack = false;
		}

		if (!tintBack) {
			tinter += 0.2f;
		} else {
			tinter -= 0.2f;
		}

	}

}