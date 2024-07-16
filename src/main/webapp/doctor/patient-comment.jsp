<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor Review</title>

<%@include file="component/css-file.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>

	<%@include file="component/navbar.jsp"%>

	<div class="auto-container" style="max-width: 100%">
		<h3 class="text-center">Doctor Review</h3>

		<div class="row clearfix m-4 pb-5">
			<div class="col-12 d-flex justify-content-center">
				<div class="card paint-card paint-card">
					<div class="card-body  text-success p-5">
						<!-- <h4 class="text-center mb-3 text-uppercase">Update Doctor
							Details</h4> -->
						<form>
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputEmail4">Name</label> <input type="text"
										class="form-control" id="inputEmail4" name="" readonly="readonly">
								</div>
								<div class="form-group col-md-6">
									<label for="inputPassword4">Gender</label> <input
										type="password" class="form-control" id="inputPassword4" readonly="readonly">
								</div>
							</div>
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputEmail4">Age</label> <input type="text"
										class="form-control" id="inputEmail4" name="" readonly="readonly">
								</div>
								<div class="form-group col-md-6">
									<label for="inputPassword4">Contact</label> <input
										type="password" class="form-control" id="inputPassword4" readonly="readonly">
								</div>
							</div>
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputEmail4">Disease</label> <input type="text"
										class="form-control" id="inputEmail4" name="" readonly="readonly">
								</div>
								<div class="form-group col-md-6">
									<label for="inputPassword4">Status</label> <input
										type="password" class="form-control" id="inputPassword4" >
								</div>
							</div>
							<div class="form-group">
								<label for="inputAddress">Comment</label> <input type="text"
									class="form-control" id="inputAddress"
									placeholder="1234 Main St">
							</div>
							
							<div class="form-row">
								
								<div class="form-group col-md-4">
									<label for="inputState">State</label> <select id="inputState"
										class="form-control">
										<option selected>Choose...</option>
										<option>...</option>
									</select>
								</div>
								<div class="form-group col-md-2">
									<label for="inputZip">Zip</label> <input type="text"
										class="form-control" id="inputZip">
								</div>
							</div>
							<div class="form-group">
								<div class="form-check">
									<input class="form-check-input" type="checkbox" id="gridCheck">
									<label class="form-check-label" for="gridCheck"> Check
										me out </label>
								</div>
							</div>
							<button type="submit" class="btn btn-primary">Sign in</button>
						</form>

					</div>
				</div>

			</div>
		</div>

	</div>
	<%@include file="component/js-file.jsp"%>

</body>
</html>