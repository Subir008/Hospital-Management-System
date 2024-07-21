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
<title>Update Profile</title>

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
	<div class="container">
		<div class="row">

			<div class="col-md-8 offset-2  mb-4 mt-5 ">
				<div class="card paint-card">
					<div class="card-body">
						<!-- Column -->
						<div class="column col-lg-12 col-md-12 col-sm-12 p-3 pl-5 pr-5">
							<!-- Register Form Start-->
							<div class="styled-form">
								<h4 class="text-center font-weight-bold text-uppercase mb-2"
									style="color: rgb(249, 49, 59)">Update Profile Details</h4>
								<form method="post" action="update-user-profile">
									<div class="form-group">
										<label>Your Name</label> <input type="text" name="name"
											 placeholder="Enter your name*" required value="<%= user.getName() %>">
									</div>
									<div class="form-group">
										<label>Contact</label> <input type="tel" name="contact"
										 placeholder="Enter Your Contact" required  value="<%= user.getContact() %>">
									</div>
									<div class="form-group">
										<label>Email </label> <input type="email" name="email"
											placeholder="Enter Email Adress" required readonly value="<%= user.getEmail() %>">
									</div>
									<div class="form-group">
										<label>Gender </label>
										<select class="form-group" name="gender">
											<option value="<%= user.getGender() %>" selected disabled="disabled"><%= user.getGender() %></option>
											<option value="Male">Male</option>
											<option value="Female">Female</option>
											<option value="Others">Others</option>		
										</select>
									</div>
									
									<div class="form-group">
										<label>Address</label> <textarea name="address"  placeholder="Enter Your Address"
											><%= user.getAddress() %></textarea>
									</div>
									
									<input type="hidden" value="<%= user.getId() %>" name="user_id">
									
									<div class="form-group">
										<button class="theme-btn btn-style-one d-flex justify-content-center col-12">
											<span class="btn-wrap "> <span class="text-one text-center">Update Details
											</span> <span class="text-two">Update Details</span>
											</span>
										</button>
									</div>
								</form>
							</div>
							<!-- Register Form End-->
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Js File Link -->
	<%@include file="component/js-file.jsp"%>

</body>
</html>