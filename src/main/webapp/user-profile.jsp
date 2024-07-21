<%@page import="com.configuration.Configuration"%>
<%@page import="com.dao.UserDao"%>
<%@page import="com.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="a" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profile</title>

<!-- Adding css file Link -->
<%@include file="component/css-file.jsp"%>

<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>

</head>
<body>

	<!-- If not login redirect the user to login page -->
	<a:if test="${empty userObj }">
		<a:redirect url="user-login.jsp"></a:redirect>
	</a:if>

	<!-- Header Added -->
	<%@include file="component/header.jsp"%>

	<%
	// Taking the user information from the login user session
	User user = (User) session.getAttribute("userObj");
	UserDao userDao = new UserDao(Configuration.configure());
	// Invoking the method for getting the value present in dB by passing the User Id
	user = userDao.fetchUserById(user.getId());
	%>

	<!-- Popup of Booking Confirm -->
	<a:if test="${not empty ProfileUpdated  }">
		<div class="modal" id="exampleModal" tabindex="-1" role="dialog">
			<div class="modal-dialog modal-dialog-centered " role="document">
				<div class="modal-content paint-card">

					<div class="modal-body">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<br>
						<h3 class="text-center text-success fs-4 font-weight-bold p-3">
							${ProfileUpdated}</h3>
					</div>

				</div>
			</div>
		</div>

		<a:remove var="ProfileUpdated" scope="session" />
	</a:if>

	<!-- Popup of Error -->
	<a:if test="${not empty Error  }">
		<div class="modal" id="exampleModal" tabindex="-1" role="dialog">
			<div class="modal-dialog modal-dialog-centered" role="document">
				<div class="modal-content">

					<div class="modal-body">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<br>
						<h3 class="text-center text-danger fs-4 font-weight-bold p-3">
							${Error}</h3>
					</div>

				</div>
			</div>
		</div>
		<a:remove var="Error" scope="session" />
	</a:if>

	<section class="doctor-detail-section">
		<div class="auto-container">
			<div class="row clearfix">

				<!-- Image Column -->
				<div class="image-column col-lg-5 col-md-12 col-sm-12">
					<div class="inner-column">
						<div class="image">
							<img src="assets/images/resource/doctor-2.jpg" alt="" />
							<div class="number-box"></div>
						</div>
					</div>
				</div>

				<!-- Content Column -->
				<div class="content-column col-lg-7 col-md-12 col-sm-12">
					<div class="inner-column">
						<h3>Profile Details</h3>
						<ul class="doctor-info-list">
							<li><span><strong>Name</strong> </span><%=user.getName()%></li>
							<li><span><strong>Email</strong> </span><%=user.getEmail()%></li>
							<li><span><strong>Gender</strong> </span><%=user.getGender()%></li>
							<li><span><strong>Contact </strong> </span><%=user.getContact()%></li>
							<li><span><strong>Address </strong> </span><%=user.getAddress()%></li>
						</ul>

						<h3>Social Media</h3>
						<!-- Social Box -->
						<ul class="social-box">
							<li class="facebook"><a href="#"><span
									class="icon fab fa-facebook-f"></span></a></li>
							<li class="twitter"><a href="#"><span
									class="icon fab fa-twitter"></span></a></li>
							<li class="linkedin"><a href="#"><span
									class="icon fab fa-linkedin"></span></a></li>
							<li class="youtube"><a href="#"><span
									class="icon fab fa-youtube"></span></a></li>
							<li class="vk"><a href="#"><span class="icon fab fa-vk"></span></a></li>
						</ul>
						<ul class="mt-3">
							<a class="btn btn-info text-white "
								href="update-user-profile.jsp">Update Profile</a>
						</ul>
					</div>
				</div>

			</div>
		</div>
	</section>
	<!-- End Doctors Page Section -->

	<!-- Js File Link -->
	<%@include file="component/js-file.jsp"%>
	<script type="text/javascript">
		$(document).ready(function() {
			$('#exampleModal').modal('show');
		});
	</script>

</body>
</html>