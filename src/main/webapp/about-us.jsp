<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>About Us</title>

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
			<h2>About Us</h2>
			<ul class="bread-crumb clearfix">
				<li><a href="index.jsp">Home</a></li>
				<li>About Us</li>
			</ul>
		</div>
	</section>
	<!-- End Page Title -->

	<!-- About Two -->
	<section class="about-two style-two">
		<div class="about-two_pattern"
			style="background-image: url(assets/images/background/pattern-11.png)"></div>
		<div class="auto-container">

			<div class="row clearfix">

				<!-- About Two Content Column -->
				<div class="about-two_content-column col-lg-6 col-md-12 col-sm-12">
					<div class="about-two_content-inner">
						<!-- Sec Title -->
						<div class="sec-title">
							<div class="sec-title_title">About Clinic</div>
							<h2 class="sec-title_heading">
								Short Story About Merit <br> Clinic Since 1992
							</h2>
						</div>
						<p class="about-two_text">We provide the most full medical
							services, so every person could have the pportunity o receive
							qualitative medical help.</p>
						<p class="about-two_text">Our Clinic has grown to provide a
							world class facility for the treatment of tooth loss, dental
							cosmetics and bore advanced restorative dentistry. We are among
							the most qualified implant providers in the AUS with over 30
							years of uality training and experience.</p>
						<div class="row clearfix">

							<!-- About Two Feature -->
							<div class="about-two_feature col-lg-6 col-md-6 col-sm-6">
								<div class="about-two_feature-inner">
									<span class="about-two_feature-icon flaticon-thumbs-up"></span>
									<strong>Infection Prevention</strong>
								</div>
								It is a long established fact <br> that a reader will be
								distracted.
							</div>

							<!-- About Two Feature -->
							<div class="about-two_feature col-lg-6 col-md-6 col-sm-6">
								<div class="about-two_feature-inner">
									<span
										class="about-two_feature-icon flaticon-medical-assistance"></span>
									<strong>Inpatient Services</strong>
								</div>
								It is a long established fact <br> that a reader will be
								distracted.
							</div>

						</div>
						<div class="d-flex align-items-center flex-wrap">
							<!-- Button Box -->
							<a href="appointment.html" class="theme-btn btn-style-one"> <span
								class="btn-wrap"> <span class="text-one">More
										about</span> <span class="text-two">More about</span>
							</span>
							</a>
							<!-- Signature -->
							<div class="about-two_signature">
								<img src="assets/images/icons/signature.png" alt="" />
							</div>
							<div class="about-two_author">
								Michel Fernandez<br> <span>Founder of Merit Hospital</span>
							</div>
						</div>
					</div>
				</div>

				<!-- About Two Images Column -->
				<div class="about-two_images-column col-lg-6 col-md-12 col-sm-12">
					<div class="about-two_images-inner">

						<!-- About Two Video -->
						<div class="about-two_video">
							<img src="assets/images/resource/video-image.jpg" alt="" /> <a
								href="https://www.youtube.com/watch?v=kxPCFljwJws"
								class="lightbox-video about-two_video-box fa fa-play"><i
								class="ripple"></i></a>
						</div>
						<div class="about-two_tag">
							<img src="assets/images/icons/tag-icon.png" alt="" />
						</div>
						<div class="about-two_image">
							<img src="assets/images/resource/about-3.jpg" alt="" />
						</div>

					</div>
				</div>

			</div>
		</div>
	</section>
	<!-- End About Two -->
	
	<!-- CTA One -->
    <section class="cta-one " style="margin-bottom: 150px">
		<div class="cta-one_pattern" style="background-image:url(assets/images/background/pattern-12.png)"></div>
		<div class="auto-container">
			<div class="cta-one_inner-container">
				<div class="d-flex justify-content-between align-items-center flex-wrap">
					<span class="cta-one_icon flaticon-hospital"></span>
					<div class="cta-one_content">
						<div class="cta-one_title">Quality & Excelence</div>
						<h2 class="cta-one_heading">Expect Nothing But The Best <br> From Medical Technology</h2>
					</div>
					<div class="cta-one_button">
						<a href="appointment.html" class="theme-btn btn-style-three">
							<span class="btn-wrap">
								<span class="text-one">Read More</span>
								<span class="text-two">Read More</span>
							</span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End CTA One -->
	

	<!-- Footer Section added -->
	<%@include file="component/footer.jsp"%>


	<!-- Js File Include -->

	<%@include file="component/js-file.jsp"%>
</body>
</html>