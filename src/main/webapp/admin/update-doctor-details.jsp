<%@page import="com.dto.Doctor"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.dto.Specialist"%>
<%@page import="java.util.List"%>
<%@page import="com.configuration.Configuration"%>
<%@page import="com.dao.SpecialistDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="a" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor</title>

<%@include file="component/css-file.jsp"%>

<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}

.font-size {
	font-size: 17px;
}

</style>

</head>
<body>
	<%@include file="component/navbar.jsp"%>

	<div class="container-fluid p-3">
		<div class="row">
			<div class="col-md-12 d-flex justify-content-center">

				<!-- Popup of Doctor Addition -->
				<a:if test="${not empty Success  }">
					<div class="col-md-12 mb-5">
						<div class="card paint-card">
							<div class="card-body">

								<h3 class="text-center text-success fs-4 font-weight-bold p-3">
									${Success}</h3>
							</div>
						</div>
					</div>
					<a:remove var="Success" scope="session" />
				</a:if>

				<!-- Pop up of failure  -->
				<a:if test="${not empty Failed  }">
					<div class="col-md-12 mb-5">
						<div class="card paint-card">
							<div class="card-body">
								<h3 class="text-center text-danger fs-4 font-weight-bold p-3">
									${Failed}</h3>

								<a:remove var="Failed" scope="session" />
							</div>
						</div>
					</div>
				</a:if>

				<%
				int id = Integer.parseInt(request.getParameter("id"));
				DoctorDao doctorDao = new DoctorDao(Configuration.configure());
				Doctor doctor = doctorDao.fetchDoctorById(id);
				%>
				
				<div class="card paint-card col-md-6">
					<div class="card-body  text-success p-5">
						<h4 class="text-center mb-3">Update Doctor Details</h4>
						<form action="../update-doctor" method="post" class="">
							<div class=" form-group row mb-3">
								<label class="form-label  font-size">Full Name</label> <input
									type="text" class="form-control " name="name"
									placeholder="Enter Your Name" required="required" value="<%=doctor.getFull_name()%>">
							</div>
							<div class="form-group row mb-3">
								<label class="form-label  font-size">DOB</label> <input
									type="date" class="form-control " name="dob"
									placeholder="Enter Your Date of Birth" value="<%= doctor.getDob() %>">
							</div>
							<div class="form-group row mb-3 ">
								<label class="form-label  font-size">Qualification</label> <input
									type="text" class="form-control " name="qualification"
									placeholder="Enter Your Qualification" value="<%= doctor.getQualification() %>">
							</div>
							<div class="form-group row mb-3">
								<label class="form-label  font-size">Specialist</label> <select
									class="form-control " name="specialist">
									<option><%= doctor.getSpecialist() %></option>

									<!-- Fetching all the speialist category -->
									<%
									SpecialistDao specialistDao = new SpecialistDao(Configuration.configure());
									List<Specialist> list = specialistDao.getSpecialist();

									for (Specialist specialist : list) {
									%>
									<option><%=specialist.getSpecialist_name()%></option>
									<%
									}
									%>
								</select>
							</div>
							<div class="form-group row mb-3">
								<label class="form-label  font-size">Email</label> <input
									type="email" class="form-control " name="email"
									placeholder="Enter Your Email" required="required" value="<%= doctor.getEmail() %>">
							</div>
							<div class="form-group row mb-3">
								<label class="form-label  font-size">Contact No.</label> <input
									type="tel" class="form-control " name="contact"
									placeholder="Enter Your Contact No." required="required" value="<%= doctor.getContact() %>">
							</div>
							<div class="form-group row mb-3">
								<label class="form-label  font-size">Password</label> <input
									type="password" class="form-control " name="password"
									placeholder="Enter Your Password" required="required" value="<%= doctor.getPassword() %>">
							</div>

							<input type="hidden" name="id" value="<%= doctor.getDoc_id() %>">
							<div class="form-group  mt-5 text-center">
								<button type="submit" class="btn btn-primary col-md-12">Update</button>
							</div>
						</form>

					</div>
				</div>
			</div>

		</div>
	</div>

	<%@include file="component/js-file.jsp"%>
</body>
</html>