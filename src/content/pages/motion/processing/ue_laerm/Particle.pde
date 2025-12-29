
/**
 * The Particles<br>
 * There are different kind of particles. Simple ones and complexer ones.<br>
 * check the different constructors. all the fields can be set later during
 * runtimme<br>
 * based on: <a href="http://www.shiffman.net/teaching/nature/"
 * target="blanc">Daniel Shiffman's Nature of Code</a>
 *
 * @author fabiantheblind
 * @version 0.96
 */
public class Particle {

	/**
	 * the PApplet
	 *
	 */
	private PApplet p;

	/**
	 * the location of the particle
	 */
	private PVector loc;

	/**
	 * the velocity of the particle
	 */
	private PVector vel;

	/**
	 * the acceleration of the particle
	 */
	private PVector acc;

	/**
	 * the gravity of the particle.<br>
	 * it mostly affects the emitter particles<br>
	 * ore when the particles have no path to follow
	 *
	 * @see ParticleSystem#addParticleEmitter(boolean)
	 */
	private float gravity = 0.0f;

	/**
	 * the maximum steering force of the particle
	 */
	private float maxforce = 0.5f;
	/**
	 * the maximum speed of the particle
	 */
	private float maxspeed = 1.0f;

	/**
	 * the radius of the particle.<br>
	 * the particle has no ellipse right now but this is still needed for
	 * collision
	 *
	 * @see #display()
	 */
	private float radius;// = 5f; // radius

	/**
	 * the time a particle lifes.<br>
	 * We set it realy high so they dont disapper. It is usefull if you wan't to
	 * use the emitter in the particlesystem
	 *
	 * @see Class ParticleSystem Class
	 * @see ParticleSystem#addParticleEmitter(boolean)
	 * @see ParticleSystem#setEmitterOrigin(PVector)
	 * @see #run()
	 * @see #update()
	 * @see #getALife()
	 */
	private float lifeTime = 100000.0f; // the lifetime of an Particle

	/**
	 * The higher the mass of an particle the lesser the particles get pushed by
	 * <code>Repeller</code><br>
	 * may never be real 0 i think (or at startup) set it to 0.00000001f
	 *
	 * @see <a
	 *      href="Repeller.html#pushParticle(particleSystem.Particle)"><code>Repeller.pushParticle(Particle)</code></a>
	 */
	private float mass = 0.5f; //

//	/**
//	 * to check if an particle should get affected by the repellers or not
//	 */
//	private boolean affection;

	/**
	 * if this is true the particle will not be drawn to the screen<br>
	 * and the other particles dont steer around them
	 *
	 * @see <a href="../tmnuelaerm/TmnUELaerm.html#draw()">it happens in
	 *      <code>TMNUelaerm.draw()</code></a>
	 */
	private boolean hidden;
	/**
	 * the number of the path to follow. This is specially if you have more than
	 * one path. so the particle can switch between paths
	 */
	private int pathNum;

	/**
	 * the particle knows where he originated.<br>
	 * this is for the paths points They are also particles<br>
	 *
	 * @see <a
	 *      href="Path.html#resetPointPtcls()"><code>Path.resetPointPtcls()</code></a>
	 */
	private final PVector origin;

	// some graphical stuff
	/**
	 * the first color of the Particle
	 *
	 * @see Style#ptclCol1
	 */
	private color col1 = style.ptclCol1;
	/**
	 * the second color of the Particle
	 *
	 * @see Style#ptclCol2
	 */
	private color col2 = style.ptclCol2;

//	/**
//	 * the third color of the Particle
//	 *
//	 * @see Style#ptclCol3
//	 */
//	private int col3 = Style.ptclCol3;

	/**
	 * This is the Master Constructor. you can also set all these parameters at
	 * runtime
	 *
	 * @param p
	 *            the PApplet
	 * @param loc
	 *            the location
	 * @param vel
	 *            the velocity
	 * @param r
	 *            the radius
	 * @param ms
	 *            the maxspeed
	 * @param mf
	 *            the maxforce
	 * @param numOfPaths
	 *            the path to follow
	 * @param affection
	 *            should it get affected or not
	 * @param hidden
	 *            is it a hidden particle (see Path)
	 */
	public Particle(PApplet p, PVector loc, PVector vel, float r, float ms,
			float mf, int pathNum, boolean affection, boolean hidden) {
		this.p = p;
		this.loc = loc.get();
		this.vel = vel;
		this.radius = r;
		this.maxspeed = ms;
		this.maxforce = mf;
		this.acc = new PVector(0, 0);
		this.vel = new PVector(0, 0);
		this.hidden = hidden;
		this.origin = new PVector(loc.x, loc.y);
		this.pathNum = pathNum;

	}

