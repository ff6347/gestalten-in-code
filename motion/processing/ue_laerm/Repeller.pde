

/**
 * A basic Repeller class only circles that repell the Paeticles <br>
 * based on: <a href="http://www.shiffman.net/teaching/nature/"
 * target="blanc">Daniel Shiffman's Nature of Code</a>
 *
 * @author fabianthelbind
 * @see Class ParticleSystem Class
 * @see Class Particle Class
 *
 */
public class Repeller {

	/**
	 * the Gravitational Constant
	 */
	private float G;

	/**
	 * the location of the Repeller
	 */
	private PVector loc;

	/**
	 * the PApplet
	 */
	PApplet p;

	/**
	 * the size of a repeller
	 */
	private float radius = 10;

	/**
	 * For mouse interaction. Is the object being dragged?
	 */
	private boolean dragging = false; //
	/**
	 * For mouse interaction. Is the mouse over the ellipse?
	 */
	private boolean rollover = false; //
	/**
	 * For mouse interaction. holds the offset for when object is clicked on
	 */
	PVector drag;

	/**
	 * The first color of the Repeller
	 *
	 * @see Style#textColorBlk
	 */
	private color color1 = style.textColorBlk;
	/**
	 * The first color of the Repeller
	 *
	 * @see Style#ptclCol3
	 */
	private color color2 = style.ptclCol3;

	/**
	 * The {@link Property} Object of {@code this} {@code Repeller}
	 *
	 */
	public Property property;

	/**
	 * @param p
	 *            the PApplet
	 * @param x
	 *            the x-Coordinate
	 * @param y
	 *            the y-Coordinate
	 */
	public Repeller(PApplet p, float x, float y) {
		this.p = p;
		this.setLoc(new PVector(x, y));
		this.drag = new PVector(0, 0);
		this.G = PApplet.pow(10, 3);
	}

	/**
	 * @param p
	 *            the PApplet
	 * @param loc
	 *            the Position as a PVector
	 */
	public Repeller(PApplet p, PVector loc) {
		this.p = p;
		this.setLoc(loc);
		this.drag = new PVector(0, 0);
		this.G = PApplet.pow(10, 3);

	}

	/**
	 * @param p
	 *            the PApplet
	 * @param loc
	 *            the Position as a PVector
	 * @param radius
	 *            the size of the Repeller
	 */
	public Repeller(PApplet p, PVector loc, float radius) {
		this.p = p;
		this.setLoc(loc);
		this.drag = new PVector(0, 0);
		this.G = PApplet.pow(10, 3);
		this.radius = radius;

	}

	/**
	 * @param p
	 *            <code>PApplet</code>
	 * @param loc
	 *            the {@code PVector} location
	 * @param G
	 *            the gravitational Constante of the <code>Repeller</code>
	 * @param radius
	 *            the size of the Repeller
	 * @param property
	 *            the {@link Property} of the <code>Repeller</code>
	 */
	public Repeller(PApplet p, PVector loc, float G, float radius,
			Property property) {
		this.p = p;
		this.setLoc(loc);
		this.drag = new PVector(0, 0);
		this.G = G;
		this.radius = radius;
		this.property = property;
	}

	/**
	 * @param p
	 *            PApplet
	 * @param x
	 *            float x the x-Coordinate
	 * @param y
	 *            float y the y-Coordinate
	 * @param G
	 *            float G the Gravitational Constante :(
	 * @param radius
	 *            float radius the size
	 */
	public Repeller(PApplet p, float x, float y, float G, float radius) {
		this.p = p;
		this.setLoc(new PVector(x, y));
		this.drag = new PVector(0, 0);
		this.G = G;
		this.radius = radius;

	}

	/**
	 * Display the Repeller
	 *
	 */
	public void display() {
		p.stroke(color1);
		if (dragging)
			p.fill(style.textColorBlk);
		else if (rollover)
			p.fill(color2);
		else
			p.noFill();
		p.ellipse(getLoc().x, getLoc().y, radius * 2, radius * 2);
	}

	//
	/**
	 * Calculate a force to push particle away from repeller
	 *
	 * @param ptcl
	 *            the Particle to push
	 * @return PVector direction
	 */
	public PVector pushParticle(Particle ptcl) {
		PVector dir = PVector.sub(getLoc(), ptcl.getLoc()); // Calculate direction of
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

	/**
	 * Updates the location of the Repeller
	 *
	 * @param loc
	 */
	public void update(PVector loc) {

		this.setLoc(loc);
	}

	/**
	 * @param loc the loc to set
	 */
	public void setLoc(PVector loc) {
		this.loc = loc;
	}

	/**
	 * @return the loc
	 */
	public PVector getLoc() {
		return loc;
	}

	/**
	 * set the G field of the Repeller
	 *
	 * @param G_in
	 *            float right now it is like 10*10*10
	 * @see #G
	 */
	public void setG(float G_in) {
		this.G = G_in;
	}

	/**
	 * get the G field of the Repeller
	 *
	 * @return G
	 * @see #G
	 */
	public float getG() {
		return this.G;
	}

	/**
	 * Set radius field of the Repeller
	 *
	 * @param radiusIn
	 * @see #radius
	 */
	public void setRadius(float radiusIn) {
		this.radius = radiusIn;
	}

	/**
	 * get the radius field of the Repeller
	 *
	 * @return the radius
	 * @see #radius
	 */
	public float getRadius() {
		return this.radius;
	}

	/**
	 * Set the first color of the Repeller
	 *
	 * @param h
	 *            hue 0-360
	 * @param s
	 *            saturation 0-100
	 * @param b
	 *            brightness 0 -100
	 * @param a
	 *            alpha 0-100
	 */
	public void setColor1(int h, int s, int b, int a) {

		this.color1 = color(h, s, b, a);
	}

	/**
	 * Set the second color of the Repeller
	 *
	 * @param h
	 *            hue 0-360
	 * @param s
	 *            saturation 0-100
	 * @param b
	 *            brightness 0 -100
	 * @param a
	 *            alpha 0-100
	 */
	public void setColor2(int h, int s, int b, int a) {

		this.color2 = color(h, s, b, a);
	}

	// The methods below are for mouse interaction
	/**
	 * for mouse interaction
	 *
	 * @param mx
	 * @param my
	 */
	public void clicked(int mx, int my) {
		float d = PApplet.dist(mx, my, getLoc().x, getLoc().y);
		if (d < radius) {
			dragging = true;
			this.drag.x = getLoc().x - mx;
			this.drag.y = getLoc().y - my;
		}
	}

	/**
	 * Roll over the Repeller
	 *
	 * @param mx
	 * @param my
	 */
	void rollover(int mx, int my) {
		float d = PApplet.dist(mx, my, getLoc().x, getLoc().y);
		if (d < radius) {
			rollover = true;
		} else {
			rollover = false;
		}
	}

	/**
	 * easy to understand stop dragging he?
	 *
	 */
	public void stopDragging() {
		dragging = false;
	}

	/**
	 * Drag the Repeller
	 */
	public void drag() {
		if (dragging) {
			this.getLoc().x = p.mouseX + drag.x;
			this.getLoc().y = p.mouseY + drag.y;
		}
	}
}