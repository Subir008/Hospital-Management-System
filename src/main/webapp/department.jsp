<%@page import="java.util.List"%>
<%@page import="com.dto.Department"%>
<%@page import="com.configuration.Configuration"%>
<%@page import="com.dao.DepartmentDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Department</title>


<%@include file="component/css-file.jsp"%>

</head>
<body>


	<!-- Header Added -->
	<%@include file="component/header.jsp"%>

	<!-- Preloader -->
	<div class="preloader"></div>
	<!-- End Preloader -->


	<!-- Page Title -->
	<section class="page-title"
		style="background-image: url(assets/images/background/3.jpg)">
		<div class="auto-container">
			<h2>Department</h2>
			<ul class="bread-crumb clearfix">
				<li><a href="index.jsp">Home</a></li>
				<li>Department</li>
			</ul>
		</div>
	</section>
	<!-- End Page Title -->


	<!-- Popup of Department Updation -->
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

	<!-- Popup of Department Deletion -->
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
	<a:if test="${not empty Error  }">
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
							${Error}</h3>
					</div>

				</div>
			</div>
		</div>

		<a:remove var="Error" scope="session" />
	</a:if>




	<%
	// Sending connection to the DepartmentDao Class to invoke its method
	DepartmentDao departmentDao = new DepartmentDao(Configuration.configure());
	List<Department> list = departmentDao.fetchAllDepartment();
	%>

	<!-- Department One -->
	<section class="department-one mb-5">
		<div class="auto-container">
			<div class="row clearfix">

				<%
				for (Department department : list) {
				%>

				<!-- Department Block -->
				<div class="department-one_block-two col-lg-4 col-md-6 col-sm-12">
					<div class="department-one_block-two_inner">
						<div class="department-one_block-two_image">
							<a
								href="department-details.jsp?id=<%=department.getDept_id()%>">
								<img
								src="upload_content/department/<%=department.getDept_img()%>"
								style="height: 270px;" alt="" />
							</a>
						</div>
						<div class="department-one_block-two_content">
							<span
								class="department-one_block-two_icon <%=department.getFlaticon_name()%>"></span>
							<h5 class="department-one_block-two_heading">
								<a href="department-details.jsp?id=<%= department.getDept_id() %>"><%=department.getDepartment_name()%></a>
							</h5>
							<div class="department-one_block-two_text"><%=department.getHeading()%></div>
							<a class="department-one_block-two_more"
								href="department-details.jsp?id=<%= department.getDept_id() %>">read more</a>
						</div>
					</div>
				</div>


				<%
				}
				%>


			</div>
		</div>
	</section>
	<!-- End Department One -->


	<!-- Footer Section added -->
	<%@include file="component/footer.jsp"%>


	<!-- Js File Include -->

	<%@include file="component/js-file.jsp"%>
	<script type="text/javascript">
		$(document).ready(function() {
			$('#exampleModal').modal('show');
		});
	</script>
	


</body>
</html>