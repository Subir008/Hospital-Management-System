<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor Login</title>

<%@include file="component/css-file.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>

	<div class="page-wrapper">

		<!-- Preloader -->
		<!--  <div class="preloader"></div> -->
		<!-- End Preloader -->


		<!-- Header Added -->
		<%@include file="component/header.jsp"%>

		
	<!-- Model of Error -->
	<a:if test="${not empty Incorrect  }">
		<div class="modal" id="exampleModal" tabindex="-1" role="dialog">
			<div class="modal-dialog modal-dialog-centered" role="document">
				<div class="modal-content">

					<div class="modal-body">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<br>
						<h3 class="text-center text-danger fs-4 font-weight-bold p-3 pb-5">
							${Incorrect}</h3>
					</div>

				</div>
			</div>
		</div>
		<a:remove var="Incorrect" scope="session" />
	</a:if>
		
	<!-- Model of logout message -->
	<a:if test="${not empty logoutmessage  }">
		<div class="modal" id="exampleModal" tabindex="-1" role="dialog">
			<div class="modal-dialog modal-dialog-centered" role="document">
				<div class="modal-content">

					<div class="modal-body">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<br>
						<h3 class="text-center text-success fs-4 font-weight-bold p-3 pb-5">
							${logoutmessage}</h3>
					</div>

				</div>
			</div>
		</div>
		<a:remove var="logoutmessage" scope="session" />
	</a:if>
		

		<!-- Page Title -->
		<section class="page-title"
			style="background-image: url(assets/images/background/3.jpg)">
			<div class="auto-container">
				<h2>Doctor Login</h2>
				<ul class="bread-crumb clearfix">
					<li><a href="index.html">Home</a></li>
					<li>Doctor Login</li>
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
							<div class="card paint-card">
								<div class="card-body">
									<!-- Column -->
									<div class="column col-lg-12 col-md-12 col-sm-12">
										<!-- Login Form -->
										<div class="styled-form">
											<h3 class="text-center font-weight-bold "
												style="color: rgb(249, 49, 59)">Login here</h3>
											<form method="post" action="doctor-login">
												<div class="form-group">
													<label>Email address</label> <input type="email"
														name="doctor_email" value=""
														placeholder="Enter Email Adress" required>
												</div>

												<div class="form-group">
													<label>New Password</label> <input type="password"
														name="doctor_password" value=""
														placeholder="Create password" required>
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

		<!-- Js File Link -->
		<%@include file="component/js-file.jsp"%>
		<script type="text/javascript">
			$(document).ready(function() {
				$('#exampleModal').modal('show');
			});
		</script>
	</div>


</body>
</html>