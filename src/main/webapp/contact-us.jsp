<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact-us</title>

	<%@include file="component/css-file.jsp"%>

</head>
<body>

	<!-- Header Added -->
	<%@include file="component/header.jsp"%>

	<!-- Preloader -->
	<div class="preloader"></div>
	<!-- End Preloader -->
	
	<!-- Page Title -->
    <section class="page-title" style="background-image:url(assets/images/background/3.jpg)">
        <div class="auto-container">
			<h2>Contact Us</h2>
			<ul class="bread-crumb clearfix">
				<li><a href="index.jsp">Home</a></li>
				<li>Contact Us</li>
			</ul>
        </div>
    </section>
    <!-- End Page Title -->

	<!-- Contact Page Section -->
	<section class="contact-page-section">
		<div class="auto-container">
			<div class="row clearfix">

				<!-- Info Column -->
				<div class="info-column col-lg-3 col-md-12 col-sm-12">
					<div class="inner-column">

						<!-- Info Box -->
						<div class="info-box">
							<div class="box-inner">
								<span class="icon flaticon-placeholder"></span>
								<h6>Address</h6>
								<div class="text">Clarkson Ave, Brooklyn, NewYark 11203</div>
							</div>
						</div>

						<!-- Info Box -->
						<div class="info-box">
							<div class="box-inner">
								<span class="icon flaticon-send-mail"></span>
								<h6>Email</h6>
								<a href="mailto:demo@merit.com">demo@merit.com</a><br> <a
									href="mailto:demo@merit.com">demo@merit.com</a>
							</div>
						</div>

						<!-- Info Box -->
						<div class="info-box">
							<div class="box-inner">
								<span class="icon flaticon-telephone"></span>
								<h6>Phone</h6>
								<a href="tel:+000-999-0000">000-999-0000</a><br> <a
									href="tel:+999-000-9999-00">+999 000 9999 00</a>
							</div>
						</div>

						<!-- Info Box -->
						<div class="info-box">
							<div class="box-inner">
								<span class="icon flaticon-internet"></span>
								<h6>Social media</h6>
								<ul class="social-box">
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
				</div>

				<!-- Form Column -->
				<div class="form-column col-lg-9 col-md-12 col-sm-12">
					<div class="inner-column">

						<!-- Sec Title -->
						<div class="sec-title">
							<div class="sec-title_title">CONTACT INFO</div>
							<h2 class="sec-title_heading">Get Meeting With us.</h2>
						</div>

						<!-- Contact Form -->
						<div class="default-form contact-form">
							<form method="post"
								action="https://html.themerange.net/merit/merit/sendemail.php"
								id="contact-form">
								<div class="row clearfix">

									<div class="col-lg-6 col-md-6 col-sm-12 form-group">
										<input type="text" name="username" placeholder="Your Name"
											required="">
									</div>

									<div class="col-lg-6 col-md-6 col-sm-12 form-group">
										<input type="email" name="email" placeholder="Your Email"
											required="">
									</div>

									<div class="col-lg-6 col-md-6 col-sm-12 form-group">
										<input type="text" name="phone" placeholder="Your Phone"
											required="">
									</div>

									<div class="col-lg-6 col-md-6 col-sm-12 form-group">
										<input type="text" name="subject" placeholder="Subject"
											required="">
									</div>

									<div class="col-lg-12 col-md-12 col-sm-12 form-group">
										<textarea class="" name="message"
											placeholder="Write Your Massage"></textarea>
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

						<!-- Map Boxed -->
						<div class="map-boxed">
							<div class="map-outer">
								<iframe
									src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d805184.6331292129!2d144.49266890254142!3d-37.97123689954809!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6ad646b5d2ba4df7%3A0x4045675218ccd90!2sMelbourne%20VIC%2C%20Australia!5e0!3m2!1sen!2s!4v1574408946759!5m2!1sen!2s"
									allowfullscreen=""></iframe>
							</div>
						</div>

					</div>
				</div>

			</div>
		</div>
	</section>
	<!-- End Contact Page Section -->
	<!-- Footer Section added -->
	<%@include file="component/footer.jsp"%>


	<!-- Js File Include -->

	<%@include file="component/js-file.jsp"%>
</body>
</html>