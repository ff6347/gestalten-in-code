

//Path Following
//Daniel Shiffman <http://www.shiffman.net>
//The Nature of Code, Spring 2009
/**
 * The Path the Particles can follow.<br>
 * a Path is a series of connected particles. They interact with the Repellers
 * and so... based on: <a href="http://www.shiffman.net/teaching/nature/"
 * target="blanc">Daniel Shiffman's Nature of Code</a>
 *
 * @author fabianthelbind
 *
 */
public class Path {

	/**
	 * A Path is an ArrayList of Particles (PVector objects)
	 *
	 */
	private ArrayList<Particle> ptclPoints;

	/**
	 * the PApplet
	 */
	private PApplet p;

	/**
	 * A path has a radius, i.e how far is it ok for the particle to wander off
	 */
	private float radius;

	/**
	 * builds a basic Path
	 *
	 * @param p
	 *            the PApplet
	 */
	public Path(PApplet p) {
		// Arbitrary radius of 20
		this.p = p;

		// points = new ArrayList<PVector>();
		ptclPoints = new ArrayList<Particle>();

	}

	/**
	 * builds a Path with an specific Radius around the pathline
	 *
	 * @param p
	 *            the PApplet
	 * @param radius
	 *            the radius around the path
	 */
	public Path(PApplet p, float radius) {
		this.p = p;
		this.radius = radius;
		// points = new ArrayList<PVector>();
		ptclPoints = new ArrayList<Particle>();

	}

	// Add a point to the path
	// public void addPoint(float x, float y) {
	// PVector point = new PVector(x,y);
	// points.add(point);
	// }

	/**
	 * Adds a point that behaves like a Particle to the path
	 *
	 * @param x
	 * @param y
	 * @see Class Particle Class
	 */
	public void addPointPtcl(float x, float y,int pathNum) {
		PVector pos = new PVector(x, y);
		// PVector vel = new PVector(0,0);
		Particle ptcl = new Particle(p, pos, false, true);
		ptcl.setPathNum(pathNum);

		ptclPoints.add(ptcl);

		// PVector point = new PVector(x,y);
		// points.add(point);
	}

	/**
	 * makes the points of the path move back to their origin if this is not
	 * called within every loop of the draw() the points of the path behave like
	 * normal Particle
	 *
	 */
	public void resetPointPtcls() {


		// p.fill(255);
		// p.ellipse(testPtcl.loc.x,testPtcl.loc.y,10,10);
		// p.println(dist/1000);
		// p.println(testPtcl.mass);

		Particle ptcl = null;
		float d;
		for (int i = 0; i < this.ptclPoints.size(); i++) {
			ptcl = this.ptclPoints.get(i);
			d = ptcl.getLoc().dist(ptcl.getOrigin());

			ptcl.seek(ptcl.getOrigin());

				if(d < 3f){
					ptcl.setMaxspeed(0.5f);
					ptcl.setMass(0.5f);
				}
				if(d > 3f){
					ptcl.setMaxspeed(0.7f);
					ptcl.setMass(0.5f);
				}


				if(d > 40){

				ptcl.setMaxforce(1f);
				ptcl.setMaxspeed(2f);

				}
				if (d > 200){

					ptcl.setMass(10f);
					ptcl.setMaxforce(ptcl.getMaxspeed()+0.2f);
					ptcl.setMaxspeed(13f);

				}


		}

	}

	/**
	 * @return ArrayList of Particle
	 */
	public ArrayList<Particle> getPtclPointList() {
		return this.ptclPoints;
	}

	// public int pathPoinsListSize(){
	// return points.size();
	// }
	//
	// public PVector getPathPointVector(int i){
	// return this.points.get(i);
	// }

	/**
	 * this returns the specific location of a Point of the Path
	 *
	 * @param i
	 *            to choose the point of the path
	 * @return Particle
	 */
	public Particle getPathPtclPointVector(int i) {
		return this.ptclPoints.get(i);
	}

	/**
	 * @return the ptclPoints
	 */
	public synchronized ArrayList<Particle> getPtclPoints() {
		return ptclPoints;
	}

