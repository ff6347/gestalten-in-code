

/**
 * this is a class for importing .xml<br>
 * the XMLImporter Class in a nutshell<br>
 * u need to call first the function<br> {@code XMLImporter.setPAppelt(PApplet p)}<br>
 * for initilizing the class<br>
 * then use the function<br> {@code getRoot()} returns the whole .xml file
 * affectionPropertys.xml<br>
 * as a processing.XMLElement<br>
 * use this to see what happens<br> {@code PApplet.println(XMLImporter.getRoot());}<br>
 * <br>
 * <br> {@code getObsctlObjects()} returns the all ELements in the root node<br>
 * of the .xml file affectionPropertys.xml<br>
 * as a processing.XMLElement []<br>
 * use this to see what happens<br>
 * {@code PApplet.println(XMLImporter.getObsctlObjects());}<br>
 * <br>
 * <br> {@code getObsctlObjectByID(int id)} returns a specific XMLELement in the
 * root node<br>
 * of the .xml file affectionPropertys.xml<br>
 * by its {@code int} id<br>
 * as a processing.XMLElement<br>
 * if the element doesnt exist it returns null<br>
 * use this to see what happens<br>
 * {@code PApplet.println(XMLImporter.getObsctlObjectByID(2));}<br>
 * <br>
 * <br> {@code getObsctlObjectPropertys(int id String time, String space)}<br>
 * returns a specific XMLELements value in the root/obstacleObject/ node<br>
 * of the .xml file affectionPropertys.xml<br>
 * by its {@code int} id<br>
 * then it selects the<br> {@code root/obstacleObject/day}<br>
 * or<br> {@code root/obstacleObject/nite}<br>
 * element<br>
 * then it selects within this element the space element by its name<br>
 * (public or private or work)<br>
 * then it returns the floatAttribute value<br>
 * as a float<br>
 * if the element doesnt exist it returns 0.0f<br>
 * use this to see what happens<br>
 * {@code PApplet.println(XMLImporter.getObsctlObjectPropertys(0, "day", "private"));}
 * <br>
 * <br>
 * <br>
 * the method {@code ObjectPropertys(int id)} makes an 2 dimensional Array of
 * {@code float} values from<br>
 * the xml File<br>
 * if the id is bigger than the objects in the xml File all values are 0.0f<br>
 * use this to see what happens<br> {@code float [][] testing = ObjectPropertys(0);}<br>
 * {@code PApplet.println(testing[0][0]);}<br>
 * <br>
 *
 *
 *
 *
 *
 *
 * <br>
 *
 * @author fabiantheblind
 *
 *
 */
public class XMLImporter {

	private  PApplet p;
	private  XML root;

	/**
	 * this is for setting the PApplet for the whole class must be called in the
	 * {@code setup()}
	 *
	 * @param p_
	 * @see <a href="../tmnuelaerm/TmnUELaerm.html#setup()"this happens in
	 *      <code>TMNUelaerm>setup()</code></a>
	 */
        XMLImporter(PApplet p_){
        this.p = p_;
        }
//	public  void setPAppelt() {
//
//		p = p_;
//	}

	/**
	 * the XMLImporter Class in a nutshell all methods of this class in metood
	 * with some {@code println()}
	 */
	public  void XML_IMPORTER_Class_inANutshell() {

		// u need to call first the function
		// XMLImporter.setPAppelt(PApplet p))
		// for initilizing the class
		// then use the function
		// getRoot() returns the whole .xml file affectionPropertys.xml
		// as a processing.XMLElement
		// use this to see what happens
		PApplet.println("this is the command:\nXMLImporter.getRoot()");
		PApplet.println(this.getRoot());

		// getObsctlObjects() returns the all ELements in the root node
		// of the .xml file affectionPropertys.xml
		// as a processing.XMLElement []
		// use this to see what happens
		PApplet.println("this is the command:\nXMLImporter.getObsctlObjects()");
		PApplet.println(this.getObsctlObjects());

		// getObsctlObjectByID(int id) returns a specific XMLELement in the root
		// node
		// of the .xml file affectionPropertys.xml
		// by its int id
		// as a processing.XMLElement
		// if the element doesnt exist it returns null
		// use this to see what happens
		PApplet.println("this is the command:\nXMLImporter.getObsctlObjectByID(2)");
		PApplet.println(this.getObsctlObjectByID(2));

		// getObsctlObjectPropertys(int id String time, String space)
		// returns a specific XMLELements value in the root/obstacleObject/ node
		// of the .xml file affectionPropertys.xml
		// by its int id
		// then it selects the
		// root/obstacleObject/day
		// or
		// root/obstacleObject/nite
		// element
		// then it selects within this element the space element by its name
		// (public or private or work)
		// then it returns the floatAttribute value
		// as a float
		// if the element doesnt exist it returns 0.0f
		// use this to see what happens
		p.println("this is the command:\nXMLImporter.getObsctlObjectPropertys(0, \"day\", \"private\")");
		p.println(this.getObsctlObjectPropertys(0, "day",
				"private"));

		// the method ObjectPropertys(int id) makes an 2 dimensional Array of
		// float values from
		// the xml File
		// if the id is bigger than the objects in the xml File all values are
		// 0.0f
		p.println("this is the command:\nfloat [][] testing = ObjectPropertys(0); \nPApplet.println(testing[0][0]);");
		int[][] testing = ObjectPropertys(0, this.getRoot());
		p.println(testing[0][0]);

	}

