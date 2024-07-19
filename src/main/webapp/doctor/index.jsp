<%@page import="com.dto.Doctor"%>
<%@page import="com.configuration.Configuration"%>
<%@page import="com.dao.AppointmentDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="a" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor Admin Panel</title>

<%@include file="component/css-file.jsp"%>

<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>

</head>
<body>
<%@include file="component/navbar.jsp"%>

	
	<div class="container p-3">
		<h3 class="text-center mt-5 mb-3 ">Doctor Dashboard</h3>
		<div class="row d-flex justify-content-center">
		
			<div class="col-md-5 mb-2 p-3">
				<a href="add-doctor.jsp">
					<div class="card paint-card pt-4 pb-5">
						<div class="card-body text-center text-success">
							<i class="fa-solid fa-user-plus fa-4x"></i>
							<p class="card-text fs-4 text-center">My Account</p>
						</div>
					</div>
				</a>
			</div>
			
			<%
				Doctor doctor = (Doctor) session.getAttribute("doctorObj");
				AppointmentDao appointmentDao = new AppointmentDao(Configuration.configure());
				int appointmentCount = appointmentDao.countAppointmentByDoctor(doctor.getDoc_id());
			%>
			<div class="col-md-5 mb-2 p-3">
				<a href="patient-appointment-list.jsp">
					<div class="card paint-card pt-4 pb-4">
						<div class="card-body text-center text-success">
							<i class="fas fa-user-md fa-4x"></i>
							<p class="card-text fs-4">
								Patient Appointment <br> <%= appointmentCount %>
							</p>
						</div>
					</div>
				</a>
			</div>
		</div>
	</div>
	
<%@include file="component/js-file.jsp"%>
</body>
</html>