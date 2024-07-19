<%@page import="com.dto.Specialist"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.SpecialistDao"%>
<%@page import="com.configuration.Configuration"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.dto.Doctor"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Profile Details</title>

<%@include file="component/css-file.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}

label {
	font-size: 19px;
	font-weight: bold;
}
input{
font-size: 20px;
}

</style>


</head>
<body>

	<%@include file="component/navbar.jsp"%>

	<!-- Model of Password Update -->
	<a:if test="${not empty PasswordUpdate  }">
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
							${PasswordUpdate}</h3>
					</div>

				</div>
			</div>
		</div>

		<a:remove var="PasswordUpdate" scope="session" />
	</a:if>

	<!-- Model of Error -->
	<a:if test="${not empty Error  }">
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
							${Error}</h3>
					</div>

				</div>
			</div>
		</div>
		<a:remove var="Error" scope="session" />
	</a:if>		

	<!-- Model of Password Not Match -->
	<a:if test="${not empty PasswordNotMatch  }">
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
							${PasswordNotMatch}</h3>
					</div>

				</div>
			</div>
		</div>
		<a:remove var="PasswordNotMatch" scope="session" />
	</a:if>
		
	<!-- Model of Password Wrong -->
	<a:if test="${not empty PasswordWrong  }">
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
							${PasswordWrong}</h3>
					</div>

				</div>
			</div>
		</div>
		<a:remove var="PasswordWrong" scope="session" />
	</a:if>
		

	<div class="row clearfix m-5 pb-5">
		<!-- Form Column -->
		<div class="col-md-4">
			<div class="card paint-card ">
				<div class="card-body  text-success pl-5 pr-5">
					<div class="inner-column">
						<h3 class="text-center pb-4 text-danger text-uppercase">Change
							Password</h3>

						<!-- Comment Form -->
						<div class="default-form contact-form">
							<form method="post" action="../update-doctor-password" id="contact-form">
								<div class="row clearfix">

									<input type="hidden" name="doc_id" value=" ${doctorObj.doc_id}">
									<input type="hidden" name="email" value="${doctorObj.email }">

									<div class="col-lg-12 col-md-12 col-sm-12 form-group">
										<label class="font-weight-bold"> Current Password</label> <input
											type="text" name="old_password" placeholder="" required="">
									</div>


									<div class="col-lg-12 col-md-12 col-sm-12 form-group">
										<label>New Password</label> <input type="text"
											name="new_password" placeholder="">
									</div>

									<div class="col-lg-12 col-md-12 col-sm-12 form-group">
										<label>Confirm Password</label> <input type="text"
											name="confirm_password" placeholder="" required="">
									</div>

									<div class="col-lg-12 col-md-12 col-sm-12 form-group">

										<button
											class="theme-btn btn-style-one d-flex justify-content-center col-12">
											<span class="btn-wrap"> <span class="text-one">Update Password
											</span> <span class="text-two">Update Password</span>
											</span>
										</button>

									</div>

								</div>
							</form>

						</div>
						<!-- End Comment Form -->

					</div>
				</div>
			</div>
		</div>
		
		<div class="col-md-8 d-flex justify-content-end">

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
			Doctor doctor = (Doctor) session.getAttribute("doctorObj");
			DoctorDao doctorDao = new DoctorDao(Configuration.configure());
			doctor = doctorDao.fetchDoctorById(doctor.getDoc_id());
			%>

			<div class="card paint-card col-md-10">
				<div class="card-body contact-form default-form text-success p-5">
					<h3 class="text-center mb-3 pb-4 text-uppercase text-primary">Update
						Doctor Details</h3>
					<form action="../update-profile-details" method="post" class="">
						<div class=" form-group row mb-3">
							<label class="form-label  font-size">Full Name</label> <input
								type="text" class="form-control " name="name"
								placeholder="Enter Your Name" required="required"
								value="<%=doctor.getFull_name()%>">
						</div>
						<div class="form-group row mb-3">
							<label class="form-label  font-size">DOB</label> <input
								type="date" class="form-control " name="dob"
								placeholder="Enter Your Date of Birth"
								value="<%=doctor.getDob()%>">
						</div>
						<div class="form-group row mb-3 ">
							<label class="form-label  font-size">Qualification</label> <input
								type="text" class="form-control " name="qualification"
								placeholder="Enter Your Qualification"
								value="<%=doctor.getQualification()%>">
						</div>
						<div class="form-group row mb-3">
							<label class="form-label  font-size">Specialist</label> <select
								class="form-control " name="specialist">
								<option><%=doctor.getSpecialist()%></option>

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
								placeholder="Enter Your Email" required="required" readonly
								value="<%=doctor.getEmail()%>">
						</div>
						<div class="form-group row mb-3">
							<label class="form-label  font-size">Contact No.</label> <input
								type="tel" class="form-control " name="contact"
								placeholder="Enter Your Contact No." required="required" readonly
								value="<%=doctor.getContact()%>">
						</div>
						

						<input type="hidden" name="doc_id" value="<%=doctor.getDoc_id()%>">
						<div class="form-group  mt-5 text-center">
							<button class="theme-btn btn-style-one  col-8">
								<span class="btn-wrap " style="float: none; font-size: 17px">
									<span class="text-one">Update Details</span> <span class="text-two">Update Details</span>
								</span>
							</button>
						</div>
					</form>

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