<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="a" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Panel</title>
<%@include file="component/css-file.jsp"%>

<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>

</head>

<body class="hidden-bar-wrapper">

	<%@include file="component/navbar.jsp"%>

	<!-- Checking admin session is start or not if not start then redirect user to admin login page -->
	<a:if test="${empty adminObj}">
		<a:redirect url="../admin-login.jsp"></a:redirect>
	</a:if>



	<div class="container p-3">
		<h3 class="text-center mt-5 mb-3 ">Admin Dashboard</h3>
		<div class="row">

			<!-- Popup of Specialist adding  -->
			<a:if test="${not empty SuccessMessage  }">
				<div class="col-md-12 mb-5">
					<div class="card paint-card">
						<div class="card-body">

							<h3 class="text-center text-success fs-4 font-weight-bold p-3">
								${SuccessMessage }</h3>
						</div>
					</div>
				</div>
				<a:remove var="SuccessMessage" scope="session" />
			</a:if>

			<!-- Popup of Specialist not adding  -->
			<a:if test="${not empty FailureMessage  }">
				<div class="col-md-12 mb-5">
					<div class="card paint-card">
						<div class="card-body">

							<h3 class="text-center text-danger fs-4 font-weight-bold p-3">
								${FailureMessage}</h3>
						</div>
					</div>
				</div>
				<a:remove var="FailureMessage" scope="session" />
			</a:if>
			
			

			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body text-center text-success">
						<i class="fas fa-user-md fa-4x"></i>
						<p class="card-text fs-4">
							Doctor <br> 5
						</p>

					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body text-center text-success">
						<i class="fa fa-user-circle fa-4x" aria-hidden="true"></i>
						<p class="card-text fs-4">
							User <br> 50
						</p>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body text-center text-success">
						<i class="fa fa-calendar-check-o fa-4x" aria-hidden="true"></i>
						<p class="card-text fs-4">
							Total Appointment <br> 450
						</p>
					</div>
				</div>
			</div>
		</div>
		<div class="row mt-4">
			<div class="col-md-4 ">
				<div class="card paint-card" data-toggle="modal"
					data-target="#exampleModal">
					<div class="card-body text-center text-success">
						<i class="fa fa-address-card fa-4x" aria-hidden="true"></i>
						<p class="card-text fs-4">
							Specialist <br> 50
						</p>
					</div>
				</div>
			</div>
		</div>

	</div>



	<!-- Specialist Add Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Add Specialist
						Here</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="../add-Specialist" method="post">
						<div class="form-group">
							<label for="name"><strong>Specialist Name</strong></label> <input
								type="text" class="form-control" name="specialist_name"
								id="specialist_name" aria-describedby="emailHelp">
						</div>
						<div class="form-group text-center">
							<button type="submit" class="btn btn-primary ">Add</button>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>


	<%@include file="component/js-file.jsp"%>
</body>

</html>