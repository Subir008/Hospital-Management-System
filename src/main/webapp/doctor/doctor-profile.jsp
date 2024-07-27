<%@page import="com.dto.Doctor"%>
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
<title>Doctor Profile</title>

<%@include file="component/css-file.jsp"%>
</head>
<body>


	<div class="page-wrapper">

		<!-- Preloader -->
		<div class="preloader"></div>
		<!-- End Preloader -->

		<%@include file="component/navbar.jsp"%>

	<%
	Doctor doctor = (Doctor) session.getAttribute("doctorObj") ;
	DoctorDao doctorDao = new DoctorDao(Configuration.configure());
	doctor = doctorDao.fetchDoctorById(doctor.getDoc_id());
	
	%>


		<!-- Page Title -->
		<section class="page-title"
			style="background-image: url(../assets/images/background/3.jpg)">
			<div class="auto-container">
				<h2><%= doctor.getFull_name() %></h2>
				<!-- <ul class="bread-crumb clearfix">
				<li><a href="index.html">Home</a></li>
				<li>Doctor Detail</li>
			</ul> -->
			</div>
		</section>
		<!-- End Page Title -->

		<!-- Doctor Single Section -->
		<section class="doctor-detail-section">
			<div class="auto-container">
				<div class="row clearfix">

					<!-- Image Column -->
					<div class="image-column col-lg-5 col-md-12 col-sm-12">
						<div class="inner-column">
							<div class="image">
								<img src="../upload_content/doctor-profile/<%= doctor.getProfile_img() %>" height="500px" width="400px" alt="" />
								<div class="number-box">
									<!-- 								<a href="https://www.youtube.com/watch?v=Fvae8nxzVz4" class="play-button" data-fancybox="" data-caption=""><i class="ripple"></i><i class="icon fa-solid fa-play fa-fw"></i></a> -->
								<%= doctor.getContact() %>
								</div>
							</div>
						</div>
					</div>

					<!-- Content Column -->
					<div class="content-column col-lg-7 col-md-12 col-sm-12">
						<div class="inner-column">
							<h3>Personal Details</h3>
							<ul class="doctor-info-list">
								<li><span><strong>Doctor Name</strong> </span><%= doctor.getFull_name() %></li>
								<li><span><strong>Primary Speciality</strong> </span><%= doctor.getSpecialist() %></li>
								<li><span><strong>Experience </strong> </span><%= doctor.getExperience() %>+ Years</li>
							</ul>
							<h3>Education & Training</h3>
							<ul class="doctor-info-list">
								<li><span><strong> Medical Education </strong> </span>University of Chicago,
									San Francisco</li>
								<li><span><strong> Qualification </strong> </span><%= doctor.getQualification() %></li>
								<li><span> <strong> Residency </strong> </span><%= doctor.getAddress() %></li>
								<li><span> <strong> Practice Areas </strong> </span>Stereotactic Radiosurgery,
									Glioma</li>
								<li><span><strong>Certifications </strong> </span>American Board of
									Neurological Surgery</li>
							</ul>
							<h3>Social Media</h3>
							<!-- Social Box -->
							<ul class="social-box">
								<li class="facebook"><a href="#"><span
										class="icon fab fa-facebook-f"></span></a></li>
								<li class="twitter"><a href="#"><span
										class="icon fab fa-twitter"></span></a></li>
								<li class="linkedin"><a href="#"><span
										class="icon fab fa-linkedin"></span></a></li>
								<li class="youtube"><a href="#"><span
										class="icon fab fa-youtube"></span></a></li>
								<li class="vk"><a href="#"><span class="icon fab fa-vk"></span></a></li>
							</ul>
						</div>
					</div>

				</div>
			</div>
		</section>
		<!-- End Doctors Page Section -->

		<!-- Biography Section -->
		<div class="biography-section">
			<div class="pattern-one"
				style="background-image: url(images/icons/pattern-icon-10.html);"></div>
			<div class="auto-container">
				<div class="row clearfix">

					<!-- Title Column -->
					<div class="title-column col-lg-4 col-md-12 col-sm-12">
						<h4>biography</h4>
					</div>

					<!-- Content Column -->
					<div class="content-column col-lg-8 col-md-12 col-sm-12">
						<div class="inner-column">
							<p><%= doctor.getBio() %>/p>
							
							<div class="signature">
								<img src="assets/images/icons/signature.png" alt="" />
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
		<!-- End Biography Section -->


	</div>


	<%@include file="component/js-file.jsp"%>
</body>
</html>