	// /**
	// * this is for fetching the root
	// */
	// public static void initXML(){
	// root = new XMLElement(p,"./data/affectionPropertys.xml");
	// }

	/**
	 * this is for fetching the {@code root} of the .xml file
	 *
	 * @return XMLElement
	 */
	public XML getRoot() {
		root = new XML( "./data/affectionPropertys.xml");
                println(root);
		return root;
	}

	/**
	 * this is for fetching all obstcl objects into an array of
	 * {@code XMLElements}
	 *
	 * @return XMLElement []
	 */
	public  XML[] getObsctlObjects() {
		root = loadXML( "affectionPropertys.xml");
		XML obstcls[] = root.getChildren("obstclObject");
		return obstcls;

	}

	/**
	 * this is for fetching a Obstcl object by ID. If you want a specific object
	 *
	 * @param id
	 *            {@code int} the index of the object/element in the .xml file
	 * @return XMLElement
	 */
	public  XML getObsctlObjectByID(int id) {
		root = loadXML("affectionPropertys.xml");
		XML obstcls[] = root.getChildren("obstclObject");
		if (id < obstcls.length) {
			return obstcls[id];
		} else {
			return null;
		}
	}

	/**
	 * this is for fetching a specific property
	 *
	 * @param id
	 *            {@code int} the index of the object/element in the .xml file
	 * @param time
	 *            String name of a {@code XMLElement} the method accepts " day"
	 *            or "nite"
	 * @param space
	 *            String name of a {@code XMLElement} the method accepts "work"
	 *            "private" "public"
	 * @return float
	 */
	public  float getObsctlObjectPropertys(int id, String time,
			String space) {
		root = loadXML( "affectionPropertys.xml");
		XML obstcls[] = root.getChildren("obstclObject");

		// this is for checking if there is an obstvl object in the xml
		if (id < obstcls.length) {

			// this is for fetching the day time propertys
			if (time.equals("day") == true) {

				if (space.equals("private") == true) {

					return obstcls[id].getChild("day/private").getInt(
							"value");
				} else if (space.equals("public") == true) {
					return obstcls[id].getChild("day/public").getInt(
							"value");
				} else if (space.equals("work") == true) {
					return obstcls[id].getChild("day/work").getInt(
							"value");
				} else {
					return 0.0f;
				}

				// this is for fetching the nite time propertys
			} else if (time.equals("nite") == true) {

				if (space.equals("private") == true) {
					return obstcls[id].getChild("nite/private")
							.getInt("value");
				} else if (space.equals("public") == true) {
					return obstcls[id].getChild("nite/public").getInt(
							"value");
				} else if (space.equals("work") == true) {
					return obstcls[id].getChild("nite/work").getInt(
							"value");
				} else {

					// if the element isn't there or the string doesent match
					// so it is not work, private or public it returns a null
					// value
					return 0.0f;
				}
			} else {
				// if the object is neither day nor nite reutrn a null float
				// value
				return 0.0f;
			}

		} else {
			// if there is no object like this (with the id) in the xml return a
			// null value
			return 0.0f;
		}
	}

	/**
	 * this makes an 2 dimensinal array of {@code float} values out of an
	 * Obstobject
	 *
	 * @param id
	 *            the index of the elements within the root of the .xml file
	 * @return int [] []
	 */
	public  int[][] ObjectPropertys(int id, XML root) {

		// root = new XMLElement(p,"./data/affectionPropertys.xml");
		XML obstcls[] = root.getChildren("obstclObject");
		if (id < obstcls.length) {
			int[][] propertys = new int[2][3];
			propertys[0][0] = obstcls[id].getChild("day/private")
					.getInt("value");
			propertys[0][1] = obstcls[id].getChild("day/public")
					.getInt("value");
			propertys[0][2] = obstcls[id].getChild("day/work").getInt(
					"value");
			propertys[1][0] = obstcls[id].getChild("nite/private")
					.getInt("value");
			propertys[1][1] = obstcls[id].getChild("nite/public")
					.getInt("value");
			propertys[1][2] = obstcls[id].getChild("nite/work")
					.getInt("value");
			return propertys;
		} else {

			int[][] propertys = new int[2][3];
			propertys[0][0] = 0;
			propertys[0][1] = 0;
			propertys[0][2] = 0;
			propertys[1][0] = 0;
			propertys[1][1] = 0;
			propertys[1][2] = 0;
			return propertys;
		}

	}

}