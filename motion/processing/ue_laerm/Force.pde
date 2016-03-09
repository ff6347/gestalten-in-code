
/**
 *
 * A basic force class based on Repeller <br>
 * based on: <a href="http://www.shiffman.net/teaching/nature/"
 * target="blanc">Daniel Shiffman's Nature of Code</a>
 *
 * @author fabianthelbind
 * @see Class ParticleSystem Class
 * @see Class Particle Class
 *
 */
public class Force extends Property{

	/**
	 * the Gravitational Constant
	 */
	private float G;


	/**
	 * the location where the Force happens
	 */
	private PVector loc;

	/**
	 * the PApplet
	 */
	private PApplet p;

	/**
	 * the size of a force
	 */
	private float radius = 10;

	private PVector repel;


	public Force(PApplet p,int index, String name, int[][] affectionProps,
			PVector loc, float radius) {
		super(index, name, affectionProps);
		this.p = p;
		G = PApplet.pow(10,3);

		this.loc = loc;
		this.p = p;
		this.radius = radius;
		this.repel = new PVector(0, 0);

	}

//	public Force(int index, String name, int[][] affectionProps) {
//		super(index, name, affectionProps);
//		// TODO Auto-generated constructor stub
//	}


	/**
	 * @return the g
	 */
	public synchronized float getG() {
		return G;
	}

	/**
	 * @return the loc
	 */
	public synchronized PVector getLoc() {
		return loc;
	}

	/**
	 * @return the p
	 */
	public synchronized PApplet getP() {
		return p;
	}

	/**
	 * @return the repel
	 */
	public synchronized PVector getRepel() {
		return repel;
	}

	/**
	 * @param g the g to set
	 */
	public synchronized void setG(float g) {
		G = g;
	}

	/**
	 * @param loc the loc to set
	 */
	public synchronized void setLoc(PVector loc) {
		this.loc = loc;
	}

	/**
	 * @param p the p to set
	 */
	public synchronized void setP(PApplet p) {
		this.p = p;
	}

	/**
	 * @param radius the radius to set
	 */
	public synchronized void setRadius(float radius) {
		this.radius = radius;
	}

	/**
	 * @param repel the repel to set
	 */
	public synchronized void setRepel(PVector repel) {
		this.repel = repel;
	}

	public PVector pushParticle(Particle ptcl) {
		PVector dir = PVector.sub(loc, ptcl.getLoc()); // Calculate direction of
													// force
		float d = dir.mag(); // Distance between objects
		dir.normalize(); // Normalize vector (distance doesn't matter here, we
							// just want this vector for direction)
		d = PApplet.constrain(d, 5, 100); // Keep distance within a reasonable
											// range
		float force = -1 * G / (d * d); // Repelling force is inversely
										// proportional to distance
		dir.mult(force); // Get force vector --> magnitude * direction
		return dir;
	}

	public float getRadius() {
		return this.radius;
	}

	/**
	 *
	 * @param time
	 *            day or nite represented by 0(as day) 1(as nite)
	 * @param space
	 *            private public or work represented by 0(private) 1(public)
	 *            2(work)
	 * @return a {@code float} value
	 * @see <a
	 *      href="./util/XMLImporter.html#ObjectPropertys(int id XMLElement root)">
	 *      XMLIMPORTER</a>
	 */
	public int valueByIndex(int time, int space) {
		return getAffectionProps()[time][space];
	}
}