	/**
	 * same as the Master constructor but without path to follow (can be set
	 * later, or there is just one pathto follow)
	 *
	 * @param p
	 * @param loc
	 * @param vel
	 * @param r
	 * @param ms
	 * @param mf
	 * @param affection
	 * @param hidden
	 */
	public Particle(PApplet p, PVector loc, PVector vel, float r, float ms,
			float mf, boolean affection, boolean hidden) {
		this.p = p;
		this.loc = loc.get();
		this.vel = vel;
		this.radius = r;
		this.maxspeed = ms;
		this.maxforce = mf;
		this.acc = new PVector(0, 0);
		this.vel = new PVector(0, 0);
		this.hidden = hidden;
		this.origin = new PVector(loc.x, loc.y);
	}

	/**
	 * Same as the Master Constructor but but without maxspeed and maxforce
	 *
	 * @param p
	 * @param loc
	 * @param vel
	 * @param r
	 * @param affection
	 * @param hidden
	 */
	public Particle(PApplet p, PVector loc, PVector vel, float r, int pathNum,
			boolean affection, boolean hidden) {
		this.p = p;
		this.loc = loc.get();
		this.vel = vel;
		this.radius = r;
		this.acc = new PVector(0, 0);
		this.vel = new PVector(0, 0);
		this.lifeTime = 100000.0f;
		this.origin = new PVector(loc.x, loc.y);
		this.hidden = hidden;
		this.pathNum = pathNum;
	}

	/**
	 * this is the particle for the ParticleSystem Emitter
	 *
	 * @param p
	 * @param loc
	 * @param affection
	 * @param hidden
	 */
	public Particle(PApplet p, PVector loc, boolean affection, boolean hidden) {
		this.p = p;
		this.acc = new PVector(0, 0);
		this.vel = new PVector(0, 0);
		this.loc = loc.get();
		this.origin = new PVector(loc.x, loc.y);
		this.hidden = hidden;

	}

	/**
	 * Is the particle still useful? (if its lifetime is equal to or less than
	 * 0.0)
	 *
	 * @return boolean true or false
	 */
	boolean dead() {
		if (lifeTime <= 0.0) {
			return true;
		} else {
			return false;
		}
	}

	/**
	 * @return the loc
	 */
	public synchronized PVector getLoc() {
		return loc;
	}

	/**
	 * @param loc the loc to set
	 */
	public synchronized void setLoc(float x,float y,float z) {
		this.loc.set(x, y, z);
	}

	/**
	 * set the lifetime of the particle<br>
	 * if u want to use this you need to add {@code this.lifeTime -= 0.5; } to
	 * {@link #update()}<br>
	 * or add {@code getALife();} to {@link #run()}<br>
	 *
	 * @param lifeTimeIn
	 *            give him a float like 100 Frames or so
	 * @see #lifeTime
	 * @see #update()
	 * @see #getALife()
	 * @see ParticleSystem#addParticleEmitter(boolean)
	 * @see ParticleSystem#setEmitterOrigin(PVector)
	 */
	public synchronized void setLifeTime(float lifeTimeIn) {

		this.lifeTime = lifeTimeIn;
	}

	/**
	 * @return the lifeTime
	 */
	public synchronized float getLifeTime() {
		return lifeTime;
	}

	/**
	 * set the field ptclCol1
	 *
	 * @param h
	 *            hue 0 - 360
	 * @param s
	 *            saturation 0 - 100
	 * @param b
	 *            brightness 0 - 100
	 * @param a
	 *            alpha 0 - 100
	 * @see #ptclCol1
	 * @see Style#ptclCol1
	 */
	public synchronized void setColorCol1(int h, int s, int b, int a) {
		this.col1 = color(h, s, b, a);
	}
	/**
	 * reset the Particle's Color 1
	 *
	 */
	public synchronized void resetColorCol1() {
		this.col1 = style.ptclCol1;
	}

