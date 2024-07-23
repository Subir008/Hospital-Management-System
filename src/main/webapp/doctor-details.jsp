<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor Details</title>

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
			<h2>Dr. Justin Beckham</h2>
			<ul class="bread-crumb clearfix">
				<li><a href="index.jsp">Home</a></li>
				<li>Doctor Detail</li>
			</ul>
		</div>
	</section>
	<!-- End Page Title -->

	<!-- Doctor Detail -->
	<section class="doctor-detail">
		<div class="auto-container">
			<div class="upper-box">
				<div class="row clearfix">

					<!-- Image Column -->
					<div
						class="doctor-detail_image-column col-lg-4 col-md-12 col-sm-12">
						<div class="doctor-detail_image">
							<img src="assets/images/resource/doctor-1.jpg" alt="" />
						</div>
					</div>

					<!-- Info Column -->
					<div class="doctor-detail_info-column col-lg-8 col-md-12 col-sm-12">
						<div class="doctor-detail_designation">Cardiology Specialist</div>
						<h2 class="doctor-detail_name">Justin Beckham</h2>
						<div class="doctor-detail_text">I am specialists in
							digestive organs, including the stomach, bowels, pancreas, liver,
							and gallbladder. You might see them for abdominal pain, ulcers,
							diarrhea, jaundice, or cancers in your digestive organs. They
							also do a colonoscopy and other tests for colon cancer</div>
						<ul class="doctor-detail_list">
							<li><span class="icon fa-solid fa-phone fa-fw"></span>+1-234-2346</li>
							<li><span class="icon fa-solid fa-envelope fa-fw"></span> <a
								href="mailto:Info@merit.Com">Info@merit.Com</a></li>
							<li><span class="icon fa-solid fa-link fa-fw"></span>merit.Com</li>
						</ul>

						<!-- Social Box -->
						<ul class="doctor-detail_social">
							<li><a href="https://www.twitter.com/"
								class="fa-brands fa-twitter fa-fw"></a></li>
							<li><a href="https://www.facebook.com/"
								class="fa-brands fa-facebook-f fa-fw"></a></li>
							<li><a href="https://dribbble.com/"
								class="fa-brands fa-dribbble fa-fw"></a></li>
							<li><a href="https://www.linkedin.com/"
								class="fa-brands fa-linkedin fa-fw"></a></li>
						</ul>

					</div>

				</div>
			</div>
			<h3>Personal Experience</h3>
			<p>"But I must explain to you how all this mistaken idea of
				denouncing pleasure and praising pain was born and I will give you a
				complete account of the system, and expound the actual teachings of
				the great explorer of the truth, the master-builder of human
				happiness. No one rejects, dislikes, or avoids pleasure itself,
				because it is pleasure, but because those who do not know how to
				pursue pleasure rationally encounter consequences that are extremely
				painful.</p>
			<p>Nor again is there anyone who loves or pursues or desires to
				obtain pain of itself, because it is pain, but because occasionally
				circumstances occur in which toil and pain can procure him some
				great pleasure. To take a trivial example, which of us ever
				undertakes laborious physical exercise, except to obtain some
				advantage from it? But who has any right to find fault with a man
				who chooses to enjoy a pleasure that has no annoying consequences,
				or one who avoids a pain that produces no resultant pleasure?"</p>
			<div class="row clearfix">
				<div class="col-lg-6 col-md-12 col-sm-12">
					<h3>Expertise and Skills</h3>
					<p>It is a long established fact that a reader will be
						distracted by the readable content of a page when looking at its
						layout. Lorem Ipsum is simply dummy text of the printing and
						typesetting industry.</p>
					<p>But who has any right to find fault with a man who chooses
						to enjoy a pleasure that has no annoying consequences, or one who
						avoids a pain that produces no resultant pleasure?"</p>

					<!-- Skills -->
					<div class="default-skills">

						<!-- Skill Item -->
						<div class="default-skill-item">
							<div class="default-skill-title">Smiling Clients</div>
							<div class="default-skill-bar">
								<div class="default-bar-inner">
									<div class="default-bar progress-line" data-width="95">
										<div class="default-skill-percentage"></div>
									</div>
								</div>
							</div>
							<div class="default-count-box count-box">
								<span class="count-text" data-speed="2000" data-stop="95">0</span>%
							</div>
						</div>

						<!-- Skill Item -->
						<div class="default-skill-item">
							<div class="default-skill-title">Experts Doctors</div>
							<div class="default-skill-bar">
								<div class="default-bar-inner">
									<div class="default-bar progress-line" data-width="95">
										<div class="default-skill-percentage"></div>
									</div>
								</div>
							</div>
							<div class="default-count-box count-box">
								<span class="count-text" data-speed="2000" data-stop="92">0</span>%
							</div>
						</div>

						<!-- Skill Item -->
						<div class="default-skill-item">
							<div class="default-skill-title">Dental Surgery</div>
							<div class="default-skill-bar">
								<div class="default-bar-inner">
									<div class="default-bar progress-line" data-width="95">
										<div class="default-skill-percentage"></div>
									</div>
								</div>
							</div>
							<div class="default-count-box count-box">
								<span class="count-text" data-speed="2000" data-stop="88">0</span>%
							</div>
						</div>

					</div>

				</div>
				<div class="col-lg-6 col-md-12 col-sm-12">
					<h3>Book An Appointment</h3>
					<!-- Default Form -->
					<div class="default-form">
						<form method="post"
							action="https://html.themerange.net/merit/merit/contact.html">
							<div class="row clearfix">

								<div class="col-lg-6 col-md-6 col-sm-12 form-group">
									<input type="text" name="username" placeholder="Name"
										required="">
								</div>

								<div class="col-lg-6 col-md-6 col-sm-12 form-group">
									<input type="text" name="email" placeholder="Email" required="">
								</div>

								<div class="col-lg-6 col-md-6 col-sm-12 form-group">
									<input type="text" name="phone" placeholder="Phone" required="">
								</div>

								<div class="col-lg-6 col-md-6 col-sm-12 form-group">
									<input type="text" name="department" placeholder="Department"
										required="">
								</div>

								<div class="col-lg-12 col-md-12 col-sm-12 form-group">
									<textarea class="" name="message"
										placeholder="how can i help you? Feel free to get in touch"></textarea>
								</div>

								<div class="col-lg-12 col-md-12 col-sm-12 form-group">
									<!-- Button Box -->
									<div class="button-box align-items-center flex-wrap d-flex">
										<button class="theme-btn btn-style-one">
											<span class="btn-wrap"> <span class="text-one">get
													in touch</span> <span class="text-two">get in touch</span>
											</span>
										</button>
										<div class="check-box">
											<input type="checkbox" name="remember-password" id="type-1">
											<label for="type-1">I agree that my submitted data is
												collected and stored.</label>
										</div>
									</div>
								</div>

							</div>
						</form>
					</div>
					<!-- End Default Form -->

				</div>
			</div>

		</div>
	</section>
	<!-- End Doctor Detail -->



	<!-- Footer Section added -->
	<%@include file="component/footer.jsp"%>


	<!-- Js File Include -->

	<%@include file="component/js-file.jsp"%>
</body>
</html>