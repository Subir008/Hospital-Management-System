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
<title>Add Doctor</title>

<%@include file="component/css-file.jsp"%>

<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}

.font-size {
	font-size: 17px;
}

.list {
	width: 160px;
}

.list-item {
	display: flex;
	justify-content: space-evenly;
}
</style>

</head>
<body>
	<%@include file="component/navbar.jsp"%>

	<div class="container-fluid p-3">
		<div class="row clearfix ">
			<div class="col-md-12 d-flex justify-content-center">

				<!-- Popup of Doctor Addition-->
				<a:if test="${not empty Success  }">
					<div class="modal" id="exampleModal" tabindex="-1" role="dialog">
						<div class="modal-dialog modal-dialog-centered " role="document">
							<div class="modal-content paint-card">

								<div class="modal-body">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<br>
									<h3 class="text-center text-success fs-4 font-weight-bold p-3">
										${Success}</h3>
								</div>

							</div>
						</div>
					</div>

					<a:remove var="Success" scope="session" />
				</a:if>

				<!-- Popup of Error -->
				<a:if test="${not empty Failed  }">
					<div class="modal" id="exampleModal" tabindex="-1" role="dialog">
						<div class="modal-dialog modal-dialog-centered" role="document">
							<div class="modal-content">

								<div class="modal-body">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<br>
									<h3 class="text-center text-danger fs-4 font-weight-bold p-3">
										${Failed}</h3>
								</div>

							</div>
						</div>
					</div>
					<a:remove var="Failed" scope="session" />
				</a:if>

				<div class="card paint-card col-md-8 col-sm-6 " >
					<div class="card-body  text-success p-4">
						<h4 class="text-center mb-3 text-uppercase">Add Doctor</h4>
						<form action="../add-doctor" method="post" class="">
							<div class=" form-group row mb-3">
								<label class="form-label  font-size">Full Name</label> <input
									type="text" class="form-control " name="name"
									placeholder="Enter Your Name" required="required">
							</div>
							<div class="form-group row mb-3">
								<label class="form-label  font-size">DOB</label> <input
									type="date" class="form-control " name="dob"
									placeholder="Enter Your Date of Birth">
							</div>
							<div class="form-group row mb-3 ">
								<label class="form-label  font-size">Qualification</label> <input
									type="text" class="form-control " name="qualification"
									placeholder="Enter Your Qualification">
							</div>
							<div class="form-group row mb-3">
								<label class="form-label  font-size">Specialist</label> <select
									class="form-control " name="specialist">
									<option value="" disabled selected>--Select--</option>

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
									placeholder="Enter Your Email" required="required">
							</div>
							<div class="form-group row mb-3">
								<label class="form-label  font-size">Contact No.</label> <input
									type="tel" class="form-control " name="contact"
									placeholder="Enter Your Contact No." required="required">
							</div>
							<div class="form-group row mb-3">
								<label class="form-label  font-size">Password</label> <input
									type="password" class="form-control " name="password"
									placeholder="Enter Your Password" required="required">
							</div>

							<div class="form-group  mt-5  d-flex justify-content-center">
								<button class="theme-btn btn-style-one  col-8">
									<span class="btn-wrap " style="float: none; font-size: 17px">
										<span class="text-one">Submit</span> <span class="text-two">Submit</span>
									</span>
								</button>
							</div>

						</form>

					</div>
				</div>
			</div>

		</div>
	</div>

	<%@include file="component/js-file.jsp"%>
	
	<script type="text/javascript">
		$(document).ready(function() {
			$('#exampleModal').modal('show');
		});
	</script>
</body>
</html>