	/**
	 * set the field ptclCol2
	 *
	 * @param h
	 *            hue 0 - 360
	 * @param s
	 *            saturation 0 - 100
	 * @param b
	 *            brightness 0 - 100
	 * @param a
	 *            alpha 0 - 100
	 * @see #ptclCol2
	 * @see Style#ptclCol2
	 */
	public synchronized void setColorCol2(int h, int s, int b, int a) {
		this.col2 = color(h, s, b, a);
	}

	/**
	 * reset the Particle's Color 2
	 *
	 */
	public synchronized void resetColorCol2() {
		this.col2 = style.ptclCol2;
	}
	/**
	 * set the gravity of the particle. if the particle follows a path you wont
	 * see much of the gravity. but with the emitter! wow!!!!!
	 *
	 * @param inGravity
	 * @see #gravity
	 * @see ParticleSystem#addParticleEmitter(boolean)
	 */
	public synchronized void setGravity(float inGravity) {
		this.gravity = inGravity;
	}

	/**
	 * @return the gravity
	 */
	public synchronized float getGravity() {
		return gravity;
	}

	/**
	 * reset the gravity to 0.0
	 *
	 * @see #gravity
	 * @see ParticleSystem#addParticleEmitter(boolean)
	 */
	public synchronized void resetGravity() {
		this.gravity = 0.0f;
	}

	/**
	 * set the maximum force.
	 *
	 * @param inMaxforce
	 *            float value more than 20 is not useful right now
	 * @see #maxforce
	 * @see #resetMaxforce()
	 */

	public synchronized void setMaxforce(float inMaxforce) {
		this.maxforce = inMaxforce;
	}

	/**
	 * @return the maxforce
	 */
	public synchronized float getMaxforce() {
		return this.maxforce;
	}

	/**
	 * resets the maxforce to 0.3 right now
	 *
	 * @see #maxforce
	 * @see #setMaxforce(float)
	 */
	public synchronized void resetMaxforce() {
		this.maxforce = 0.3f;
	}

	/**
	 * set the maxspeed of the particle use something like 5 for the beginning
	 *
	 * @param inMaxspeed
	 *            a float value
	 * @see #maxspeed
	 * @see #resetMaxspeed()
	 */
	public synchronized void setMaxspeed(float inMaxspeed) {
		this.maxspeed = inMaxspeed;
	}

	/**
	 * @return the maxspeed
	 */
	public synchronized float getMaxspeed() {
		return this.maxspeed;
	}

	/**
	 * this resets the maxspeed of the particle to 2.0
	 *
	 * @see #maxspeed
	 * @see #setMaxspeed(float)
	 */
	public synchronized void resetMaxspeed() {
		this.maxspeed = 2.0f;
	}

	/**
	 * the size of the particle
	 *
	 * @param inRadius
	 *            float value
	 * @see #radius
	 */
	public synchronized void setRadius(float inRadius) {
		this.radius = inRadius;
	}

	/**
	 * @return the radius
	 */
	public synchronized float getRadius() {
		return radius;
	}

	/**
	 * sets the mass of an particle. use something like 0.5 for the begining
	 *
	 * @param massIn
	 *            a float value use it between 0.0 and 1.0
	 * @see #mass
	 * @see #resetMass()
	 */
	public synchronized void setMass(float massIn) {
		this.mass = massIn;

	}

	/**
	 * @return the mass
	 */
	public synchronized float getMass() {
		return mass;
	}

	/**
	 * resets the mass of the particle to 0.5
	 *
	 * @see #mass
	 * @see #setMass(float)
	 */
	public synchronized void resetMass() {
		this.mass = 0.5f;

	}

	/**
	 * so you can set the pathnumber to follow
	 *
	 * @param pathNumIn
	 *            int value
	 * @see <a href="./Path.html"><code>Class Path</code></a>
	 */
	public synchronized void setPathNum(int pathNumIn) {
		this.pathNum = pathNumIn;

	}

	/**
	 * @return the pathNum
	 */
	public synchronized int getPathNum() {
		return pathNum;
	}

