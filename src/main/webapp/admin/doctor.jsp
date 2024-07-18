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
<title>Doctor List</title>

<%@include file="component/css-file.jsp"%>

<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}

.font-size {
	font-size: 17px;
}

.list {
	width: 160px;
}

.list-item {
	display: flex;
	justify-content: space-evenly;
}
</style>

</head>
<body>
	<%@include file="component/navbar.jsp"%>

	<div class="container-fluid p-3">
		<div class="row">

			<div class="col-md-12 table-responsive">

				<!-- Popup of Doctor Updation -->
				<a:if test="${not empty UpdateSuccess  }">
					<div class="col-md-12 mb-5">
						<div class="card paint-card">
							<div class="card-body">

								<h3 class="text-center text-success fs-4 font-weight-bold p-3">
									${UpdateSuccess}</h3>
							</div>
						</div>
					</div>
					<a:remove var="UpdateSuccess" scope="session" />
				</a:if>

				<!-- Popup of Doctor Deletion -->
				<a:if test="${not empty DeleteSuccess  }">
					<div class="col-md-12 mb-5">
						<div class="card paint-card">
							<div class="card-body">

								<h3 class="text-center text-success fs-4 font-weight-bold p-3">
									${DeleteSuccess}</h3>
							</div>
						</div>
					</div>
					<a:remove var="DeleteSuccess" scope="session" />
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


				<h4 class="text-center mb-3 text-uppercase">Doctor Details</h4>
				<table class="table table-hover table-bordered">
					<thead class="text-center table-primary">
						<tr>
							<th scope="col">Full Name</th>
							<th scope="col">Date of Birth</th>
							<th scope="col">Qualification</th>
							<th scope="col">Specialist</th>
							<th scope="col">Email</th>
							<th scope="col">Contact</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>
						<%
						DoctorDao doctorDao = new DoctorDao(Configuration.configure());
						List<Doctor> list1 = doctorDao.fetchDoctor();

						for (Doctor doctor : list1) {
						%>
						<tr class="text-center">
							<td><%=doctor.getFull_name()%></td>
							<td><%=doctor.getDob()%></td>
							<td><%=doctor.getQualification()%></td>
							<td><%=doctor.getSpecialist()%></td>
							<td><%=doctor.getEmail()%></td>
							<td><%=doctor.getContact()%></td>
							<td><div class="dropdown dropdown-inline">
									<a href="javascript:;" class="btn btn-sm btn-clean btn-icon"
										data-toggle="dropdown"><i class="fa-solid fa-gear"></i> </a>
									<div class="dropdown-menu dropdown-menu-sm dropdown-menu-right">
										<ul class="nav nav-hoverable flex-column">
											<li class="nav-item list"><a class="nav-link list-item "
												href="update-doctor-details.jsp?id=<%=doctor.getDoc_id()%>"><i
													class="text-success nav-icon fas fa-pen"></i><span
													class="nav-text">Edit Details</span></a></li>
											<li class="nav-item list"><a class="nav-link list-item"
												href="../delete-doctor-details?id=<%=doctor.getDoc_id()%> "><i
													class="text-danger nav-icon fas fa-trash"></i><span
													class="nav-text">Delete Details</span></a></li>
										</ul>
									</div>
								</div></td>
						</tr>


						<!-- Modal -->
						<%-- <div class="modal fade" id="exampleModalCenter" tabindex="-1"
							role="dialog" aria-labelledby="exampleModalCenterTitle"
							aria-hidden="true">
							<div class="modal-dialog modal-dialog-centered" role="document">
								<div class="modal-content ">
									<div class="modal-header " style="display: block;">
										<h5 class="modal-title text-center" id="exampleModalLongTitle">Do
											You Really Want To Delete ?</h5>
									</div>
									<div class="modal-body text-center">
										<a class="btn btn-primary" role="button"
											>Yes</a>
										<button type="button" class="btn btn-danger"
											data-dismiss="modal">No</button>
									</div>

								</div>
							</div>
						</div> --%>

						<%
						}
						%>


					</tbody>

				</table>
			
							</div>
		</div>
	</div>

	<%@include file="component/js-file.jsp"%>
</body>
</html>