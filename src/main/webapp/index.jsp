<%@page import="java.util.List"%>
<%@page import="com.dto.Department"%>
<%@page import="com.dao.DepartmentDao"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.configuration.Configuration"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
/* Connection connection = Configuration.configure();
out.print(connection); */
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>

<%@include file="component/css-file.jsp"%>

</head>

<body class="hidden-bar-wrapper">

	<div class="page-wrapper">

		<!-- Preloader -->
		<div class="preloader"></div>
		<!-- End Preloader -->


		<!-- Header Added -->
		<%@include file="component/header.jsp"%>

		<!-- Slider One -->
		<section class="slider-one">
			<div class="main-slider-carousel owl-carousel owl-theme">

				<!-- Slide 01 -->
				<div class="slider-one_slide"
					style="background-image: url(assets/images/main-slider/image-1.jpg)">
					<div class="auto-container">

						<!-- Content Column -->
						<div class="slider-one_content">
							<div class="slider-one_content-inner">
								<div class="slider-one_title">best medical business
									template</div>
								<h1 class="slider-one_heading">
									Contact The Best <span>Doctores</span>
								</h1>
								<div class="row clearfix">
									<div class="column col-lg-6 col-md-6 col-sm-12">
										<ul class="slider-one_list">
											<li>Latest Advancements</li>
											<li>Critical Palliative Care</li>
										</ul>
									</div>
									<div class="column col-lg-6 col-md-6 col-sm-12">
										<ul class="slider-one_list">
											<li>Professional Healthcare</li>
											<li>State of the Art Research</li>
										</ul>
									</div>
								</div>
								<div class="slider-one_buttons">
									<a href="user-appointment.jsp" class="theme-btn btn-style-one">
										<span class="btn-wrap"> <span class="text-one">Make
												Appointment</span> <span class="text-two">Make Appointment</span>
									</span>
									</a> <a href="about.html" class="theme-btn btn-style-two"> <span
										class="btn-wrap"> <span class="text-one">Learn
												More</span> <span class="text-two">Learn More</span>
									</span>
									</a>
								</div>
							</div>
						</div>

					</div>
				</div>
				<!-- End Slide 01 -->

				<!-- Slide 02 -->
				<div class="slider-one_slide"
					style="background-image: url(assets/images/main-slider/image-1.jpg)">
					<div class="auto-container">

						<!-- Content Column -->
						<div class="slider-one_content">
							<div class="slider-one_content-inner">
								<div class="slider-one_title">best medical business
									template</div>
								<h1 class="slider-one_heading">
									Contact The Best <span>Doctores</span>
								</h1>
								<div class="row clearfix">
									<div class="column col-lg-6 col-md-6 col-sm-12">
										<ul class="slider-one_list">
											<li>Latest Advancements</li>
											<li>Critical Palliative Care</li>
										</ul>
									</div>
									<div class="column col-lg-6 col-md-6 col-sm-12">
										<ul class="slider-one_list">
											<li>Professional Healthcare</li>
											<li>State of the Art Research</li>
										</ul>
									</div>
								</div>
								<div class="slider-one_buttons">
									<a href="user-appointment.jsp" class="theme-btn btn-style-one">
										<span class="btn-wrap"> <span class="text-one">Make
												Appointment</span> <span class="text-two">Make Appointment</span>
									</span>
									</a> <a href="about.html" class="theme-btn btn-style-two"> <span
										class="btn-wrap"> <span class="text-one">Learn
												More</span> <span class="text-two">Learn More</span>
									</span>
									</a>
								</div>
							</div>
						</div>

					</div>
				</div>
				<!-- End Slide 02 -->

				<!-- Slide 03 -->
				<div class="slider-one_slide"
					style="background-image: url(assets/images/main-slider/image-1.jpg)">
					<div class="auto-container">

						<!-- Content Column -->
						<div class="slider-one_content">
							<div class="slider-one_content-inner">
								<div class="slider-one_title">best medical business
									template</div>
								<h1 class="slider-one_heading">
									Contact The Best <span>Doctores</span>
								</h1>
								<div class="row clearfix">
									<div class="column col-lg-6 col-md-6 col-sm-12">
										<ul class="slider-one_list">
											<li>Latest Advancements</li>
											<li>Critical Palliative Care</li>
										</ul>
									</div>
									<div class="column col-lg-6 col-md-6 col-sm-12">
										<ul class="slider-one_list">
											<li>Professional Healthcare</li>
											<li>State of the Art Research</li>
										</ul>
									</div>
								</div>
								<div class="slider-one_buttons">
									<a href="user-appointment.jsp" class="theme-btn btn-style-one">
										<span class="btn-wrap"> <span class="text-one">Make
												Appointment</span> <span class="text-two">Make Appointment</span>
									</span>
									</a> <a href="about.html" class="theme-btn btn-style-two"> <span
										class="btn-wrap"> <span class="text-one">Learn
												More</span> <span class="text-two">Learn More</span>
									</span>
									</a>
								</div>
							</div>
						</div>

					</div>
				</div>
				<!-- End Slide 03 -->

			</div>
		</section>
		<!-- End Main Slider Section -->

		<!-- About One -->
		<section class="about-one">
			<div class="about-one_pattern"
				style="background-image: url(assets/images/background/pattern-1.png)"></div>
			<div class="auto-container">
				<div class="row clearfix">

					<!-- Image Column -->
					<div class="about-one_image-column col-lg-6 col-md-12 col-sm-12">
						<div class="about-one_image-inner-column">
							<div class="about-one_icon">
								<img src="assets/images/icons/plus.png" alt="" />
							</div>
							<div class="about-one_image">
								<img src="assets/images/resource/about-1.jpg" alt="" />
							</div>
							<div class="about-one_image-two">
								<img src="assets/images/resource/about-2.jpg" alt="" />
							</div>
						</div>
					</div>

					<!-- Content Column -->
					<div class="about-one_content-column col-lg-6 col-md-12 col-sm-12">
						<div class="about-one_content-inner-column">
							<div class="sec-title">
								<div class="sec-title_title">Visit Our Hospital</div>
								<h2 class="sec-title_heading">The better place of medical
									hospital center.</h2>
								<div class="sec-title_text">Quis ipsum dolor sit amet,
									consectetur adipiscing elit sed do eiusmod tempor incididunt ut
									labore et dolore magna aliqua ipsum ultrices gravida risus
									commodo viverra mae cenas accumsan lacus vel. facilisis
									suspendisseipsum dolor sit amet consectetur adipisicing elit
									sed do eiusmod tempor incididunt ut labore et dolore magna
									aliqua enim ad minim veniam, quis nostrud.</div>
							</div>
							<div class="about-one_bold">Effective Medical Treatment</div>
							<div class="about-one_text">Lorem ipsum dolor sit amet,
								consectetur adipiscing elit. Ut elit tellus, luctus nec
								ullamcorper mattis, pulvinar dapibus leo.</div>
							<div class="row clearfix">
								<div class="column col-lg-6 col-md-6 col-sm-12">
									<ul class="about-one_list">
										<li>Medicine and instrument</li>
										<li>Instant Operation Appointment</li>
									</ul>
								</div>
								<div class="column col-lg-6 col-md-6 col-sm-12">
									<ul class="about-one_list">
										<li>From Scintific Jornal</li>
										<li>100% Expert Doctors</li>
									</ul>
								</div>
							</div>

							<!-- Button Box -->
							<div class="about-one_button">
								<a href="about.html" class="theme-btn btn-style-one"> <span
									class="btn-wrap"> <span class="text-one">Discover
											More</span> <span class="text-two">Discover More</span>
								</span>
								</a>
							</div>

						</div>
					</div>

				</div>
			</div>
		</section>
		<!-- End About One -->

		<!-- Services One -->
		<section class="services-one">
			<div class="services-one_pattern"
				style="background-image: url(assets/images/background/pattern-2.png)"></div>
			<div class="services-one_pattern-two"
				style="background-image: url(assets/images/background/pattern-3.png)"></div>
			<div class="auto-container">
				<!-- Sec Title -->
				<div class="sec-title">
					<div class="sec-title_title">WHAT WE DO</div>
					<h2 class="sec-title_heading">
						We Deliver Quality Care <br> Giving Services
					</h2>
				</div>

				<div class="four-item-carousel owl-carousel owl-theme">

					<!-- Service Block -->
					<div class="service-block">
						<div class="service-block_inner">
							<div class="service-one_smog-layer"
								style="background-image: url(assets/images/background/pattern-4.png)"></div>
							<span class="service-block_icon flaticon-examining-table"></span>
							<h4 class="service-block_heading">
								<a href="intensive-care.html">Holter Monitoring</a>
							</h4>
							<div class="service-block_text">Dicta explicabo. Nemo enim
								ipsam voluptatem quia voluptas.</div>
							<a class="service-block-more" href="intensive-care.html">Read
								More</a>
						</div>
					</div>

					<!-- Service Block -->
					<div class="service-block">
						<div class="service-block_inner">
							<div class="service-one_smog-layer"
								style="background-image: url(assets/images/background/pattern-4.png)"></div>
							<span class="service-block_icon flaticon-mri"></span>
							<h4 class="service-block_heading">
								<a href="intensive-care.html">MRI Scan and Imaging</a>
							</h4>
							<div class="service-block_text">Dicta explicabo. Nemo enim
								ipsam voluptatem quia voluptas.</div>
							<a class="service-block-more" href="intensive-care.html">Read
								More</a>
						</div>
					</div>

					<!-- Service Block -->
					<div class="service-block">
						<div class="service-block_inner">
							<div class="service-one_smog-layer"
								style="background-image: url(assets/images/background/pattern-4.png)"></div>
							<span class="service-block_icon flaticon-dentist-chair"></span>
							<h4 class="service-block_heading">
								<a href="intensive-care.html">Express Blood Tests</a>
							</h4>
							<div class="service-block_text">Dicta explicabo. Nemo enim
								ipsam voluptatem quia voluptas.</div>
							<a class="service-block-more" href="intensive-care.html">Read
								More</a>
						</div>
					</div>

					<!-- Service Block -->
					<div class="service-block">
						<div class="service-block_inner">
							<div class="service-one_smog-layer"
								style="background-image: url(assets/images/background/pattern-4.png)"></div>
							<span class="service-block_icon flaticon-ultrasound"></span>
							<h4 class="service-block_heading">
								<a href="intensive-care.html">Ultrasound and Screenings</a>
							</h4>
							<div class="service-block_text">Dicta explicabo. Nemo enim
								ipsam voluptatem quia voluptas.</div>
							<a class="service-block-more" href="intensive-care.html">Read
								More</a>
						</div>
					</div>

					<!-- Service Block -->
					<div class="service-block">
						<div class="service-block_inner">
							<div class="service-one_smog-layer"
								style="background-image: url(assets/images/background/pattern-4.png)"></div>
							<span class="service-block_icon flaticon-examining-table"></span>
							<h4 class="service-block_heading">
								<a href="intensive-care.html">Holter Monitoring</a>
							</h4>
							<div class="service-block_text">Dicta explicabo. Nemo enim
								ipsam voluptatem quia voluptas.</div>
							<a class="service-block-more" href="intensive-care.html">Read
								More</a>
						</div>
					</div>

					<!-- Service Block -->
					<div class="service-block">
						<div class="service-block_inner">
							<div class="service-one_smog-layer"
								style="background-image: url(assets/images/background/pattern-4.png)"></div>
							<span class="service-block_icon flaticon-mri"></span>
							<h4 class="service-block_heading">
								<a href="intensive-care.html">MRI Scan and Imaging</a>
							</h4>
							<div class="service-block_text">Dicta explicabo. Nemo enim
								ipsam voluptatem quia voluptas.</div>
							<a class="service-block-more" href="intensive-care.html">Read
								More</a>
						</div>
					</div>

					<!-- Service Block -->
					<div class="service-block">
						<div class="service-block_inner">
							<div class="service-one_smog-layer"
								style="background-image: url(assets/images/background/pattern-4.png)"></div>
							<span class="service-block_icon flaticon-dentist-chair"></span>
							<h4 class="service-block_heading">
								<a href="intensive-care.html">Express Blood Tests</a>
							</h4>
							<div class="service-block_text">Dicta explicabo. Nemo enim
								ipsam voluptatem quia voluptas.</div>
							<a class="service-block-more" href="intensive-care.html">Read
								More</a>
						</div>
					</div>

					<!-- Service Block -->
					<div class="service-block">
						<div class="service-block_inner">
							<div class="service-one_smog-layer"
								style="background-image: url(assets/images/background/pattern-4.png)"></div>
							<span class="service-block_icon flaticon-ultrasound"></span>
							<h4 class="service-block_heading">
								<a href="intensive-care.html">Ultrasound and Screenings</a>
							</h4>
							<div class="service-block_text">Dicta explicabo. Nemo enim
								ipsam voluptatem quia voluptas.</div>
							<a class="service-block-more" href="intensive-care.html">Read
								More</a>
						</div>
					</div>

				</div>
			</div>
		</section>
		<!-- End Services One -->

		<!-- Modern One -->
		<section class="modern-one">
			<div class="modern-one_pattern"
				style="background-image: url(assets/images/background/pattern-2.png)"></div>
			<div class="auto-container">

				<div class="row clearfix">
					<!-- Content Column -->
					<div class="modern-one_content-column col-lg-6 col-md-12 col-sm-12">
						<div class="modern-one_content-inner">
							<!-- Sec Title -->
							<div class="sec-title">
								<div class="sec-title_title">WHAT WE DO</div>
								<h2 class="sec-title_heading">
									We Deliver Quality Care <br> Giving Services
								</h2>
								<div class="sec-title_text">Ut enim ad minim. facilisis
									suspendisseipsum dolor sit amet dolore consectetur adipisicing
									elit sed do eiusmod tempor incididunt ut labore et magna aliqua
									enim ad minim veniam, quis nostrud.</div>
							</div>
							<div class="modern-one_block">
								<div class="modern-one_block-inner">
									<span class="modern-one_icon flaticon-stethoscope"></span> <strong
										class="modern-one_bold">Infection Prevention</strong> There
									are many variations of passages of <br> Lorem Ipsum
									available majority.
								</div>
							</div>
							<div class="modern-one_button">
								<a href="about.html" class="theme-btn btn-style-two"> <span
									class="btn-wrap"> <span class="text-one">Learn
											More</span> <span class="text-two">Learn More</span>
								</span>
								</a>
							</div>
						</div>
					</div>
					<!-- Image Column -->
					<div class="modern-one_image-column col-lg-6 col-md-12 col-sm-12">
						<div class="modern-one_image-inner">
							<div class="modern-one_image">
								<img src="assets/images/resource/modern.jpg" alt="" />
							</div>

							<div class="counter-one"
								style="background-image: url(assets/images/background/pattern-5.png)">
								<div class="row clearfix">

									<!-- Counter Column -->
									<div class="counter-one_block col-lg-4 col-md-6 col-sm-6">
										<div class="counter-one_inner">
											<span class="counter-one_icon flaticon-doctor"></span>
											<div class="counter-one_counter d-flex">
												+<span class="odometer" data-count="350"></span>
											</div>
											<div class="counter-one_text">Doctor’s Team</div>
										</div>
									</div>

									<!-- Counter Column -->
									<div class="counter-one_block col-lg-4 col-md-6 col-sm-6">
										<div class="counter-one_inner">
											<span class="counter-one_icon flaticon-surgery-room"></span>
											<div class="counter-one_counter d-flex">
												<span class="odometer" data-count="2150"></span>
											</div>
											<div class="counter-one_text">Success Mission</div>
										</div>
									</div>

									<!-- Counter Column -->
									<div class="counter-one_block col-lg-4 col-md-6 col-sm-6">
										<div class="counter-one_inner">
											<span class="counter-one_icon flaticon-medical-team"></span>
											<div class="counter-one_counter d-flex">
												+<span class="odometer" data-count="225"></span>
											</div>
											<div class="counter-one_text">Successfull Surgeries</div>
										</div>
									</div>

								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- End Modern One -->

		<!-- Department One -->
		<section class="department-one">
			<div class="department-one_image"
				style="background-image: url(assets/images/background/1.jpg)"></div>
			<div class="auto-container">

				<!-- Sec Title -->
				<div class="sec-title light centered">
					<div class="sec-title_title">OUR SPECIALTIES</div>
					<h2 class="sec-title_heading">Medical departments</h2>
				</div>

				<div class="four-item-carousel owl-carousel owl-theme">
				
				<%
					// Sending connection information to the DepartmentDao Class  
					DepartmentDao departmentDao = new DepartmentDao (Configuration.configure());
					
					// Fetching details of every department and store in the list
					List<Department> list = departmentDao.fetchAllDepartment();
					
					// Iterate the list and show the details
					for (Department department: list)
					{
				%>
					<!-- Department Block -->
					<div class="department-one_block">
						<div class="department-one_block-inner">
							<div class="department-one_block-image">
								<a href="department-detail.jsp?id=<%= department.getDept_id() %>"><img
									src="upload_content/department/<%= department.getDept_img() %>" alt="" /></a>
							</div>
							<div class="department-one_block-content">
								<span class="department-one_block-icon <%= department.getFlaticon_name() %>"></span>
								<h5 class="department-one_block-heading">
									<a href="department-detail.jsp?id=<%= department.getDept_id() %>">Hematology</a>
								</h5>
								<div class="department-one_block-text">Nemo ipsam
									voluptatem quia voluptas sit enim aspernatura ut odit ddsa
									ursa.</div>
								<a class="department-one_block-more"
									href="department-detail.jsp?id=<%= department.getDept_id() %>">read more</a>
							</div>
						</div>
					</div>
				
				<%
					}
				%>
			
				</div>
			</div>
		</section>
		<!-- End Department One -->

		<!-- Team One -->
		<section class="team-one">
			<div class="team-one_pattern" data-parallax='{"x" : 50}'
				style="background-image: url(assets/images/icons/team-icon.png)"></div>
			<div class="auto-container">

				<div class="row clearfix">

					<!-- Team Content Column -->
					<div class="team-one_content-column col-lg-5 col-md-12 col-sm-12">
						<div class="team-one_content-inner">
							<!-- Sec Title -->
							<div class="sec-title">
								<div class="sec-title_title">meet our team</div>
								<h2 class="sec-title_heading">Certified and experienced
									doctors in our clinic</h2>
							</div>
							<p class="team-one_text">Dicta sunt explicabo. Nemo enim
								ipsam voluptatem quia voluptas sit aspernaturaut odit aut fugit,
								sed quia consequuntur. Dicta sunt explicabo. Nemo enim ipsam
								quia voluptas.</p>
							<p class="team-one_text">Wiusmod tempor incididunt ut labore
								et dolore magna aliqua. Ut enim ad minim. facilisis
								suspendisseipsum dolor sit amet consectetur adipisicing elit sed
								do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
							<div class="team-one_buttons">
								<a href="appointment.html" class="theme-btn btn-style-one">
									<span class="btn-wrap"> <span class="text-one">Make
											Appointment</span> <span class="text-two">Make Appointment</span>
								</span>
								</a> <a href="doctors.html" class="theme-btn btn-style-two"> <span
									class="btn-wrap"> <span class="text-one">view all
											doctors</span> <span class="text-two">view all doctors</span>
								</span>
								</a>
							</div>
							<div class="team-one_telescope">
								<img src="assets/images/resource/telescope.png" alt="" />
							</div>
						</div>
					</div>

					<!-- Teams Column -->
					<div class="team-one_teams-column col-lg-7 col-md-12 col-sm-12">
						<div class="team-one_teams-inner">
							<div class="row clearfix">

								<!-- Team Block -->
								<div class="team-block_one col-lg-6 col-md-6 col-sm-12">
									<div class="team-block_one-inner">
										<div class="team-block_one-image">
											<div class="team-block_one-gradient"></div>
											<a href="doctor-detail.html"><img
												src="assets/images/resource/team-1.jpg" alt="" /></a>
											<div class="team-block_one-social">
												<span class="team-block_one-share flaticon-plus"></span>
												<div class="team-block_one-social-list">
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
											<div class="team-block_one-overlay">
												<h6 class="team-block_one-title">
													<a href="doctor-detail.html">Justin Beckham</a>
												</h6>
												<div class="team-block_one-category">Cardiology
													Specialist</div>
											</div>
										</div>
									</div>
								</div>

								<!-- Team Block -->
								<div class="team-block_one col-lg-6 col-md-6 col-sm-12">
									<div class="team-block_one-inner">
										<div class="team-block_one-image">
											<div class="team-block_one-gradient"></div>
											<a href="doctor-detail.html"><img
												src="assets/images/resource/team-2.jpg" alt="" /></a>
											<div class="team-block_one-social">
												<span class="team-block_one-share flaticon-plus"></span>
												<div class="team-block_one-social-list">
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
											<div class="team-block_one-overlay">
												<h6 class="team-block_one-title">
													<a href="doctor-detail.html">Jennifer Winds</a>
												</h6>
												<div class="team-block_one-category">Neurology
													Specialist</div>
											</div>
										</div>
									</div>
								</div>

								<!-- Team Block -->
								<div class="team-block_one col-lg-6 col-md-6 col-sm-12">
									<div class="team-block_one-inner">
										<div class="team-block_one-image">
											<div class="team-block_one-gradient"></div>
											<a href="doctor-detail.html"><img
												src="assets/images/resource/team-3.jpg" alt="" /></a>
											<div class="team-block_one-social">
												<span class="team-block_one-share flaticon-plus"></span>
												<div class="team-block_one-social-list">
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
											<div class="team-block_one-overlay">
												<h6 class="team-block_one-title">
													<a href="doctor-detail.html">Edward Willey</a>
												</h6>
												<div class="team-block_one-category">General Doctor</div>
											</div>
										</div>
									</div>
								</div>

								<!-- Team Block -->
								<div class="team-block_one col-lg-6 col-md-6 col-sm-12">
									<div class="team-block_one-inner">
										<div class="team-block_one-image">
											<div class="team-block_one-gradient"></div>
											<a href="doctor-detail.html"><img
												src="assets/images/resource/team-4.jpg" alt="" /></a>
											<div class="team-block_one-social">
												<span class="team-block_one-share flaticon-plus"></span>
												<div class="team-block_one-social-list">
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
											<div class="team-block_one-overlay">
												<h6 class="team-block_one-title">
													<a href="doctor-detail.html">Smith Johnson</a>
												</h6>
												<div class="team-block_one-category">Dermatologist</div>
											</div>
										</div>
									</div>
								</div>

							</div>
						</div>
					</div>

				</div>
			</div>
		</section>
		<!-- End Team One -->

		<!-- Testimonial One -->
		<section class="testimonial-one">
			<div class="testimonial-one_pattern"
				style="background-image: url(assets/images/background/pattern-6.png)"></div>
			<div class="auto-container">

				<!-- Sec Title -->
				<div class="sec-title">
					<div class="sec-title_title">Patiant Feedback</div>
					<h2 class="sec-title_heading">
						Our happy clients <br> says about us
					</h2>
				</div>

				<div class="testimonial-carousel owl-carousel owl-theme">

					<!-- Testimonial Block One -->
					<div class="testimonial-block_one">
						<div class="testimonial-block_one-inner">
							<div class="testimonial-block_one-author">
								<img src="assets/images/resource/author-1.jpg" alt="" /> <span
									class="testimonial-block_one-quote fa-solid fa-quote-left fa-fw"></span>
							</div>
							<div class="testimonial-block_one-content">
								<div class="testimonial-block_one-rating">
									<span class="fa fa-star"></span> <span class="fa fa-star"></span>
									<span class="fa fa-star"></span> <span class="fa fa-star"></span>
									<span class="fa fa-star"></span>
								</div>
								<div class="testimonial-block_one-designation">Market
									Manager</div>
								<h3 class="testimonial-block_one-heading">Jame Sickres</h3>
							</div>
							<div class="testimonial-block_one-text">Lorem ipsum dolor
								sit amet, ut consectetur adipisicing elit, sed do eiusmod tempor
								incididunt labore et dolore magna aliqua.</div>
						</div>
					</div>

					<!-- Testimonial Block One -->
					<div class="testimonial-block_one">
						<div class="testimonial-block_one-inner">
							<div class="testimonial-block_one-author">
								<img src="assets/images/resource/author-2.jpg" alt="" /> <span
									class="testimonial-block_one-quote fa-solid fa-quote-left fa-fw"></span>
							</div>
							<div class="testimonial-block_one-content">
								<div class="testimonial-block_one-rating">
									<span class="fa fa-star"></span> <span class="fa fa-star"></span>
									<span class="fa fa-star"></span> <span class="fa fa-star"></span>
									<span class="fa fa-star"></span>
								</div>
								<div class="testimonial-block_one-designation">Jackson
									Marker</div>
								<h3 class="testimonial-block_one-heading">Sale Manager</h3>
							</div>
							<div class="testimonial-block_one-text">Lorem ipsum dolor
								sit amet, ut consectetur adipisicing elit, sed do eiusmod tempor
								incididunt labore et dolore magna aliqua.</div>
						</div>
					</div>

					<!-- Testimonial Block One -->
					<div class="testimonial-block_one">
						<div class="testimonial-block_one-inner">
							<div class="testimonial-block_one-author">
								<img src="assets/images/resource/author-3.jpg" alt="" /> <span
									class="testimonial-block_one-quote fa-solid fa-quote-left fa-fw"></span>
							</div>
							<div class="testimonial-block_one-content">
								<div class="testimonial-block_one-rating">
									<span class="fa fa-star"></span> <span class="fa fa-star"></span>
									<span class="fa fa-star"></span> <span class="fa fa-star"></span>
									<span class="fa fa-star"></span>
								</div>
								<div class="testimonial-block_one-designation">CEO of PVT</div>
								<h3 class="testimonial-block_one-heading">Michal Monica</h3>
							</div>
							<div class="testimonial-block_one-text">Lorem ipsum dolor
								sit amet, ut consectetur adipisicing elit, sed do eiusmod tempor
								incididunt labore et dolore magna aliqua.</div>
						</div>
					</div>

					<!-- Testimonial Block One -->
					<div class="testimonial-block_one">
						<div class="testimonial-block_one-inner">
							<div class="testimonial-block_one-author">
								<img src="assets/images/resource/author-1.jpg" alt="" /> <span
									class="testimonial-block_one-quote fa-solid fa-quote-left fa-fw"></span>
							</div>
							<div class="testimonial-block_one-content">
								<div class="testimonial-block_one-rating">
									<span class="fa fa-star"></span> <span class="fa fa-star"></span>
									<span class="fa fa-star"></span> <span class="fa fa-star"></span>
									<span class="fa fa-star"></span>
								</div>
								<div class="testimonial-block_one-designation">Market
									Manager</div>
								<h3 class="testimonial-block_one-heading">Jame Sickres</h3>
							</div>
							<div class="testimonial-block_one-text">Lorem ipsum dolor
								sit amet, ut consectetur adipisicing elit, sed do eiusmod tempor
								incididunt labore et dolore magna aliqua.</div>
						</div>
					</div>

					<!-- Testimonial Block One -->
					<div class="testimonial-block_one">
						<div class="testimonial-block_one-inner">
							<div class="testimonial-block_one-author">
								<img src="assets/images/resource/author-2.jpg" alt="" /> <span
									class="testimonial-block_one-quote fa-solid fa-quote-left fa-fw"></span>
							</div>
							<div class="testimonial-block_one-content">
								<div class="testimonial-block_one-rating">
									<span class="fa fa-star"></span> <span class="fa fa-star"></span>
									<span class="fa fa-star"></span> <span class="fa fa-star"></span>
									<span class="fa fa-star"></span>
								</div>
								<div class="testimonial-block_one-designation">Jackson
									Marker</div>
								<h3 class="testimonial-block_one-heading">Sale Manager</h3>
							</div>
							<div class="testimonial-block_one-text">Lorem ipsum dolor
								sit amet, ut consectetur adipisicing elit, sed do eiusmod tempor
								incididunt labore et dolore magna aliqua.</div>
						</div>
					</div>

					<!-- Testimonial Block One -->
					<div class="testimonial-block_one">
						<div class="testimonial-block_one-inner">
							<div class="testimonial-block_one-author">
								<img src="assets/images/resource/author-3.jpg" alt="" /> <span
									class="testimonial-block_one-quote fa-solid fa-quote-left fa-fw"></span>
							</div>
							<div class="testimonial-block_one-content">
								<div class="testimonial-block_one-rating">
									<span class="fa fa-star"></span> <span class="fa fa-star"></span>
									<span class="fa fa-star"></span> <span class="fa fa-star"></span>
									<span class="fa fa-star"></span>
								</div>
								<div class="testimonial-block_one-designation">CEO of PVT</div>
								<h3 class="testimonial-block_one-heading">Michal Monica</h3>
							</div>
							<div class="testimonial-block_one-text">Lorem ipsum dolor
								sit amet, ut consectetur adipisicing elit, sed do eiusmod tempor
								incididunt labore et dolore magna aliqua.</div>
						</div>
					</div>

				</div>
			</div>
		</section>
		<!-- End Testimonial One -->

		
		<!-- Newsletter Section -->
		<section class="newsletter-one mt-5">
			<div class="auto-container">
				<div class="newsletter-one_inner-container"
					style="background-image: url(assets/images/background/pattern-7.png)">
					<div class="newsletter-one_icon">
						<img src="assets/images/icons/envelope.png" alt="" />
					</div>
					<div class="row clearfix">
						<!-- Title Column -->
						<div
							class="newsletter-one_title-column col-lg-6 col-md-12 col-sm-12">
							<h3 class="newsletter-one_title">
								Latest update <br> subscribe to our newsletter
							</h3>
						</div>
						<!-- Form Column -->
						<div
							class="newsletter-one_form-column col-lg-6 col-md-12 col-sm-12">
							<!-- Subscribe Form -->
							<div class="subscribe-form">
								<form method="post"
									action="https://html.themerange.net/merit/merit/contact.html">
									<div class="form-group">
										<input type="email" name="email" value=""
											placeholder="Your Email Address" required>
										<button type="submit"
											class="theme-btn fa-solid fa-paper-plane fa-fw"></button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- End Newsletter Section -->

		<!-- Footer Section added -->
		<%@include file="component/footer.jsp"%>

		<!-- Search Popup -->
		<div class="search-popup">
			<div class="color-layer"></div>
			<button class="close-search">
				<span class="fa fa-solid fa-xmark fa-fw"></span>
			</button>
			<form method="post"
				action="https://html.themerange.net/merit/merit/blog.html">
				<div class="form-group">
					<input type="search" name="search-field" value=""
						placeholder="Search Here">
					<button class="fa fa-solid fa-magnifying-glass fa-fw" type="submit"></button>
				</div>
			</form>
		</div>
		<!-- End Search Popup -->

	</div>
	<!-- End PageWrapper -->


	<%@include file="component/js-file.jsp"%>

</body>
</html>