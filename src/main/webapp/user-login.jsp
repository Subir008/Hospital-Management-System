<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="a" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Login</title>

<!-- Adding css file Link -->
<%@include file="component/css-file.jsp"%>

<style type="text/css">

.paint-card{
box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>

</head>
<body>

	<div class="page-wrapper">

		<!-- Header Added -->
		<%@include file="component/header.jsp"%>
		
		<!-- Page Title -->
		<section class="page-title"
			style="background-image: url(assets/images/background/3.jpg)">
			<div class="auto-container">
				<h2>User Login</h2>
				<ul class="bread-crumb clearfix">
					<li><a href="index.html">Home</a></li>
					<li>Login & register</li>
				</ul>
			</div>
		</section>
		<!-- End Page Title -->

		<!-- Register Section -->
		<div class="register-section">
			<div class="auto-container mb-5">
				 <div class="inner-container"> 
					<div class="row clearfix">

						<!-- Popup of account creation -->
						<a:if test="${not empty success  }">
							<div class="col-md-12 mb-5">
								<div class="card paint-card">
									<div class="card-body">

										<h3 class="text-center text-success fs-4 font-weight-bold p-3">
											Account Created Successfully</h3>


									</div>
								</div>
							</div>
							<a:remove var="success" scope="session" />
						</a:if>

						<!-- Pop up when Email Id Already Exists  -->
						<a:if test="${not empty failed  }">
							<div class="col-md-12 mb-5">
								<div class="card paint-card">
									<div class="card-body">
										<h3 class="text-center text-danger fs-4 font-weight-bold p-3">
											Email Id Already Exists</h3>

										<a:remove var="failed" scope="session" />
									</div>
								</div>
							</div>
						</a:if>
						
						<!-- Pop of Incorrect credentials  -->
						<a:if test="${not empty incorrect  }">
							<div class="col-md-12 mb-5">
								<div class="card paint-card">
									<div class="card-body">
										<h3 class="text-center text-danger fs-4 font-weight-bold p-3">
											Incorrect Email Id & Password </h3>

										<a:remove var="incorrect" scope="session" />
									</div>
								</div>
							</div>
						</a:if>
						
						<!-- Pop up of logout  -->
						<a:if test="${not empty logout  }">
							<div class="col-md-12 mb-5">
								<div class="card paint-card">
									<div class="card-body">
										<h3 class="text-center text-success fs-4 font-weight-bold p-3">
											Logout Successfull </h3>

										<a:remove var="logout" scope="session" />
									</div>
								</div>
							</div>
						</a:if>

						<div class=" col-lg-6 col-md-5 col-sm-5 ml-2 mr-2  mb-4 ">
							<div class="card paint-card">
								<div class="card-body">
									<!-- Column -->
									<div class="column col-lg-12 col-md-12 col-sm-12">
										<!-- Register Form Start-->
										<div class="styled-form">
											<h4 class="text-center font-weight-bold "
												style="color: rgb(249, 49, 59)">Register</h4>
											<form method="post" action="register">
												<div class="form-group">
													<label>Your Name</label> <input type="text" name="username"
														value="" placeholder="Enter your name*" required>
												</div>
												<div class="form-group">
													<label>Email address</label> <input type="email"
														name="email" value="" placeholder="Enter Email Adress"
														required>
												</div>
												<div class="form-group">
													<label>New Password</label> <input type="password"
														name="password" value="" placeholder="Create password"
														required>
												</div>
												<div class="form-group">
													<div class="check-box">
														<input type="checkbox" name="remember-password"
															id="type-1"> <label for="type-1">I agree
															to all <a href="terms.html">Terms</a> & <a
															href="privacy.html">Condition</a> and Feeds
														</label>
													</div>
												</div>
												<div class="form-group">
													<button class="theme-btn btn-style-one d-flex justify-content-center col-12">
														<span class="btn-wrap"> <span class="text-one">Register
														</span> <span class="text-two">Register</span>
														</span>
													</button>
												</div>
											</form>
										</div>
										<!-- Register Form End-->
									</div>
								</div>
							</div>
						</div>

						<!-- Column -->
						<div class="col-md-5 col-sm-5 mb-3 ml-1 mr-1">
							<div class="card paint-card">
								<div class="card-body">
									<div class="column col-lg-12 col-md-12 col-sm-12">
										<!-- Login Form Start -->
										<div class="styled-form">
											<h4 class="text-center font-weight-bold "
												style="color: rgb(249, 49, 59)">Login here</h4>
											<form method="post"
												action="userLogin">
												<div class="form-group">
													<label>Email address</label> <input type="email"
														name="user_email" value="" placeholder="Enter Email Adress"
														required>
												</div>

												<div class="form-group">
													<label>New Password</label> <input type="password"
														name="user_password" value="" placeholder="Enter password"
														required>
												</div>
												<div class="form-group">
													<div class="check-box">
														<input type="checkbox" name="remember-password"
															id="type-2"> <label for="type-2">Remember
															Me?</label>
													</div>
												</div>
												<div class="form-group">
													<button class="theme-btn btn-style-one d-flex justify-content-center col-12">
														<span class="btn-wrap"> <span class="text-one">Login
																here</span> <span class="text-two">Login here</span>
														</span>
													</button>
												</div>
											</form>
										</div>
										<!-- Login Form End-->
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


		<!-- Js File Link -->
		<%@include file="component/js-file.jsp"%>

	</div>

</body>
</html>