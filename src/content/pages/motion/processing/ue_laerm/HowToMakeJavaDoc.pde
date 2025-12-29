

/**
 * The first line should always be a summary If u want to build your JavaDoc u
 * can use these basic commands
 *
 * @author fabiantheblind
 *
 *
 */
public class HowToMakeJavaDoc {

	/**
	 * this would be a field of your class if u want to build a link use the see
	 * with the number sign "#" also something like this makes a link
	 * {@link #anotherNumber}
	 *
	 * @see #number
	 */
	public String Text;
	/**
	 *
	 */
	public int number;

	/**
	 * @deprecated
	 */
	@SuppressWarnings("unused")
	private int anotherNumber;

	/**
	 * if you have something like a object from another class u can link to it
	 * using
	 *
	 * @see Particle
	 * @see Particle#follow(particleSystem.Path)
	 */
	@SuppressWarnings("unused")
	private Particle particle;

	/**
	 * how can we edit?<br>
	 * html works! <br>
	 * inlineTags also work like {@code code} or use <code>code</code> you can
	 * also link with html to the web <a
	 * href="http://project.the-moron.net/UELaerm/"> like this</a> within
	 * \<html\> inline tags work <a
	 * href="http://project.the-moron.net/UELaerm/">{@code like this}</a> and u
	 * can use the \
	 * <code\> tag inside aswell <a href="http://project.the-moron.net/UELaerm/"><code>like this</code>
	 * </a> so if you want to link to something that is not imported but still
	 * is apart of your JavaDoc you can get it's position by looking at the url
	 *
	 * so below the last\@see to see how it works
	 *
	 * @param this_
	 * @param is
	 * @param parameter
	 *
	 * @see Class Debug Class
	 * @see <a href="../tmnuelaerm/TmnUELaerm.html#setup()">
	 *      <code>how to link to a method or class that is not imported like setup()</code>
	 *      <a>
	 */
	public HowToMakeJavaDoc(float this_, int is, float parameter) {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 *
	 * @param anotherNumber
	 *            this is the incoming parameter of the method
	 * @return anotherNumber this is the return method
	 */
	float returnSomething(float anotherNumber) {

		return anotherNumber;

	}

}