<%@page import="java.util.List"%>
<%@page import="com.dao.UserDao"%>
<%@page import="com.configuration.Configuration"%>
<%@page import="com.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Details</title>

<%@include file="component/css-file.jsp"%>

<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>

</head>
<body>

	<%@include file="component/navbar.jsp"%>
	
	<div class="auto-container mt-4" style="max-width: 100%">
			<h3 class="text-center"> User List</h3>

			<div class="row clearfix m-4 pb-5">
				<!-- Form Column -->
				<div class="form-column col-12 col-md-12 col-sm-12 ">
					<div class="inner-column">

						<table class="table table-hover table-bordered">
							<thead class="text-center  thead-dark">
								<tr>
									<th scope="col">Full Name</th>
									<th scope="col">Email</th>
								</tr>
							</thead>

							<tbody>
								<%
								/* 	Getting all the appointments data */
								UserDao userDao = new UserDao(Configuration.configure());
								List<User> list = userDao.getAllUser();

								for (User user : list) {
								%>

								<tr class="text-center table-danger">
									<th scope="row"><%=user.getName()%></th>
									<td><%= user.getEmail() %></td>
									
								</tr>

								<%
								}
								%>

							</tbody>
						</table>



					</div>
				</div>

			</div>
		</div>
	

</body>
</html>