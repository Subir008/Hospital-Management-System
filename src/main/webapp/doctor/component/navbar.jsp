<%@ taglib prefix="a" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>


<!-- Header Style One -->

<nav class="navbar navbar-expand-lg navbar-dark bg-success">
	<a class="navbar-brand" href="#">Navbar</a>
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
			<li class="nav-item"><a class="nav-link active" href="doctor.jsp">Doctor</a>
			</li>
			<li class="nav-item"><a class="nav-link active" href="#">Patient</a></li>
		</ul>
		<form class="form-inline my-2 my-lg-0">
			<div class="dropdown">
				<button class="btn btn-light dropdown-toggle" type="button"
					data-toggle="dropdown" aria-expanded="false"><i
											class="fa fa-user-circle fa-lg" aria-hidden="true"></i> <nbsp>
											${doctorObj.full_name}</button>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="#">Edit <nbsp><nbsp> <i class="fa-solid fa-right-from-bracket"></i></a> 
					<a class="dropdown-item" href="../doctor-logout">Log Out <nbsp><nbsp> <i class="fa-solid fa-right-from-bracket"></i></a> 
				</div>
			</div>
		</form>
	</div>
</nav>

<!-- End Main Header -->