	/**
	 * set the radius oarund the path
	 *
	 * @param radius
	 */
	public void setRadius(float radius) {
		this.radius = radius;
	}

	/**
	 * get the radius around the path
	 *
	 * @return the radius around the path
	 */
	public float getRadius() {
		return this.radius;
	}

	/**
	 * This is for showing the Path DEBUGGING
	 *
	 */
	public void ptclPathDisplay() {

		// Draw the radius as thick lines and circles

		// Draw end points
		for (int i = 0; i < ptclPoints.size(); i++) {
			PVector point = ptclPoints.get(i).getLoc();
			p.fill(style.superSoftWhite);
			p.noStroke();
			p.ellipse(point.x, point.y, this.radius * 2, this.radius * 2);
		}

		// Draw Polygon around path
		for (int i = 0; i < ptclPoints.size(); i++) {
			PVector start = ptclPoints.get(i).getLoc();
			// We're assuming path is a circle in this example
			PVector end = ptclPoints.get((i + 1) % ptclPoints.size()).getLoc();
			PVector line = PVector.sub(end, start);
			PVector normal = new PVector(line.y, -line.x);
			normal.normalize();
			normal.mult(this.radius);

			// Polygon has four vertices
			PVector a = PVector.add(start, normal);
			PVector b = PVector.add(end, normal);
			PVector c = PVector.sub(end, normal);
			PVector d = PVector.sub(start, normal);

			p.fill(style.superSoftWhite);
			p.noStroke();
			p.beginShape();
			p.vertex(a.x, a.y);
			p.vertex(b.x, b.y);
			p.vertex(c.x, c.y);
			p.vertex(d.x, d.y);
			p.endShape();
		}

		// Draw Regular Line
		p.stroke(style.superSoftWhite);
		p.strokeWeight(2);
		p.noFill();
		p.beginShape();
		for (int i = 0; i < ptclPoints.size(); i++) {
			PVector loc = ptclPoints.get(i).getLoc();
			p.vertex(loc.x, loc.y);
		}
		p.endShape(PApplet.CLOSE);

	}

	/**
	 * This is for showing the Path DEBUGGING
	 *
	 */
	public void simplePathDisplay() {

		// Draw the radius as thick lines and circles

		// Draw end points
		for (int i = 0; i < ptclPoints.size(); i++) {
			PVector point = ptclPoints.get(i).getLoc();
			p.fill(style.tmn_lightBlue);
			p.noStroke();
			p.ellipse(point.x, point.y, 10, 10);
		}

		// Draw Polygon around path

//		PVector start = null;
//		PVector end = null;
//		PVector line = null;
//		PVector normal = null;
//		PVector a = null;
//		PVector b = null;
//		PVector c = null;
//		PVector d = null;
//		for (int i = 0; i < ptclPoints.size(); i++) {
//			start = ptclPoints.get(i).getLoc();
//			// We're assuming path is a circle in this example
//			end = ptclPoints.get((i + 1) % ptclPoints.size()).getLoc();
//			line = PVector.sub(end, start);
//			normal = new PVector(line.y, -line.x);
//			normal.normalize();
//			normal.mult(this.radius);
//
//			// Polygon has four vertices
//			a = PVector.add(start, normal);
//			b = PVector.add(end, normal);
//			c = PVector.sub(end, normal);
//			d = PVector.sub(start, normal);
//
//			p.fill(Style.superSoftWhite);
//			p.noStroke();
//			p.beginShape();
//			p.vertex(a.x, a.y);
//			p.vertex(b.x, b.y);
//			p.vertex(c.x, c.y);
//			p.vertex(d.x, d.y);
//			p.endShape();
//		}

		// Draw Regular Line
		p.stroke(style.superSoftWhite);
//		p.strokeWeight(this.getRadius()*2);
		p.noFill();
		p.beginShape();
		PVector loc = null;
		for (int i = 0; i < ptclPoints.size(); i++) {
			loc = ptclPoints.get(i).getLoc();
			p.vertex(loc.x, loc.y);
		}
		p.endShape(PApplet.CLOSE);

	}

}