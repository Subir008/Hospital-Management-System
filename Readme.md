# Hospital-Management-System

#### This is a dynamic hospital website where user and doctor can register, all the things are managed by admin. Developed using JAVA (Servlet and JDBC) , HTML and CSS.


## Module & Facility present in the project

* User Module
* Doctor Module
* Admin Module

## * User Facility 

* User will register them in the site.
* User will login to the website.
* User can update their profile.
* User can update their profile password.
* User can book appointments.
* User will logout from the system.

## * Doctor Facility

* Doctor will login to the doctor admin panel.
* Doctor can update their profile details anp password.
* Doctor can check the appointment list of the patient.
* Doctor can comment on the patient appointment.
* Doctor can logout from the system.

## * Admin Facility

* Admin will login to the admin panel.
* Admin can add the specialist.
* Admin will add the doctor.
* Admin can update doctor details.
* Admin can delete the doctor .
* Admin will add the departemnts.
* Admin can check the departments.
* Admin can update & delete the departments.
* Admin can check the user register in the site.
* Admin can check the appointment list of all the doctor.


## Procedure of creating the Project 

#### 1st Step 
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

#### 2nd Step
Add the Persistence code in the pom.xml file within dependencies tag.
Add the code that are required here we have needed these jar files for running the program -
* **Mysql Connector** for connecting with the Db.
* **javax.servlet-api** for using servlet functionality.
* **jstl** for using the jsp library files to reduce the code.
* **jsp-api** for using jsp file.

** How to add the persistence code **

* Search [Maven Repository](https://mvnrepository.com/) 
* Then search for **Mysql Connector** and click on the result with high usages 
* Click on the version with high usage 
* Copy the dependency codes 
* Add to the pom.xml file.


#### 3rd Step
Add the HTML,CSS,JS code .

All the code should be written inside the src/main/webapp folder .

All the HTML Code will be written in the JSP file to use its features.

#### 4th Step 
Add the functionality/servlet code.

Add the code inside Java Resources/src/main/java.

If all the sub folder not present in Java Resoures folder then - 
* Right click on the project 
* Click on build path -> Configure build path
*  Go to library -> Click on jre system library and edit it and make the java jre version above Java 8 .
* Save -> Apply and Close.


### Create 5 packages 

1. **Configuration package** - Here all the database connection would be present.
2. **dto package** - Here the data will be taken for getting store in the database.
3. **dao package** - Here the main functionality code will be written for data insertion, updation, deletion, and fetching .
4. **userServlet package** - It contains all the code of the user i.e,
    * Register.
	* Login.
	* Logout.
	* Profile update.
	* Password change.
	* Booking appointment.

5. **doctorServlet package** - It contains all the code of doctor i.e,
	* Login.
	* Logout.
	* Profile update.
	* Password change.
	* Add Comment

6. **adminServlet package** - It contains all the code of admin i.e,
	* Login.
	* Logout.
	* Add Specialist.
	* Add Doctor.
	* Delete Doctor.
	* Update Doctor.
	* Add Department.
	* Update Department.
	* Delete Department.
		

-----



