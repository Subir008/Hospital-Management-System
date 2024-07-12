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

	<!--  Form Section -->
	<section class="contact-form-section mt-3">
		<div class="auto-container">
			<div class="row clearfix m-4">
				<!-- Form Column -->
				<div class="form-column col-lg-7 col-md-12 col-sm-12 ">
					<div class="inner-column">
						<h3 class="text-center">Book Your Appointment</h3>

						<!-- Comment Form -->
						<div class="default-form contact-form">
							<form method="post"
								action="https://html.themerange.net/merit/merit/sendemail.php"
								id="contact-form">
								<div class="row clearfix">

									<div class="col-lg-6 col-md-6 col-sm-12 form-group">
										<label> Full Name</label> <input type="text" name="username"
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
										<label>Contact Number</label> <input type="text" name="phone"
											placeholder="" required="">
									</div>

									<div class="col-lg-6 col-md-6 col-sm-12 form-group">
										<label>Appointment Date</label> <input type="date" name="date"
											placeholder="" required="">
									</div>

									<div class="col-lg-6 col-md-6 col-sm-12 form-group">
										<label>Disease</label> <input type="text" name="disease"
											placeholder="" required="">
									</div>

									<div class="col-lg-6 col-md-6 col-sm-12 form-group">
										<label>Doctor</label> <select name="doctor" required>
											<option>---Select Doctor---</option>
										</select>
									</div>

									<div class="col-lg-12 col-md-12 col-sm-12 form-group">
										<label>Address</label>
										<textarea class="" name="address"></textarea>
									</div>

									<div class="col-lg-12 col-md-12 col-sm-12 form-group">
										<button class="theme-btn btn-style-one">
											<span class="btn-wrap"> <span class="text-one">Contact
													Us</span> <span class="text-two">Contact Us</span>
											</span>
										</button>
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

	<!-- Js File Include -->
	<%@include file="component/js-file.jsp"%>
</body>
</html>