	/**
	 * @return the hidden
	 */
	public synchronized boolean isHidden() {
		return hidden;
	}

	/**
	 * @param hidden the hidden to set
	 */
	public synchronized void setHidden(boolean hidden) {
		this.hidden = hidden;
	}

	/**
	 * @return the origin
	 */
	public synchronized PVector getOrigin() {
		return origin;
	}

	/**
	 * this is for playing around with forces it is not used right now
	 *
	 * @param obstacles
	 * @deprecated
	 */
	public void myForce(ArrayList<Particle> obstacles) {


		for (int i = 0; i < obstacles.size(); i++) {
			Particle obstcl = obstacles.get(i);
			PVector force = new PVector(obstcl.loc.x, obstcl.loc.y); // obstcl.loc;
			force.normalize();
			loc.x = loc.x + force.x;
			loc.y = loc.y + force.y;

		}
	}

	/**
	 * Limits the particles to the screen
	 *
	 */
	void limit() {
		if (loc.y > p.height - radius || loc.y < radius) {

			vel.y = -vel.y;
			loc.y = PApplet.constrain(loc.y, -p.height * p.height, p.height
					- radius);

		}
		if ((loc.x < radius) || (loc.x > p.width - radius)) {
			vel.x = -vel.x;
			loc.x = PApplet.constrain(loc.x, radius, p.width - radius);

		}

	}

	/**
	 * Show the particle
	 *
	 */
	public void display() {

		if (hidden != true) {

			p.stroke(col1);
			p.strokeWeight(this.radius);
			p.point(loc.x,loc.y);

			p.stroke(col2);
			p.point(loc.x,loc.y);
			p.noStroke();
//			p.stroke(ptclCol2);
//			p.strokeWeight(this.radius);
//			p.point(p.random(loc.x - 0.5f, loc.x + 0.5f),
//					p.random(loc.y - 0.5f, loc.y + 0.5f));
//			p.point(p.random(loc.x - 0.5f, loc.x + 0.5f),
//					p.random(loc.y - 0.5f, loc.y + 0.5f));

			// p.fill(ptclCol1);
			// p.ellipse(loc.x, loc.y, radius, radius);
			// p.noStroke();
			// p.fill(ptclCol2);
			// p.ellipse(loc.x,loc.y,radius*1.05f,radius*1.05f);

			// for(int i=0;i<2;i++){
			// p.strokeWeight(1);
			// p.stroke(ptclCol2);
			// p.beginShape(p.LINES);
			// p.vertex(loc.x+p.random(-radius*1.05f,radius*1.05f),
			// loc.y+p.random(-radius*1.05f,radius*1.05f));
			// p.vertex(loc.x+p.random(-radius*1.05f,radius*1.05f),
			// loc.y+p.random(-radius*1.05f,radius*1.05f));
			// p.endShape();
			// }
			// p.noStroke();
		}

	}

	/**
	 * A function to deal with path following and separation
	 *
	 * @param ptkls
	 *            a Arraylist of Particles
	 * @param path
	 *            a Path
	 */
	public void applyForces(ArrayList<Particle> ptkls, Path path) {

		// Follow path force
		PVector f = follow(path);
		// Separate from other boids force
		PVector s = separate(ptkls);
		// Arbitrary weighting
		f.mult(3);
		s.mult(1);
		// Accumulate in acceleration
		this.acc.add(f);
		this.acc.add(s);
	}

	/**
	 * applys a force to the particle
	 *
	 * @param force
	 *            PVector
	 * @see ParticleSystem#myApplyRepellers(ArrayList, boolean)
	 * @see ParticleSystem#applyRepellers(ArrayList)
	 * @see ParticleSystem#applyObstcles(java.util.List, boolean)
	 */
	public void applyRepellForce(PVector force) {

		// float mass = 0.1f; // We aren't bothering with mass here
		force.div(this.mass);
		this.acc.add(force);

	}

	//
	/**
	 * Main "run" function calls update, display , limit
	 *
	 * @see #update()
	 * @see #display()
	 * @see #limit()
	 */
	public void run() {
		update();
		// getALife();
		display();
		limit();

	}

