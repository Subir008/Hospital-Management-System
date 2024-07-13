<%@page import="com.dto.Doctor"%>
<%@page import="java.util.List"%>
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
<title>Insert title here</title>

<%@include file="component/css-file.jsp"%>

</head>
<body>

	<!-- Header Added -->
	<%@include file="component/header.jsp"%>
	
	<!-- Popup of Doctor Addition -->
				<a:if test="${not empty bookingConfirmed  }">
					<div class="col-md-12 mb-5">
						<div class="card paint-card">
							<div class="card-body">

								<h3 class="text-center text-success fs-4 font-weight-bold p-3">
									${bookingConfirmed}</h3>
							</div>
						</div>
					</div>
					<a:remove var="bookingConfirmed" scope="session" />
				</a:if>

	<!--  Form Section -->
	<section class="contact-form-section mt-3 pb-4">
		<div class="auto-container" style="max-width: 100%">
			<h3 class="text-center">Book Your Appointment</h3>

			<div class="row clearfix m-4 pb-5">
				<!-- Form Column -->
				<div class="form-column col-lg-7 col-md-12 col-sm-12 ">
					<div class="inner-column">

						<!-- Comment Form -->
						<div class="default-form contact-form">
							<form method="post" action="appointment-booking"
								id="contact-form">
								<div class="row clearfix">

									<input type="hidden" name="user_id"
										value=" ${userObj.id}       ">

									<div class="col-lg-6 col-md-6 col-sm-12 form-group">
										<label> Full Name</label> <input type="text" name="full_name"
											placeholder="" required="">
									</div>

									<div class="col-lg-6 col-md-6 col-sm-12 form-group">
										<label>Choose Gender</label> <select name="gender" required>
											<option>Male</option>
											<option>Female</option>
											<option>Others</option>
										</select>
									</div>

									<div class="col-lg-6 col-md-6 col-sm-12 form-group">
										<label>Enter Your Age</label> <input type="number" name="age"
											placeholder="">
									</div>

									<div class="col-lg-6 col-md-6 col-sm-12 form-group">
										<label>Email</label> <input type="text" name="email"
											placeholder="" required="">
									</div>

									<div class="col-lg-6 col-md-12 col-sm-12 form-group">
										<label>Contact Number</label> <input type="text"
											name="contact" placeholder="" required="">
									</div>

									<div class="col-lg-6 col-md-6 col-sm-12 form-group">
										<label>Appointment Date</label> <input type="date"
											name="appointment_date" placeholder="" required="">
									</div>

									<div class="col-lg-6 col-md-6 col-sm-12 form-group">
										<label>Disease</label> <input type="text" name="disease"
											placeholder="" required="">
									</div>

									<div class="col-lg-6 col-md-6 col-sm-12 form-group">
										<label>Doctor</label> <select name="doc_id" required>
											<option>---Select Doctor---</option>
											<%
												DoctorDao doctorDao = new DoctorDao(Configuration.configure());
												List<Doctor> list = doctorDao.fetchDoctor();
												
												for(Doctor doctor : list)
												{ %>
												
												<option><%=doctor.getFull_name()%>(<%= doctor.getSpecialist() %>)</option>
													
											<%	}
											%>
										</select>
									</div>

									<div class="col-lg-12 col-md-12 col-sm-12 form-group">
										<label>Address</label>
										<textarea class="" name="address"></textarea>
									</div>

									<div class="col-lg-12 col-md-12 col-sm-12 form-group">
									 <!-- If User is not logged in send the user to User login page -->
										<a:if test="${empty userObj }">
											<button class="theme-btn btn-style-one d-flex justify-content-center" href="user-login.jsp">
												<span class="btn-wrap"> <span class="text-one">Book
														Now</span> <span class="text-two">Book Now</span>
												</span>
											</button>
										</a:if>
										
									 <!-- If User is logged in take the appointment -->
										<a:if test="${not empty userObj }">
											<button class="theme-btn btn-style-one d-flex justify-content-center" >
												<span class="btn-wrap"> <span class="text-one">Book
														Now</span> <span class="text-two">Book Now</span>
												</span>
											</button>
										</a:if>
										

									</div>

								</div>
							</form>

						</div>
						<!-- End Comment Form -->

					</div>
				</div>
				<!-- Image Column -->
				<div class="image-column col-lg-5 col-md-12 col-sm-12">
					<div class="inner-column">
						<div class="image wow fadeInRight" data-wow-delay="0ms"
							data-wow-duration="1500ms">
							<img src="assets/images/resource/team-12.jpg" alt="" />
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End  Form Section -->


	<!-- Footer Section added -->
	<%@include file="component/footer.jsp"%>


	<!-- Js File Include -->

	<%@include file="component/js-file.jsp"%>
</body>
</html>