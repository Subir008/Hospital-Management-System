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
		User user = (User) session.getAttribute("userObj") ;
		UserDao userDao = new UserDao(Configuration.configure());
		user = userDao.fetchUserById(user.getId());
		
		%>
		
	<!-- Doctor Single Section -->
		<section class="doctor-detail-section">
			<div class="auto-container">
				<div class="row clearfix">

					<!-- Image Column -->
					<div class="image-column col-lg-5 col-md-12 col-sm-12">
						<div class="inner-column">
							<div class="image">
								<img src="assets/images/resource/doctor-2.jpg" alt="" />
								<div class="number-box">
							
								</div>
							</div>
						</div>
					</div>

					<!-- Content Column -->
					<div class="content-column col-lg-7 col-md-12 col-sm-12">
						<div class="inner-column">
							<h3>Profile Details</h3>
							<ul class="doctor-info-list">
								<li><span><strong>Name</strong> </span><%= user.getName() %></li>
								<li><span><strong>Gender</strong> </span>dd</li>
								<li><span><strong>Contact </strong> </span>10+ Years</li>
								<li><span><strong>Address </strong> </span>10+ Years</li>
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
							<a class="btn btn-info text-white " href="update-user-profile.jsp" >Update Profile</a>
							</ul>
						</div>
					</div>

				</div>
			</div>
		</section>
		<!-- End Doctors Page Section -->

	<!-- Js File Link -->
	<%@include file="component/js-file.jsp"%>
	
</body>
</html>