	/**
	 * This function implements Craig Reynolds' path following algorithm<br>
	 * <a href="http://www.red3d.com/cwr/steer/PathFollow.html"
	 * target="blanc">see it at red3d.com</a> this is hard stuff. fabiantheblind
	 * doesn't really understand ;(<br>
	 * see the comments within the code to understand more<br>
	 * there is inside also a debbuging function to see what they are doing where
	 * they are steering and all this
	 *
	 * @param pt
	 *            a path
	 * @return a steer??
	 *
	 */
	public PVector follow(Path pt) {

		// Predict location 25 (arbitrary choice) frames ahead
		PVector predict = vel.get();
		predict.normalize();
		predict.mult(25);
		PVector predictLoc = PVector.add(loc, predict);

		// // Draw the predicted location
		// if (debug) {
		// p.fill(0);
		// p.stroke(0);
		// p.line(loc.x,loc.y,predictLoc.x, predictLoc.y);
		// p.ellipse(predictLoc.x, predictLoc.y,4,4);
		// }

		// Now we must find the normal to the path from the predicted location
		// We look at the normal for each line segment and pick out the closest
		// one
		PVector target = null;
		PVector dir = null;
		float record = 1000000; // Start with a very high record distance that
								// can easily be beaten

		// Loop through all points of the path

		for (int i = 0; i < pt.getPtclPoints().size(); i++) {


			// Look at a line segment
			PVector a = (PVector) pt.getPtclPoints().get(i).loc;
			PVector b = (PVector) pt.getPtclPoints().get((i + 1)
					% pt.getPtclPoints().size()).loc; // Path wraps around

			// Get the normal point to that line
			PVector normal = getNormalPoint(predictLoc, a, b);

			// Check if normal is on line segment
			float da = PVector.dist(normal, a);
			float db = PVector.dist(normal, b);
			PVector line = PVector.sub(b, a);
			// If it's not within the line segment, consider the normal to just
			// be the end of the line segment (point b)
			if (da + db > line.mag() + 1) {
				normal = b.get();
				// If we're at the end we really want the next line segment for
				// looking ahead
				a = (PVector) pt.getPtclPoints().get((i + 1) % pt.getPtclPoints().size()).loc;
				b = (PVector) pt.getPtclPoints().get((i + 2) % pt.getPtclPoints().size()).loc; // Path
																						// wraps
																						// around
				line = PVector.sub(b, a);
			}

			// How far away are we from the path?
			float d = PVector.dist(predictLoc, normal);
			// Did we beat the record and find the closest line segment?
			if (d < record) {
				record = d;
				// If so the target we want to steer towards is the normal
				target = normal;

				// Look at the direction of the line segment so we can seek a
				// little bit ahead of the normal
				dir = line;
				dir.normalize();
				// This is an oversimplification
				// Should be based on distance to path & velocity
				dir.mult(25);
			}
		}

		// // Draw the debugging stuff
		// if (debug) {
		// // Draw normal location
		// p.fill(0);
		// p.noStroke();
		// p.line(predictLoc.x,predictLoc.y,target.x,target.y);
		// p.ellipse(target.x,target.y,4,4);
		// p.stroke(0);
		// // Draw actual target (red if steering towards it)
		// p.line(predictLoc.x,predictLoc.y,target.x,target.y);
		// if (record > pt.radius) p.fill(255,0,0);
		// p.noStroke();
		// p.ellipse(target.x+dir.x, target.y+dir.y, 8, 8);
		// }

		// Only if the distance is greater than the path's radius do we bother
		// to steer
		if (record > pt.getRadius() || vel.mag() < 0.1) {
			target.add(dir);
			return steer(target, false);
		} else {
			return new PVector(0, 0);
		}
	}

	/**
	 * A function to get the normal point from a point (p) to a line segment
	 * (a-b)<br>
	 * This function could be optimized to make fewer new Vector objects
	 *
	 * @param p
	 *            PVector
	 * @param a
	 *            PVector
	 * @param b
	 *            PVector
	 * @return normalPoint
	 */
	public PVector getNormalPoint(PVector p, PVector a, PVector b) {
		// Vector from a to p
		PVector ap = PVector.sub(p, a);
		// Vector from a to b
		PVector ab = PVector.sub(b, a);
		ab.normalize(); // Normalize the line
		// Project vector "diff" onto line by using the dot product
		ab.mult(ap.dot(ab));
		PVector normalPoint = PVector.add(a, ab);
		return normalPoint;
	}

