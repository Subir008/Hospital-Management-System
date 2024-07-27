<%@page import="com.dto.Department"%>
<%@page import="com.dao.DepartmentDao"%>
<%@page import="com.dto.Doctor"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.dto.Specialist"%>
<%@page import="java.util.List"%>
<%@page import="com.configuration.Configuration"%>
<%@page import="com.dao.SpecialistDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="a" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Department Details</title>

<%@include file="component/css-file.jsp"%>

<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}

.font-size {
	font-size: 17px;
}

</style>

</head>
<body>
	<%@include file="component/navbar.jsp"%>

	<div class="container-fluid p-3">
		<div class="row">
		
			<div class="col-md-12 d-flex justify-content-center">

				<!-- Popup of Doctor Addition -->
				<a:if test="${not empty Success  }">
					<div class="col-md-12 mb-5">
						<div class="card paint-card">
							<div class="card-body">

								<h3 class="text-center text-success fs-4 font-weight-bold p-3">
									${Success}</h3>
							</div>
						</div>
					</div>
					<a:remove var="Success" scope="session" />
				</a:if>

				<!-- Pop up of failure  -->
				<a:if test="${not empty Failed  }">
					<div class="col-md-12 mb-5">
						<div class="card paint-card">
							<div class="card-body">
								<h3 class="text-center text-danger fs-4 font-weight-bold p-3">
									${Failed}</h3>

								<a:remove var="Failed" scope="session" />
							</div>
						</div>
					</div>
				</a:if>

				<%
				int id = Integer.parseInt(request.getParameter("id"));
				DepartmentDao departmentDao = new DepartmentDao(Configuration.configure());
				Department department = departmentDao.fetchDepartmentById(id);
				%>
				
				<div class="card paint-card col-md-6">
					<div class="card-body  text-success p-5">
						<h4 class="text-center mb-3 text-uppercase">Update Department Details</h4>
						<form action="../update-department" method="post" class="" enctype="multipart/form-data">
							<div class=" form-group row mb-3">
								<label class="form-label  font-size">Department Name</label> <input
									type="text" class="form-control " name="department_name"
									placeholder="Enter Department Name" required="required" value="<%= department.getDepartment_name() %>">
							</div>
							
							<div class="form-group row mb-3 ">
								<label class="form-label  font-size">Flaticon Name</label> <input
									type="text" class="form-control " name="flaticon_name"
									placeholder="Enter Flaticon Name" value="<%= department.getFlaticon_name() %>">
							</div>
							
							<div class="form-group row mb-3 ">
								<label class="form-label  font-size">Heading </label> <input
									type="text" class="form-control " name="heading"
									placeholder="Enter Heading" value="<%= department.getHeading() %>">
							</div>
							
							<div class="form-group row mb-3 ">
								<label class="form-label  font-size">Department Details </label> <textarea
									type="text" class="form-control " name="dept_details"
									placeholder="Enter Department Details" rows="10" ><%= department.getDept_details() %></textarea>
							</div>
							
							 <div class="form-group row mb-3 ">
								<label class="form-label  font-size">Department Image </label> <input
									type="file" class="form-control " name="dept_img"
								 >
							</div>
							

							<input type="hidden" name="dept_id" value="<%= department.getDept_id() %>">
							<div class="form-group  mt-5 text-center">
								<button class="theme-btn btn-style-one  col-8">
									<span class="btn-wrap " style="float: none; font-size: 17px">
										<span class="text-one">Update</span> <span class="text-two">Update</span>
									</span>
								</button>
							</div>
						</form>

					</div>
				</div>
			</div>
		
		</div>
	</div>

	<%@include file="component/js-file.jsp"%>
</body>
</html>