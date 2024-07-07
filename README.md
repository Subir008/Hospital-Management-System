## Hospital-Management-System

#### This is a dynamic hospital website where user and doctor can register all the things are managed by admin. Developed using JAVA (Servlet and JDBC) , HTML and CSS.

-----

##### 1st Step 
Create a Maven Project

** How to create Maven Project **

* Go to file 
* New 
* Select Maven Project 
* Give file location 
* Click on Next 
* Select the Category as Internal
* Select these from the list org.apache.maven.archetypes || maven-archetype-webapp || 1.0
* Give GroupId which is package name 
* Give ArtifactId which is Project Name 
*Give Package Name
* Finish

##### 2nd Step
Add the Persistence code in the pom.xml file within dependencies tag.
Add the code that are required here we have needed these jar files for running the program -
* **Mysql Connector** for connecting with the Db.
* **avax.servlet-api** for using servlet functionality.
* **jstl** for using the jsp library files to reduce the code.
* **jsp-api** for using jsp file.

** How to add the persistence code **

* Search [Maven Repository](https://mvnrepository.com/) 
* Then search for **Mysql Connector** and click on the result with high usages 
* Click on the version with high usage 
* Copy the dependency codes 
* Add to the pom.xml file.


##### 3rd Step
Add the HTML,CSS,JS code .

All the code should be written inside the src/main/webapp folder .

All the HTML Code will be written in the JSP file to use its features.

##### 4th Step 
Add the functionality/servlet code.

Add the code inside Java Resources/src/main/java.

If all the sub folder not present in Java Resoures folder then - 
* Right click on the project 
* Click on build path -> Configure build path
*  Go to library -> Click on jre system library and edit it and make the java jre version above Java 8 .
* Save -> Apply and Close.


-----

### Steps for doing Register

##### Create 5 packages 

1. **Configuration package** - Here all the database connection would be present.
2. **dto package** - Here the data will be taken for getting store from the user.
3. **dao package** - Here the data insertion code will be written .
4. **userServlet package** - Here 
	* First data will be taken from the frontend i.e. from user. <br>
		* Then send the data to the dto package to get stored in the variables by creating object of that class.
		* Then create object of the dao package class and invoke the method of data insertion present there.
		* Then start one session and according to the other conditions and session value it will provide us the value.

For showing the result in the frontend 2 tagdirective have to be imported in the front jsp page-
* **taglib** directive to minimize the code structure.
* **page ** directive to import the **isELIgnored** and making it value false to show the output properly. 
		
