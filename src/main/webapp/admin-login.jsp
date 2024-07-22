<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="a" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>

<!-- Adding css file Link -->
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




	<div class="page-wrapper">


		<!-- Header Added -->
		<%-- 	<%@include file="component/header.jsp"%> --%>

		<!-- Page Title -->
		<%-- <section class="page-title"
			style="background-image: url(assets/images/background/3.jpg)">
			<div class="auto-container">
				<h2>Admin Login</h2>
				<ul class="bread-crumb clearfix">
					<li><a href="index.html">Home</a></li>
					<li>Admin Login</li>
				</ul>
			</div>
		</section> --%>
		<!-- End Page Title -->

		<!-- Register Section -->
		<div class="register-section mb-5">
			<div class="auto-container">
				<div class="inner-container">
					<div class="row clearfix" style="margin: 0px">

						<!-- Pop of Incorrect credentials start  -->
						<a:if test="${not empty emailIncorrect  }">
							<div class="col-md-12 mb-5">
								<div class="card paint-card">
									<div class="card-body">

										<h3 class="text-center text-danger fs-4 font-weight-bold p-3">
											Incorrect Email Id</h3>
									</div>
								</div>
							</div>
							<a:remove var="emailIncorrect" scope="session" />
						</a:if>

						<a:if test="${not empty passwordIncorrect  }">
							<div class="col-md-12 mb-5">
								<div class="card paint-card">
									<div class="card-body">
										<h3 class="text-center text-danger fs-4 font-weight-bold p-3">
											Incorrect Password</h3>

										<a:remove var="passwordIncorrect" scope="session" />
									</div>
								</div>
							</div>
						</a:if>

						<a:if test="${not empty Incorrect  }">
							<div class="col-md-12 mb-5">
								<div class="card paint-card">
									<div class="card-body">
										<h3 class="text-center text-danger fs-4 font-weight-bold p-3">
											Incorrect Email Id & Password</h3>

										<a:remove var="Incorrect" scope="session" />
									</div>
								</div>
							</div>
						</a:if> 
						<!-- Pop of Incorrect credentials end -->

						<!-- Pop up of logout message -->
						<a:if test="${not empty logoutmessage  }">
							<div class="col-md-12 mb-5">
								<div class="card paint-card">
									<div class="card-body">
										<h3 class="text-center text-success fs-4 font-weight-bold p-3">
											Logout Successfully</h3>

										<a:remove var="logoutmessage" scope="session" />
									</div>
								</div>
							</div>
						</a:if>

						<div class="col-md-7  offset-md-3 mb-4">
							<div class="card paint-card">
								<div class="card-body">
									<!-- Column -->
									<div class="column col-lg-12 col-md-12 col-sm-12">
										<!-- Login Form -->
										<div class="styled-form ">
											<h3 class="text-center font-weight-bold text-uppercase"
												style="color: rgb(249, 49, 59)">Admin Login </h3>
												
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
													<button class="theme-btn btn-style-one col-12 " >
														<span class="btn-wrap" style="float: none;"> <span class="text-one ">Login
																here</span> <span class="text-two">Login here</span>
														</span>
													</button>
												</div>
												<a href="index.jsp">Back To Home</a>
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
		<%-- <%@include file="component/footer.jsp"%> --%>


		<%@include file="component/js-file.jsp"%>

	</div>

</body>
</html>