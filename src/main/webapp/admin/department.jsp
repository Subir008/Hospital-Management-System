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
<title>Department List</title>

<%@include file="component/css-file.jsp"%>

<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}

.font-size {
	font-size: 17px;
}

@media only screen and (max-width: 600px ) {
	.details {
		width: 500px;
	}
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
				<a:if test="${not empty UpdateSuccessfull  }">
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
										${UpdateSuccessfull}</h3>
								</div>

							</div>
						</div>
					</div>

					<a:remove var="UpdateSuccessfull" scope="session" />
				</a:if>

				<!-- Popup of Doctor Deletion -->
				<a:if test="${not empty DeleteSuccess  }">
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
										${DeleteSuccess}</h3>
								</div>

							</div>
						</div>
					</div>

					<a:remove var="DeleteSuccess" scope="session" />
				</a:if>

				<!-- Pop up of Error  -->
				<a:if test="${not empty Failed  }">
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
										${Failed}</h3>
								</div>

							</div>
						</div>
					</div>

					<a:remove var="Failed" scope="session" />
				</a:if>



				<h4 class="text-center mb-3 text-uppercase">Department Details</h4>
				<div style="overflow: auto">

					<table class="table table-hover table-bordered"
						style="overflow: auto">
						<thead class="text-center table-primary">
							<tr>
								<th scope="col">Image</th>
								<th scope="col">Name</th>
								<th scope="col">Heading</th>
								<th scope="col">Department Details</th>
								<th scope="col">Action</th>
							</tr>
						</thead>
						<tbody>
							<%
							DepartmentDao departmentDao = new DepartmentDao(Configuration.configure());
							List<Department> list = departmentDao.fetchAllDepartment();

							for (Department department : list) {
							%>
							<tr class="text-center">
								<td>
								<%
									if (department.getDept_img() == null)
									{
								%>
								<img alt=""
									src="../upload_content/department/no_image.png"
									style="height: 250px; width: 250px;">
								
								<%
									}else
									{
								%>
								
								<img alt=""
									src="../upload_content/department/<%=department.getDept_img()%>"
									style="height: 100px!important; width: 300px!important;">
								<%
									}
								%>
									
									</td>
								<td><%=department.getDepartment_name()%></td>
								<td><%=department.getHeading()%></td>
								<td class="details"><%=department.getDept_details()%></td>
								<td><div class="dropdown dropdown-inline">
										<a href="javascript:;" class="btn btn-sm btn-clean btn-icon"
											data-toggle="dropdown"><i class="fa-solid fa-gear"></i> </a>
										<div
											class="dropdown-menu dropdown-menu-sm dropdown-menu-right">
											<ul class="nav nav-hoverable flex-column">
												<li class="nav-item list"><a
													class="nav-link list-item "
													href="update-department-details.jsp?id=<%=department.getDept_id()%>"><i
														class="text-success nav-icon fas fa-pen"></i><span
														class="nav-text">Edit Details</span></a></li>
												<li class="nav-item list"><a class="nav-link list-item"
													data-toggle="modal" data-target="#exampleModalCenter"><i
														class="text-danger nav-icon fas fa-trash"></i><span
														class="nav-text">Delete Details</span></a></li>
											</ul>
										</div>
									</div></td>
							</tr>


							<!-- Modal -->
							<div class="modal fade" id="exampleModalCenter" tabindex="-1"
								role="dialog" aria-labelledby="exampleModalCenterTitle"
								aria-hidden="true">
								<div class="modal-dialog modal-dialog-centered" role="document">
									<div class="modal-content ">
										<div class="modal-header " style="display: block;">
											<h5 class="modal-title text-center"
												id="exampleModalLongTitle">Do You Really Want To Delete
												?</h5>
										</div>
										<div class="modal-body text-center">
											<a class="btn btn-primary" role="button"
												href="../delete-department-details?id=<%=department.getDept_id()%> ">Yes</a>
											<button type="button" class="btn btn-danger"
												data-dismiss="modal">No</button>
										</div>

									</div>
								</div>
							</div>

							<%
							}
							%>


						</tbody>

					</table>
				</div>
			</div>
		</div>
	</div>

	<%@include file="component/js-file.jsp"%>
	<script type="text/javascript">
		$(document).ready(function() {
			$('#exampleModal').modal('show');
		});
	</script>


</body>
</html>