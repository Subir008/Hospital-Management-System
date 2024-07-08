<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>
<%@include file="component/css-file.jsp"%>

<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>

</head>

<body class="hidden-bar-wrapper">

	<%@include file="component/navbar.jsp"%>

	<h3 class="text-center mt-5 mb-3 ">Admin Dashboard</h3>

	<div class="container p-3">
		<div class="row">
			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body text-center text-success">
						<i class="fas fa-user-md fa-4x"></i>
						<p class="card-text fs-4">Doctor <br> 5 </p>
						
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body text-center text-success">
						<i class="fa fa-user-circle fa-4x" aria-hidden="true"></i>
						<p class="card-text fs-4">User <br> 50 </p>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body text-center text-success">
						<i class="fa fa-calendar-check-o fa-4x" aria-hidden="true"></i>
						<p class="card-text fs-4">Total Appointment <br> 450 </p>
					</div>
				</div>
			</div>
		</div>
		<div class="row mt-4">
			<div class="col-md-4 ">
				<div class="card paint-card">
					<div class="card-body text-center text-success">
						<i class="fa fa-address-card fa-4x" aria-hidden="true"></i>
						<p class="card-text fs-4">Specialist <br> 50 </p>
					</div>
				</div>
			</div>
		</div>
			
	</div>




	<%@include file="component/js-file.jsp"%>
</body>

</html>