	/**
	 * Separation Method. checks for nearby boids and steers away<br>
	 *
	 * @param ptclsList
	 *            ArrayList of Particles
	 * @return steer
	 */
	public PVector separate(ArrayList<Particle> ptclsList) {

		float desiredseparation = radius * 2;
		PVector steer = new PVector(0, 0);
		int count = 0;

		Particle ptcl = null;
		Particle other = null;
		// For every boid in the system, check if it's too close
		for (int i = 0; i < ptclsList.size(); i++) {
			ptcl = ptclsList.get(i);
			if (ptcl.hidden != true) {
				other = ptclsList.get(i);
				float d = PVector.dist(loc, other.loc);
				// If the distance is greater than 0 and less than an arbitrary
				// amount (0 when you are yourself)
				if ((d > 0) && (d < desiredseparation)) {
					// Calculate vector pointing away from neighbor
					PVector diff = PVector.sub(loc, other.loc);
					diff.normalize();
					diff.div(d); // Weight by distance
					steer.add(diff);
					count++;
				}// Keep track of how many
			}
		}
		// Average -- divide by how many
		if (count > 0) {
			steer.div((float) count);
		}

		// As long as the vector is greater than 0
		if (steer.mag() > 0) {
			// Implement Reynolds: Steering = Desired - Velocity
			steer.normalize();
			steer.mult(maxspeed);
			steer.sub(vel);
			steer.limit(maxforce);
		}

		return steer;
	}

	/**
	 * Method to update location.<br>
	 * if u like u can add a <code>this.lifeTime -= 0.5;</code><br>
	 * and set the lifetime lower.. Its useful for the particleEmitter<br>
	 *
	 * @see ParticleSystem#addParticleEmitter(boolean)
	 * @see ParticleSystem#setEmitterOrigin(PVector)
	 */
	public void update() {
		// Update velocity
		this.vel.add(acc);
		// Limit speed
		this.vel.limit(maxspeed);
		this.loc.add(vel);
		// Reset accelertion to 0 each cycle
		this.acc.mult(0);
		// this.lifeTime -= 0.5;

	}

	/**
	 * use this if you want the particles to die sometime is usefull using the
	 * ParticleEmitter
	 *
	 * @see #update()
	 * @see #run()
	 * @see ParticleSystem#addParticleEmitter(boolean)
	 * @see ParticleSystem#setEmitterOrigin(PVector)
	 *
	 */
	@SuppressWarnings("unused")
	private void getALife() {
		this.lifeTime -= 0.5;
	}

	/**
	 * this makes a particle allows go to a specific point.
	 *
	 * @param target
	 *            the PVector to seek
	 */
	public void seek(PVector target) {
		acc.add(steer(target, false));
	}

	/**
	 * this also craig Reynolds stuff.
	 *
	 * @param target
	 * @see #follow(Path)
	 */
	public void arrive(PVector target) {
		acc.add(steer(target, true));
	}

	// A method that calculates a steering vector towards a target
	// Takes a second argument, if true, it slows down as it approaches the
	// target
	public PVector steer(PVector target, boolean slowdown) {
		PVector steer; // The steering vector
		PVector desired = PVector.sub(target, loc); // A vector pointing from
													// the location to the
													// target
		float d = desired.mag(); // Distance from the target is the magnitude of
									// the vector
		// If the distance is greater than 0, calc steering (otherwise return
		// zero vector)
		if (d > 0) {
			// Normalize desired
			desired.normalize();
			// Two options for desired vector magnitude (1 -- based on distance,
			// 2 -- maxspeed)
			if ((slowdown) && (d < 100.0f))
				desired.mult(maxspeed * (d / 100.0f)); // This damping is
														// somewhat arbitrary
			else
				desired.mult(maxspeed);
			// Steering = Desired minus Velocity
			steer = PVector.sub(desired, vel);
			steer.limit(maxforce); // Limit to maximum steering force
		} else {
			steer = new PVector(0, 0);
		}
		return steer;
	}

}