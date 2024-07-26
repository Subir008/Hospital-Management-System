<%@page import="com.dao.DepartmentDao"%>
<%@page import="com.dao.UserDao"%>
<%@page import="com.dao.AppointmentDao"%>
<%@page import="com.configuration.Configuration"%>
<%@page import="com.dao.DoctorDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="a" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Panel</title>
<%@include file="component/css-file.jsp"%>

<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>

</head>

<body class="hidden-bar-wrapper bg-light">

	<%@include file="component/navbar.jsp"%>


	<div class="container p-3">
		<h3 class="text-center mt-5 mb-3 ">Admin Dashboard</h3>
		<div class="row">

			<!-- Popup of Specialist adding  -->
			<a:if test="${not empty SuccessMessage  }">
				<div class="col-md-12 mb-5">
					<div class="card paint-card">
						<div class="card-body">

							<h3 class="text-center text-success fs-4 font-weight-bold p-3">
								${SuccessMessage }</h3>
						</div>
					</div>
				</div>
				<a:remove var="SuccessMessage" scope="session" />
			</a:if>

			<!-- Popup of Specialist not adding  -->
			<a:if test="${not empty FailureMessage  }">
				<div class="col-md-12 mb-5">
					<div class="card paint-card">
						<div class="card-body">

							<h3 class="text-center text-danger fs-4 font-weight-bold p-3">
								${FailureMessage}</h3>
						</div>
					</div>
				</div>
				<a:remove var="FailureMessage" scope="session" />
			</a:if>


			<div class="col-md-4 mb-2 ">
				<div class="card paint-card pb-4 " data-toggle="modal"
					data-target="#exampleModal">
					<div class="card-body text-center text-success">
						<i class="fa fa-address-card fa-4x" aria-hidden="true"></i>
						<p class="card-text fs-4">
							Add Specialist 
						</p>
					</div>
				</div>
			</div>
		
			<div class="col-md-4 mb-2 ">
				<a href="add-doctor.jsp">
					<div class="card paint-card pb-4">
						<div class="card-body text-center text-success">
							<i class="fa-solid fa-user-plus fa-4x"></i>
							<p class="card-text fs-4 text-center">Add Doctor</p>
						</div>
					</div>
				</a>
			</div>
			
			<div class="col-md-4 mb-2 ">
				<a href="add-department.jsp">
					<div class="card paint-card pb-4">
						<div class="card-body text-center text-success">
							<i class="fa-solid fa-user-plus fa-4x"></i>
							<p class="card-text fs-4 text-center">Add Department</p>
						</div>
					</div>
				</a>
			</div>
			
			
			
			
		</div>
		
		
		<div class="row mt-4">
		
			<%
			// Getting count of total number of Doctor
				DoctorDao doctorDao = new DoctorDao(Configuration.configure());
				 int doctorCount = doctorDao.countDoctor();
			%>
			<div class="col-md-4 mb-2">
				<a href="doctor.jsp">
					<div class="card paint-card">
						<div class="card-body text-center text-success">
							<i class="fas fa-user-md fa-4x"></i>
							<p class="card-text fs-4">
								Doctor <br> <%= doctorCount %>
							</p>
						</div>
					</div>
				</a>
			</div>
		
			<%
			// Getting count of total number of Doctor
				DepartmentDao departmentDao = new DepartmentDao(Configuration.configure());
				 int departmentCount = departmentDao.countDepartment();
			%>
			<div class="col-md-4 mb-2">
				<a href="department.jsp">
					<div class="card paint-card">
						<div class="card-body text-center text-success">
							<i class="fas fa-user-md fa-4x"></i>
							<p class="card-text fs-4">
								Department <br> <%= departmentCount %>
							</p>
						</div>
					</div>
				</a>
			</div>
		
			<%
				// Getting count of total number of User
				UserDao userDao = new UserDao(Configuration.configure());
				int userCount = userDao.countAllUser();
			%>
			<div class="col-md-4 mb-2">
				<div class="card paint-card">
				<a href="user.jsp">
					<div class="card-body text-center text-success">
						<i class="fa fa-user-circle fa-4x" aria-hidden="true"></i>
						<p class="card-text fs-4">
							User <br> <%= userCount %>
						</p>
					</div>
				</a>
				</div>
			</div>
		
		</div>
		
		
		<div class="row mt-4">
		
			<%
			// Getting count of total number of Appointment
				AppointmentDao appointmentDao = new AppointmentDao(Configuration.configure());
				int appoinmentCount = appointmentDao.countAllAppointment();
			%>
			<div class="col-md-4 mb-2">
				<div class="card paint-card">
				<a href="all-appointment-list.jsp">
					<div class="card-body text-center text-success">
						<i class="fa fa-calendar-check-o fa-4x" aria-hidden="true"></i>
						<p class="card-text fs-4">
							Total Appointment <br> <%= appoinmentCount %>
						</p>
					</div>
				</a>
				</div>
			</div>
			
		</div>

	</div>



	<!-- Specialist Add Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Add Specialist
						Here</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="../add-Specialist" method="post">
						<div class="form-group">
							<label for="name"><strong>Specialist Name</strong></label> <input
								type="text" class="form-control" name="specialist_name"
								id="specialist_name" aria-describedby="emailHelp" autocomplete=off>
						</div>
						<div class="form-group text-center">
							<button type="submit" class="btn btn-primary ">Add</button>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>


	<%@include file="component/js-file.jsp"%>
</body>

</html>