

/**
 * Object can be transformed by fingers / TuioCursors.
 * @author Till Nagel
 * @author PDXIII
 */

public class TNObstacleObject extends TNTransformableObject{


	TuioCursor tuioCursor1 = null;
	TuioCursor tuioCursor2 = null;

	public Property property;

	public ArrayList <Repeller> ObstclsRepellerList;
	float grav = PApplet.pow(10,3);
	float radius;

	float difX;
	float difY;

	float oldAngle;
	float oldDist;

	float oldX;
	float oldY;

	public boolean isActive = false;
	public boolean changeState = false;

	public int time01 = 0;
	public int time02 = 0;
	public int activationDelay = 1000;
	String name;



	public TNObstacleObject(PApplet p, float offsetX, float offsetY, float width,
			float height) {
		super(p, offsetX, offsetY, width, height);
	}

	public TNObstacleObject(PApplet p, float offsetX, float offsetY, float width, float height, Property property) {
		super(p, offsetX, offsetY, width, height);
		this.property = property;
		this.name = property.getName();

	}

	public void internalDraw(){

		if(isActive){

			p.fill(style.activeColor);
			p.textFont(style.MisoBold72);
			p.text(name, 0,p.textAscent());
			float ascent = p.textAscent();

			super.width = p.textWidth(name);
			super.height = ascent;

//			initRepellers();

		}else{

			p.fill(style.inactiveCol);
			p.textFont(style.MisoBold72);
			p.text(name, 0,p.textAscent());
			float ascent = p.textAscent();
			super.width = p.textWidth(name);
			super.height = ascent;

			ObstclsRepellerList = new ArrayList<Repeller>();

			if(scale < 1){
				scale(1.005f);
			}
			if(scale > 1){
				scale(0.995f);
			}

//			if(angle > 0){
//				rotate(0.005f);
//			}
//			if(angle < 0){
//				rotate(-0.005f);
//			}

		}

		compareTime();

		if(changeState){

//			PApplet.println("changeState ");


			if (isActive && changeState){

				isActive = false;
				changeState = false;

			}

			if(!isActive && changeState){

				isActive = true;
				changeState = false;
			}

//			PApplet.println(isActive);

		}

	}

	public void setTime(){


		if (time01 > 0){

			time02 = p.millis();
		}

		if (time01 == 0){

			time01 = p.millis();
		}

	}


	public boolean compareTime(){

		int timeDif = time02 - time01;


		if(timeDif < activationDelay && timeDif > 10){

			changeState = true;
			time02 = 0;
			time01 = 0;
		}else{

			changeState = false;

		}

		if(timeDif > activationDelay){

			time02 = 0;
			time01 = 0;
		}

		return changeState;
	}

	private void initRepellers(){

		radius = height/2;

		int howManyRep = PApplet.ceil((width/ radius) +1);
		float howMuchSpace = width / howManyRep;

		ObstclsRepellerList = new ArrayList<Repeller>();

		for(int i = 1; i < howManyRep; i++){


			float repXpos = i*howMuchSpace;
			float repYpos = height/2;

			float[] repPos =  getScreenFromObjectPosition(repXpos, repYpos);

			PVector loc = new PVector(repPos[0], repPos[1]);
			ObstclsRepellerList.add(new Repeller(p, loc, grav, radius*scale, property));

		}
	}

	protected float getDistance(TuioCursor tuioCursor1, TuioCursor tuioCursor2) {
		return PApplet.dist(tuioCursor1.getScreenX(p.width), tuioCursor1.getScreenY(p.height),
				tuioCursor2.getScreenX(p.width), tuioCursor2.getScreenY(p.height));
	}

	protected float getAngleBetween(TuioCursor tuioCursor1, TuioCursor tuioCursor2) {
		return getAngleBetween(tuioCursor1.getScreenX(p.width), tuioCursor1.getScreenY(p.height),
				tuioCursor2.getScreenX(p.width), tuioCursor2.getScreenY(p.height));
	}

	public void addTuioCursor(TuioCursor tuioCursor) {
		if (tuioCursor1 == null) {
			tuioCursor1 = tuioCursor;

			oldX = tuioCursor1.getScreenX(p.width);
			oldY = tuioCursor1.getScreenY(p.height);



		} else if (tuioCursor2 == null) {
			tuioCursor2 = tuioCursor;

			oldAngle = getAngleBetween(tuioCursor1, tuioCursor2);
			oldDist = getDistance(tuioCursor1, tuioCursor2);

		} else {
			PApplet.println("Already 2 cursors in use for rotation. Omitting further ones.");
		}
	}

	public void removeTuioCursor(TuioCursor tuioCursor) {
		if (tuioCursor2 != null && tuioCursor2.getCursorID() == tuioCursor.getCursorID()) {
			tuioCursor2 = null;

		}

		if (tuioCursor1 != null && tuioCursor1.getCursorID() == tuioCursor.getCursorID()) {
			tuioCursor1 = null;
			// If second still is on object, switch cursors
			if (tuioCursor2 != null) {
				tuioCursor1 = tuioCursor2;
				tuioCursor2 = null;
				// Shall not jump after switching, so a "new" oldPos is stored for diff calc.
				oldX = tuioCursor1.getScreenX(p.width);
				oldY = tuioCursor1.getScreenY(p.height);

			}

			if (tuioCursor1 == null){
				setTime();
				}

		}
	}

	public void updateTuioCursor(TuioCursor tcur) {

		if(isActive){

			if (tuioCursor1 != null && tuioCursor2 != null) {
				// Two fingers: rotate and scale

				if (tuioCursor2.getCursorID() == tcur.getCursorID()) {
					centerX = tuioCursor1.getScreenX(p.width) - offsetX;
					centerY = tuioCursor1.getScreenY(p.height) - offsetY;
				} else {
					centerX = tuioCursor2.getScreenX(p.width) - offsetX;
					centerY = tuioCursor2.getScreenY(p.height) - offsetY;
				}

				float newAngle = getAngleBetween(tuioCursor1, tuioCursor2);
				float angle = newAngle - oldAngle;
				oldAngle = newAngle;
				rotate(angle);

				float newDist = getDistance(tuioCursor1, tuioCursor2);
				float newScale = newDist / oldDist;
				oldDist = newDist;
				scale(newScale);

			} else if (tuioCursor1 != null) {
				// One finger: move
				float x = tuioCursor1.getScreenX(p.width);
				float y = tuioCursor1.getScreenY(p.height);
				float dx = x - oldX;
				float dy = y - oldY;

				addOffset(dx, dy);


				oldX = x;
				oldY = y;
			}

		}

	}

	/**
	 * @return the property
	 */
	public synchronized Property getProperty() {
		return property;
	}

	/**
	 * @param property the property to set
	 */
	public synchronized void setProperty(Property property) {
		this.property = property;
	}

}