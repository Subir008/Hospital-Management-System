
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
			<li class="nav-item"><a class="nav-link active"
				href="doctor.jsp">Doctor</a></li>
			<li class="nav-item"><a class="nav-link active"
				href="all-appointment-list.jsp">Patient</a></li>
		</ul>
		<form class="form-inline my-2 my-lg-0">
			<div class="dropdown">
				<button class="btn btn-light dropdown-toggle" type="button"
					data-toggle="dropdown" aria-expanded="false">Admin</button>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="../logout">Log Out <nbsp>
						<nbsp> <i class="fa-solid fa-right-from-bracket"></i></a>
				</div>
			</div>
		</form>
	</div>
</nav>

<!-- End Main Header -->

<!-- Checking admin session is start or not if not start then redirect user to admin login page -->
<a:if test="${empty adminObj}">
	<a:redirect url="../admin-login.jsp"></a:redirect>
</a:if>
