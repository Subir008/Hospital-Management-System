<%@page import="java.util.List"%>
<%@page import="com.configuration.Configuration"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.dto.Doctor"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor</title>

<!--  Css file Added -->
<%@include file="component/css-file.jsp"%>

</head>
<body>

	<!-- Header Added -->
	<%@include file="component/header.jsp"%>

	<!-- Preloader -->
	<div class="preloader"></div>
	<!-- End Preloader -->

	<!-- Page Title -->
	<section class="page-title"
		style="background-image: url(assets/images/background/3.jpg)">
		<div class="auto-container">
			<h2>Expert Doctors</h2>
			<ul class="bread-crumb clearfix">
				<li><a href="index.jsp">Home</a></li>
				<li>Doctors</li>
			</ul>
		</div>
	</section>
	<!-- End Page Title -->

	<!-- Team Two -->
	<section class="team-two">
		<div class="auto-container">

			<!-- Sec Title -->
			<div class="sec-title centered">
				<div class="sec-title_title">Meet Our Team</div>
				<h2 class="sec-title_heading">
					Certified and experienced <br> doctors in our clinic
				</h2>
			</div>
			
			<%
				// Fetching all the doctor data
				DoctorDao doctorDao = new DoctorDao(Configuration.configure());
				List<Doctor> list = doctorDao.fetchDoctor();
				
			%>

			<div class="row clearfix">

				<%
					for (Doctor doctor : list)
					{
				%>
				<!-- Team Block Two -->
				<div class="team-block_two col-lg-3 col-md-4 col-sm-6">
					<div class="team-block_two-inner">
						<div class="team-block_two-image">
							<a href="doctor-details.jsp?id=<%= doctor.getDoc_id() %>">
							<div class="team-block_two-gradient"></div>
							<%
								// If doctor image is not available show a default image 
								if(doctor.getProfile_img() == null)
								{
							%>
							<img
								src="upload_content/doctor.png" style="height:360px; width:270px;"  alt="" />
							<%
								}else{
							%>
							<img
								src="upload_content/<%= doctor.getProfile_img() %>" style="height:360px; width:270px;" alt="" />							
							<%
								}
							%>
							</a>
							<div class="team-block_two-social">
								<span class="team-block_two-share flaticon-plus"></span>
								<div class="team-block_two-social-list">
									<a href="https://youtube.com/"
										class="youtube fa-brands fa-youtube"></a> <a
										href="https://twitter.com/"
										class="twitter fa-brands fa-twitter"></a> <a
										href="https://facebook.com/"
										class="facebook fa-brands fa-facebook-f"></a> <a
										href="https://instagram.com/"
										class="instagram fa-brands fa-instagram"></a>
								</div>
							</div>
						</div>
						<div class="team-block_two-content">
							<h6 class="team-block_two-title">
								<a href="doctor-details.jsp?id=<%= doctor.getDoc_id() %>"><%= doctor.getFull_name() %></a>
							</h6>
							<%
								if(doctor.getSpecialist().equals("General"))
								{
							%>
							<div class="team-block_two-category"><%= doctor.getSpecialist() %> Mediticion  </div>							
							<%
								}else{
							%>
							<div class="team-block_two-category"><%= doctor.getSpecialist() %> Specialist </div>
							<%
								}
							%>
						</div>
					</div>
				</div>
				<%
					}
				%>
			</div>

		</div>
	</section>
	<!-- End Team Two -->

	<!-- Testimonial Two -->
	<section class="testimonial-two style-two">
		<div class="testimonial-two_pattern"
			style="background-image: url(assets/images/background/pattern-15.png)"></div>
		<div class="auto-container">

			<!-- Sec Title -->
			<div class="sec-title light centered">
				<div class="sec-title_title">Customer says</div>
				<h2 class="sec-title_heading">Testimonials</h2>
			</div>
			<a class="testimonial-two-reviews" href="#">Read More Reviews</a>

			<div class="testimonial-outer">

				<!-- Client Testimonial Carousel -->
				<div class="client-testimonial-carousel owl-carousel owl-theme">

					<!-- Testimonial Two -->
					<div class="testimonial-block_two">
						<div class="testimonial-block_two-inner">
							<div class="testimonial-block_two-quote">
								<img src="assets/images/icons/quote.png" alt="" />
							</div>
							<div class="testimonial-block_two-text">There are many
								variations of passages of Lorem Ipsum available, but the
								majority have suffered alteration in some form, by injected
								humour, or randomised words which don't look even slightly
								believable. If you are going passage</div>
						</div>
					</div>

					<!-- Testimonial Two -->
					<div class="testimonial-block_two">
						<div class="testimonial-block_two-inner">
							<div class="testimonial-block_two-quote">
								<img src="assets/images/icons/quote.png" alt="" />
							</div>
							<div class="testimonial-block_two-text">There are many
								variations of passages of Lorem Ipsum available, but the
								majority have suffered alteration in some form, by injected
								humour, or randomised words which don't look even slightly
								believable. If you are going passage</div>
						</div>
					</div>

					<!-- Testimonial Two -->
					<div class="testimonial-block_two">
						<div class="testimonial-block_two-inner">
							<div class="testimonial-block_two-quote">
								<img src="assets/images/icons/quote.png" alt="" />
							</div>
							<div class="testimonial-block_two-text">There are many
								variations of passages of Lorem Ipsum available, but the
								majority have suffered alteration in some form, by injected
								humour, or randomised words which don't look even slightly
								believable. If you are going passage</div>
						</div>
					</div>

					<!-- Testimonial Two -->
					<div class="testimonial-block_two">
						<div class="testimonial-block_two-inner">
							<div class="testimonial-block_two-quote">
								<img src="assets/images/icons/quote.png" alt="" />
							</div>
							<div class="testimonial-block_two-text">There are many
								variations of passages of Lorem Ipsum available, but the
								majority have suffered alteration in some form, by injected
								humour, or randomised words which don't look even slightly
								believable. If you are going passage</div>
						</div>
					</div>

					<!-- Testimonial Two -->
					<div class="testimonial-block_two">
						<div class="testimonial-block_two-inner">
							<div class="testimonial-block_two-quote">
								<img src="assets/images/icons/quote.png" alt="" />
							</div>
							<div class="testimonial-block_two-text">There are many
								variations of passages of Lorem Ipsum available, but the
								majority have suffered alteration in some form, by injected
								humour, or randomised words which don't look even slightly
								believable. If you are going passage</div>
						</div>
					</div>

					<!-- Testimonial Two -->
					<div class="testimonial-block_two">
						<div class="testimonial-block_two-inner">
							<div class="testimonial-block_two-quote">
								<img src="assets/images/icons/quote.png" alt="" />
							</div>
							<div class="testimonial-block_two-text">There are many
								variations of passages of Lorem Ipsum available, but the
								majority have suffered alteration in some form, by injected
								humour, or randomised words which don't look even slightly
								believable. If you are going passage</div>
						</div>
					</div>

				</div>

				<!--Product Thumbs Carousel-->
				<div class="client-thumb-outer">
					<div class="client-thumbs-carousel owl-carousel owl-theme">
						<div class="thumb-item">
							<figure class="thumb-box">
								<img src="assets/images/resource/author-1.jpg" alt="">
							</figure>
							<div class="author-info">
								<div class="author-name">Nathan Hirsch</div>
								<div class="location">New York</div>
							</div>
						</div>
						<div class="thumb-item">
							<figure class="thumb-box">
								<img src="assets/images/resource/author-2.jpg" alt="">
							</figure>
							<div class="author-info">
								<div class="author-name">Nathan Hirsch</div>
								<div class="location">New York</div>
							</div>
						</div>
						<div class="thumb-item">
							<figure class="thumb-box">
								<img src="assets/images/resource/author-3.jpg" alt="">
							</figure>
							<div class="author-info">
								<div class="author-name">Nathan Hirsch</div>
								<div class="location">New York</div>
							</div>
						</div>
						<div class="thumb-item">
							<figure class="thumb-box">
								<img src="assets/images/resource/author-1.jpg" alt="">
							</figure>
							<div class="author-info">
								<div class="author-name">Nathan Hirsch</div>
								<div class="location">New York</div>
							</div>
						</div>
						<div class="thumb-item">
							<figure class="thumb-box">
								<img src="assets/images/resource/author-2.jpg" alt="">
							</figure>
							<div class="author-info">
								<div class="author-name">Nathan Hirsch</div>
								<div class="location">New York</div>
							</div>
						</div>
						<div class="thumb-item">
							<figure class="thumb-box">
								<img src="assets/images/resource/author-3.jpg" alt="">
							</figure>
							<div class="author-info">
								<div class="author-name">Nathan Hirsch</div>
								<div class="location">New York</div>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</section>
	<!-- End Testimonial Two -->

	<!-- TimeTable Section -->
	<section class="timetable-one style-two">
		<div class="auto-container">

			<!-- Sec Title -->
			<div class="sec-title centered">
				<div class="sec-title_title">Appointment Schedules</div>
				<h2 class="sec-title_heading">Doctors Time Table</h2>
			</div>

			<div class="table-outer">
				<!-- Doctors Time Table -->
				<table class="doctors-time-table">
					<thead>
						<tr>
							<th class="dark">Time Table</th>
							<th>Monday</th>
							<th>Tuesday</th>
							<th>Wednesday</th>
							<th>Thrusday</th>
							<th>Friday</th>
							<th>Saturday</th>
							<th>Sunday</th>
						</tr>
					</thead>

					<tbody>
						<!-- Table Row 08:00am -->
						<tr>
							<th>08:00am</th>
							<td><strong>Dental Care</strong>
								<p>
									8:00 am - 9:00 am <br> Room: 303
								</p>
								<div class="doctor-info">
									<figure class="thumb">
										<img src="assets/images/resource/author-3.jpg" alt="">
									</figure>
									<h4 class="name">Dr. Tania Riham</h4>
									<a href="appointment.html" class="theme-btn btn-style-one">
										<span class="btn-wrap"> <span class="text-one">Appoint
												Now</span> <span class="text-two">Appoint Now</span>
									</span>
									</a>
								</div></td>
							<td class="empty"></td>
							<td><strong>Orthopaedics</strong>
								<p>
									8:00 am - 9:00 am <br> Room: 303
								</p>
								<div class="doctor-info">
									<figure class="thumb">
										<img src="assets/images/resource/author-3.jpg" alt="">
									</figure>
									<h4 class="name">Dr. Tania Riham</h4>
									<a href="appointment.html" class="theme-btn btn-style-one">
										<span class="btn-wrap"> <span class="text-one">Appoint
												Now</span> <span class="text-two">Appoint Now</span>
									</span>
									</a>
								</div></td>
							<td class="empty"></td>
							<td><strong>Medicine</strong>
								<p>
									8:00 am - 9:00 am <br> Room: 303
								</p>
								<div class="doctor-info">
									<figure class="thumb">
										<img src="assets/images/resource/author-3.jpg" alt="">
									</figure>
									<h4 class="name">Dr. Tania Riham</h4>
									<a href="appointment.html" class="theme-btn btn-style-one">
										<span class="btn-wrap"> <span class="text-one">Appoint
												Now</span> <span class="text-two">Appoint Now</span>
									</span>
									</a>
								</div></td>
							<td class="empty"></td>
							<td><strong>Orthopaedics</strong>
								<p>
									8:00 am - 9:00 am <br> Room: 303
								</p>
								<div class="doctor-info">
									<figure class="thumb">
										<img src="assets/images/resource/author-3.jpg" alt="">
									</figure>
									<h4 class="name">Dr. Tania Riham</h4>
									<a href="appointment.html" class="theme-btn btn-style-one">
										<span class="btn-wrap"> <span class="text-one">Appoint
												Now</span> <span class="text-two">Appoint Now</span>
									</span>
									</a>
								</div></td>
						</tr>

						<!-- Table Row 10:00am -->
						<tr>
							<th>10:00am</th>
							<td class="empty"></td>
							<td><strong>Gynecology</strong>
								<p>
									9:00 am - 10:00 am <br> Room: 301
								</p>
								<div class="doctor-info">
									<figure class="thumb">
										<img src="assets/images/resource/author-3.jpg" alt="">
									</figure>
									<h4 class="name">Dr. Tania Riham</h4>
									<a href="appointment.html" class="theme-btn btn-style-one">
										<span class="btn-wrap"> <span class="text-one">Appoint
												Now</span> <span class="text-two">Appoint Now</span>
									</span>
									</a>
								</div></td>
							<td class="empty"></td>
							<td><strong>Cardiology</strong>
								<p>
									9:00 am - 10:00 am <br> Room: 301
								</p>
								<div class="doctor-info">
									<figure class="thumb">
										<img src="assets/images/resource/author-3.jpg" alt="">
									</figure>
									<h4 class="name">Dr. Tania Riham</h4>
									<a href="appointment.html" class="theme-btn btn-style-one">
										<span class="btn-wrap"> <span class="text-one">Appoint
												Now</span> <span class="text-two">Appoint Now</span>
									</span>
									</a>
								</div></td>
							<td class="empty"></td>
							<td><strong>Dental Care</strong>
								<p>
									9:00 am - 10:00 am <br> Room: 301
								</p>
								<div class="doctor-info">
									<figure class="thumb">
										<img src="assets/images/resource/author-3.jpg" alt="">
									</figure>
									<h4 class="name">Dr. Tania Riham</h4>
									<a href="appointment.html" class="theme-btn btn-style-one">
										<span class="btn-wrap"> <span class="text-one">Appoint
												Now</span> <span class="text-two">Appoint Now</span>
									</span>
									</a>
								</div></td>
							<td class="empty"></td>
						</tr>

						<!-- Table Row 11:00am -->
						<tr>
							<th>11:00am</th>
							<td><strong>Dental Care</strong>
								<p>
									8:00 am - 9:00 am <br> Room: 303
								</p>
								<div class="doctor-info">
									<figure class="thumb">
										<img src="assets/images/resource/author-3.jpg" alt="">
									</figure>
									<h4 class="name">Dr. Tania Riham</h4>
									<a href="appointment.html" class="theme-btn btn-style-one">
										<span class="btn-wrap"> <span class="text-one">Appoint
												Now</span> <span class="text-two">Appoint Now</span>
									</span>
									</a>
								</div></td>
							<td class="empty"></td>
							<td><strong>Orthopaedics</strong>
								<p>
									8:00 am - 9:00 am <br> Room: 303
								</p>
								<div class="doctor-info">
									<figure class="thumb">
										<img src="assets/images/resource/author-3.jpg" alt="">
									</figure>
									<h4 class="name">Dr. Tania Riham</h4>
									<a href="appointment.html" class="theme-btn btn-style-one">
										<span class="btn-wrap"> <span class="text-one">Appoint
												Now</span> <span class="text-two">Appoint Now</span>
									</span>
									</a>
								</div></td>
							<td class="empty"></td>
							<td><strong>Medicine</strong>
								<p>
									8:00 am - 9:00 am <br> Room: 303
								</p>
								<div class="doctor-info">
									<figure class="thumb">
										<img src="assets/images/resource/author-3.jpg" alt="">
									</figure>
									<h4 class="name">Dr. Tania Riham</h4>
									<a href="appointment.html" class="theme-btn btn-style-one">
										<span class="btn-wrap"> <span class="text-one">Appoint
												Now</span> <span class="text-two">Appoint Now</span>
									</span>
									</a>
								</div></td>
							<td class="empty"></td>
							<td><strong>Orthopaedics</strong>
								<p>
									8:00 am - 9:00 am <br> Room: 303
								</p>
								<div class="doctor-info">
									<figure class="thumb">
										<img src="assets/images/resource/author-3.jpg" alt="">
									</figure>
									<h4 class="name">Dr. Tania Riham</h4>
									<a href="appointment.html" class="theme-btn btn-style-one">
										<span class="btn-wrap"> <span class="text-one">Appoint
												Now</span> <span class="text-two">Appoint Now</span>
									</span>
									</a>
								</div></td>
						</tr>

						<!-- Table Row 11:30am -->
						<tr>
							<th>11:30am</th>
							<td class="empty"></td>
							<td><strong>Gynecology</strong>
								<p>
									9:00 am - 10:00 am <br> Room: 301
								</p>
								<div class="doctor-info">
									<figure class="thumb">
										<img src="assets/images/resource/author-3.jpg" alt="">
									</figure>
									<h4 class="name">Dr. Tania Riham</h4>
									<a href="appointment.html" class="theme-btn btn-style-one">
										<span class="btn-wrap"> <span class="text-one">Appoint
												Now</span> <span class="text-two">Appoint Now</span>
									</span>
									</a>
								</div></td>
							<td class="empty"></td>
							<td><strong>Cardiology</strong>
								<p>
									9:00 am - 10:00 am <br> Room: 301
								</p>
								<div class="doctor-info">
									<figure class="thumb">
										<img src="assets/images/resource/author-3.jpg" alt="">
									</figure>
									<h4 class="name">Dr. Tania Riham</h4>
									<a href="appointment.html" class="theme-btn btn-style-one">
										<span class="btn-wrap"> <span class="text-one">Appoint
												Now</span> <span class="text-two">Appoint Now</span>
									</span>
									</a>
								</div></td>
							<td class="empty"></td>
							<td><strong>Dental Care</strong>
								<p>
									9:00 am - 10:00 am <br> Room: 301
								</p>
								<div class="doctor-info">
									<figure class="thumb">
										<img src="assets/images/resource/author-3.jpg" alt="">
									</figure>
									<h4 class="name">Dr. Tania Riham</h4>
									<a href="appointment.html" class="theme-btn btn-style-one">
										<span class="btn-wrap"> <span class="text-one">Appoint
												Now</span> <span class="text-two">Appoint Now</span>
									</span>
									</a>
								</div></td>
							<td class="empty"></td>
						</tr>

						<!-- Table Row 12:00am -->
						<tr>
							<th>12:00am</th>
							<td><strong>Dental Care</strong>
								<p>
									8:00 am - 9:00 am <br> Room: 303
								</p>
								<div class="doctor-info">
									<figure class="thumb">
										<img src="assets/images/resource/author-3.jpg" alt="">
									</figure>
									<h4 class="name">Dr. Tania Riham</h4>
									<a href="appointment.html" class="theme-btn btn-style-one">
										<span class="btn-wrap"> <span class="text-one">Appoint
												Now</span> <span class="text-two">Appoint Now</span>
									</span>
									</a>
								</div></td>
							<td class="empty"></td>
							<td><strong>Orthopaedics</strong>
								<p>
									8:00 am - 9:00 am <br> Room: 303
								</p>
								<div class="doctor-info">
									<figure class="thumb">
										<img src="assets/images/resource/author-3.jpg" alt="">
									</figure>
									<h4 class="name">Dr. Tania Riham</h4>
									<a href="appointment.html" class="theme-btn btn-style-one">
										<span class="btn-wrap"> <span class="text-one">Appoint
												Now</span> <span class="text-two">Appoint Now</span>
									</span>
									</a>
								</div></td>
							<td class="empty"></td>
							<td><strong>Medicine</strong>
								<p>
									8:00 am - 9:00 am <br> Room: 303
								</p>
								<div class="doctor-info">
									<figure class="thumb">
										<img src="assets/images/resource/author-3.jpg" alt="">
									</figure>
									<h4 class="name">Dr. Tania Riham</h4>
									<a href="appointment.html" class="theme-btn btn-style-one">
										<span class="btn-wrap"> <span class="text-one">Appoint
												Now</span> <span class="text-two">Appoint Now</span>
									</span>
									</a>
								</div></td>
							<td class="empty"></td>
							<td><strong>Orthopaedics</strong>
								<p>
									8:00 am - 9:00 am <br> Room: 303
								</p>
								<div class="doctor-info">
									<figure class="thumb">
										<img src="assets/images/resource/author-3.jpg" alt="">
									</figure>
									<h4 class="name">Dr. Tania Riham</h4>
									<a href="appointment.html" class="theme-btn btn-style-one">
										<span class="btn-wrap"> <span class="text-one">Appoint
												Now</span> <span class="text-two">Appoint Now</span>
									</span>
									</a>
								</div></td>
						</tr>

						<!-- Table Row 01:00pm -->
						<tr>
							<th>01:00pm</th>
							<td class="empty"></td>
							<td><strong>Gynecology</strong>
								<p>
									9:00 am - 10:00 am <br> Room: 301
								</p>
								<div class="doctor-info">
									<figure class="thumb">
										<img src="assets/images/resource/author-3.jpg" alt="">
									</figure>
									<h4 class="name">Dr. Tania Riham</h4>
									<a href="appointment.html" class="theme-btn btn-style-one">
										<span class="btn-wrap"> <span class="text-one">Appoint
												Now</span> <span class="text-two">Appoint Now</span>
									</span>
									</a>
								</div></td>
							<td class="empty"></td>
							<td><strong>Cardiology</strong>
								<p>
									9:00 am - 10:00 am <br> Room: 301
								</p>
								<div class="doctor-info">
									<figure class="thumb">
										<img src="assets/images/resource/author-3.jpg" alt="">
									</figure>
									<h4 class="name">Dr. Tania Riham</h4>
									<a href="appointment.html" class="theme-btn btn-style-one">
										<span class="btn-wrap"> <span class="text-one">Appoint
												Now</span> <span class="text-two">Appoint Now</span>
									</span>
									</a>
								</div></td>
							<td class="empty"></td>
							<td><strong>Dental Care</strong>
								<p>
									9:00 am - 10:00 am <br> Room: 301
								</p>
								<div class="doctor-info">
									<figure class="thumb">
										<img src="assets/images/resource/author-3.jpg" alt="">
									</figure>
									<h4 class="name">Dr. Tania Riham</h4>
									<a href="appointment.html" class="theme-btn btn-style-one">
										<span class="btn-wrap"> <span class="text-one">Appoint
												Now</span> <span class="text-two">Appoint Now</span>
									</span>
									</a>
								</div></td>
							<td class="empty"></td>
						</tr>

						<!-- Table Row 02:00pm -->
						<tr>
							<th>02:00pm</th>
							<td><strong>Dental Care</strong>
								<p>
									8:00 am - 9:00 am <br> Room: 303
								</p>
								<div class="doctor-info">
									<figure class="thumb">
										<img src="assets/images/resource/author-3.jpg" alt="">
									</figure>
									<h4 class="name">Dr. Tania Riham</h4>
									<a href="appointment.html" class="theme-btn btn-style-one">
										<span class="btn-wrap"> <span class="text-one">Appoint
												Now</span> <span class="text-two">Appoint Now</span>
									</span>
									</a>
								</div></td>
							<td class="empty"></td>
							<td><strong>Orthopaedics</strong>
								<p>
									8:00 am - 9:00 am <br> Room: 303
								</p>
								<div class="doctor-info">
									<figure class="thumb">
										<img src="assets/images/resource/author-3.jpg" alt="">
									</figure>
									<h4 class="name">Dr. Tania Riham</h4>
									<a href="appointment.html" class="theme-btn btn-style-one">
										<span class="btn-wrap"> <span class="text-one">Appoint
												Now</span> <span class="text-two">Appoint Now</span>
									</span>
									</a>
								</div></td>
							<td class="empty"></td>
							<td><strong>Medicine</strong>
								<p>
									8:00 am - 9:00 am <br> Room: 303
								</p>
								<div class="doctor-info">
									<figure class="thumb">
										<img src="assets/images/resource/author-3.jpg" alt="">
									</figure>
									<h4 class="name">Dr. Tania Riham</h4>
									<a href="appointment.html" class="theme-btn btn-style-one">
										<span class="btn-wrap"> <span class="text-one">Appoint
												Now</span> <span class="text-two">Appoint Now</span>
									</span>
									</a>
								</div></td>
							<td class="empty"></td>
							<td><strong>Orthopaedics</strong>
								<p>
									8:00 am - 9:00 am <br> Room: 303
								</p>
								<div class="doctor-info">
									<figure class="thumb">
										<img src="assets/images/resource/author-3.jpg" alt="">
									</figure>
									<h4 class="name">Dr. Tania Riham</h4>
									<a href="appointment.html" class="theme-btn btn-style-one">
										<span class="btn-wrap"> <span class="text-one">Appoint
												Now</span> <span class="text-two">Appoint Now</span>
									</span>
									</a>
								</div></td>
						</tr>
					</tbody>
				</table>
			</div>

		</div>
	</section>
	<!-- End TimeTable Section -->


	<!-- Footer Section added -->
	<%@include file="component/footer.jsp"%>


	<!-- Js File Include -->

	<%@include file="component/js-file.jsp"%>
</body>
</html>