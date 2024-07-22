<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@ taglib prefix="a" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
	
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

svg {
	position: fixed;
	top: 0;
	left: 0;
	bottom: 0;
	width: 100%;
	height: 100%;
	box-sizing: border-box;
	display: block;
	background-color: #0e4166;
	background-image: linear-gradient(to bottom, rgba(14, 65, 102, 0.86),
		#0e4166);
}

</style>
</head>
<body>


	<svg version="1.1" xmlns="http://www.w3.org/2000/svg"
		xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
		width="100%" height="100%" viewBox="0 0 1600 900"
		preserveAspectRatio="xMidYMax slice">
    <defs>
      <linearGradient id="bg">
        <stop offset="0%" style="stop-color:rgba(130, 158, 249, 0.06)"></stop>
        <stop offset="50%" style="stop-color:rgba(76, 190, 255, 0.6)"></stop>
        <stop offset="100%" style="stop-color:rgba(115, 209, 72, 0.2)"></stop>
      </linearGradient>
      <path id="wave" fill="url(#bg)"
			d="M-363.852,502.589c0,0,236.988-41.997,505.475,0
	s371.981,38.998,575.971,0s293.985-39.278,505.474,5.859s493.475,48.368,716.963-4.995v560.106H-363.852V502.589z" />
    </defs>
    <g>
      <use xlink:href='#wave' opacity=".3">
        <animateTransform attributeName="transform" attributeType="XML"
			type="translate" dur="10s" calcMode="spline"
			values="270 230; -334 180; 270 230" keyTimes="0; .5; 1"
			keySplines="0.42, 0, 0.58, 1.0;0.42, 0, 0.58, 1.0"
			repeatCount="indefinite" />
      </use>
      <use xlink:href='#wave' opacity=".6">
        <animateTransform attributeName="transform" attributeType="XML"
			type="translate" dur="8s" calcMode="spline"
			values="-270 230;243 220;-270 230" keyTimes="0; .6; 1"
			keySplines="0.42, 0, 0.58, 1.0;0.42, 0, 0.58, 1.0"
			repeatCount="indefinite" />
      </use>
      <use xlink:href='#wave' opacty=".9">
        <animateTransform attributeName="transform" attributeType="XML"
			type="translate" dur="6s" calcMode="spline"
			values="0 230;-140 200;0 230" keyTimes="0; .4; 1"
			keySplines="0.42, 0, 0.58, 1.0;0.42, 0, 0.58, 1.0"
			repeatCount="indefinite" />
      </use>
    </g>
  </svg>



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
	
	<div class="page-wrapper">

		<!-- Preloader -->
		<!--  <div class="preloader"></div> -->
		<!-- End Preloader -->


		<!-- Register Section -->
		<div class="register-section mb-5 ml-2 mr-2">
			<div class="auto-container">
				<div class="inner-container">
					<div class="row clearfix">

						
						

						<div class="col-md-7 offset-md-3  mb-4">
							<div class="card paint-card">
								<div class="card-body">
									<!-- Column -->
									<div class="column col-lg-12 col-md-12 col-sm-12 pl-3 pr-3"  >
										<!-- Login Form -->
										<div class="styled-form">
											<h3 class="text-center font-weight-bold text-uppercase mb-3"
												style="color: rgb(249, 49, 59)"> Doctor Login</h3>
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
													<button class="theme-btn btn-style-one d-flex justify-content-center col-12">
														<span class="btn-wrap"> <span class="text-one">Login
																here</span> <span class="text-two">Login here</span>
														</span>
													</button>
												</div>
											</form>
												<a href="index.jsp">Back To Home</a>
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