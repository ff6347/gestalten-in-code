

/**
 * these are some propertys for repelling to get some sort of rules<br>
 * the data is loaded from an .xml file but can also be set manually for every
 * Property<br>
 * its only for storing an {@code int, string,float[][]} with 6 values in an
 * <code>Object</code>
 *
 * @author fabiantheblind
 * @see Class XMLImporter Class
 * @see <a
 *      href="../util/PSUtil.html#initPropertysList()"><code>PSUtil.initPropertysList()</code></a>
 */
public class Property {

	/**
	 * the index from the xml
	 *
	 */
	int index;
	/**
	 * the word or name to write to the screen
	 */
	String name;
	/**
	 * a 2 dimensinal float array to store the values
	 * {@code float [time( 2 values )][space( 3 values )]} the time 0 day or 1
	 * night the space as private 0 / public 1 / work 2
	 */
	int[][] affectionProps;

	/**
	 * @param index
	 * @param name
	 * @param affectionProps
	 * @see #index
	 * @see #name
	 * @see #affectionProps
	 */
	public Property(int index, String name, int[][] affectionProps) {
		this.index = index;
		this.name = name.toUpperCase();
		this.affectionProps = affectionProps;

	}

	public Property() {

		this.index = 0;
		this.name = "";
		int[][] propertys = new int[2][3];
		propertys[0][0] = 0;
		propertys[0][1] = 0;
		propertys[0][2] = 0;
		propertys[1][0] = 0;
		propertys[1][1] = 0;
		propertys[1][2] = 0;

		this.affectionProps = propertys;

	}

	/**
	 * @return the index
	 */
	public synchronized int getIndex() {
		return index;
	}

	/**
	 * @return the name
	 */
	public synchronized String getName() {
		return name;
	}

	/**
	 * @return the affectionProps
	 */
	public synchronized int[][] getAffectionProps() {
		return affectionProps;
	}
	public synchronized void setAffectionProps(int[][] affectionProps) {
		this.affectionProps = affectionProps;
	}

	/**
	 * @param index the index to set
	 */
	public synchronized void setIndex(int index) {
		this.index = index;
	}


	/**
	 * @return all daytime values from the Class Property as a {@code float[]}
	 */
	public int[] getDayValues() {
		int[] dayValues = new int[] { affectionProps[0][0],
				affectionProps[0][1], affectionProps[0][2] };
		return dayValues;

	}

	/**
	 * @return all nitetime values from the Class Property as a {@code float[]}
	 */
	public int[] getNiteValues() {
		int[] dayValues = new int[] { affectionProps[1][0],
				affectionProps[1][1], affectionProps[1][2] };
		return dayValues;

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
		return affectionProps[time][space];
	}

	/**
	 * @param affectionProps
	 *            the affectionProps to set
	 */


	public void cloneProperty(Property extProp){


		this.index = extProp.index;
		this.name = extProp.name;
		this.affectionProps = extProp.affectionProps;
	}

}