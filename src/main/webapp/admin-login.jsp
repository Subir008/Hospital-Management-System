<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>

<!-- Adding css file Link -->
<%@include file="component/css-file.jsp"%>

</head>
<body>

	<div class="page-wrapper">

		<!-- Preloader -->
		<!--  <div class="preloader"></div> -->
		<!-- End Preloader -->


		<!-- Header Added -->
		<%@include file="component/header.jsp"%>


		<!-- Page Title -->
		<section class="page-title"
			style="background-image: url(assets/images/background/3.jpg)">
			<div class="auto-container">
				<h2>Admin Login</h2>
				<ul class="bread-crumb clearfix">
					<li><a href="index.html">Home</a></li>
					<li>Admin Login</li>
				</ul>
			</div>
		</section>
		<!-- End Page Title -->

		<!-- Register Section -->
		<div class="register-section mb-5">
			<div class="auto-container">
				<div class="inner-container">
					<div class="row clearfix">


						<div class="col-md-9 offset-md-2 mb-4">
							<div class="card">
								<div class="card-body">
									<!-- Column -->
									<div class="column col-lg-12 col-md-12 col-sm-12">
										<!-- Login Form -->
										<div class="styled-form">
											<h4 class="text-center font-weight-bold "
												style="color: rgb(249, 49, 59)">Login here</h4>
												
											<form method="post" action="adminLogin">
												<div class="form-group">
													<label>Email address</label> <input type="email"
														name="admin_email" value=""
														placeholder="Enter Email Adress" required>
												</div>

												<div class="form-group">
													<label>New Password</label> <input type="password"
														name="admin_password" value=""
														placeholder="Enter password" required>
												</div>
												<div class="form-group">
													<div class="check-box">
														<input type="checkbox" name="remember-password"
															id="type-2"> <label for="type-2">Remember
															Me?</label>
													</div>
												</div>
												<div class="form-group ">
													<button class="theme-btn btn-style-one">
														<span class="btn-wrap"> <span class="text-one">Login
																here</span> <span class="text-two">Login here</span>
														</span>
													</button>
												</div>
											</form>
										</div>
									</div>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End Register Section -->


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
						placeholder="Search Here" required="">
					<button class="fa fa-solid fa-magnifying-glass fa-fw" type="submit"></button>
				</div>
			</form>
		</div>
		<!-- End Search Popup -->

		<%@include file="component/js-file.jsp"%>

	</div>

</body>
</html>