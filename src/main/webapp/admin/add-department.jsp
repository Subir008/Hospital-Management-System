<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="a" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Department</title>

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
		<div class="row clearfix ">
			<div class="col-md-12 d-flex justify-content-center">

				<!-- Popup of Doctor Addition-->
				<a:if test="${not empty InsertSuccessfull  }">
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
										${InsertSuccessfull}</h3>
								</div>

							</div>
						</div>
					</div>

					<a:remove var="InsertSuccessfull" scope="session" />
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

				<div class="card paint-card col-md-8 col-sm-6 " >
					<div class="card-body  text-success p-5">
						<h4 class="text-center mb-3 text-uppercase">Add Department</h4>
						<form action="../add-department" method="post" enctype="multipart/form-data">
							<div class=" form-group row mb-3">
								<label class="form-label  font-size">Department Name</label> <input
									type="text" class="form-control " name="department_name"
									placeholder="Enter Department Name" required="required">
							</div>
							
							<div class=" form-group row mb-3">
								<label class="form-label  font-size">Flaticon</label> <input
									type="text" class="form-control " name="flaticon_name"
									placeholder="Add Flaticon" required="required">
							</div>
							
							<div class="form-group row mb-3 ">
								<label class="form-label  font-size">Heading</label> <input
									type="text" class="form-control " name="heading"
									placeholder="Add Heading">
							</div>
							
							<div class="form-group row mb-3 ">
								<label class="form-label  font-size">Department Details</label> <textarea
									type="text" class="form-control " name="dept_details"
									placeholder="Add Details Here"  rows="10"></textarea>
							</div>
							
							<div class="form-group row mb-3 ">
								<label class="form-label  font-size">Department Image</label> <input
									type="file" class="form-control " name="dept_img">
							</div>
							
							<div class="form-group  mt-5  d-flex justify-content-center">
								<button class="theme-btn btn-style-one  col-8">
									<span class="btn-wrap " style="float: none; font-size: 17px">
										<span class="text-one">Submit</span> <span class="text-two">Submit</span>
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
	
	<script type="text/javascript">
		$(document).ready(function() {
			$('#exampleModal').modal('show');
		});
	</script>
</body>
</html>