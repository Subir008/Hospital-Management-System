<%@ taglib prefix="a" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>


<!-- Header Style One -->

<nav class="navbar navbar-expand-lg navbar-dark bg-success">
	<a class="navbar-brand" href="#"><img src="../assets/images/logo-png.png" alt="" width="250px"
							title=""></a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="index.jsp">Home
					<span class="sr-only">(current)</span>
			</a></li>
			
			<li class="nav-item"><a class="nav-link active" href="patient-appointment-list.jsp">Patient Appointment</a></li>
		</ul>
		<form class="form-inline my-2 my-lg-0">
			<div class="dropdown">
				<button class="btn btn-light dropdown-toggle" type="button"
					data-toggle="dropdown" aria-expanded="false"><i
											class="fa fa-user-circle fa-lg" aria-hidden="true"></i> <nbsp>
											${doctorObj.full_name}</button>
				<div class="dropdown-menu">
					<a class="dropdown-item d-flex justify-content-around" href="update-doctor-details.jsp">Edit  <i class="fa-solid fa-user-pen"></i></a> 
					<a class="dropdown-item d-flex justify-content-around" href="../doctor-logout">Log Out <i class="fa-solid fa-right-from-bracket"></i></a> 
				</div>
			</div>
		</form>
	</div>
</nav>

<!-- End Main Header -->


<!-- Checking Doctor session is start or not if not start then redirect user to doctor login page -->
	<a:if test="${empty doctorObj}">
		<a:redirect url="../doctor-login.jsp"></a:redirect>
	</a:if>
