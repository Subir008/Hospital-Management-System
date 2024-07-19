<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Change Password</title>

<%@include file="component/css-file.jsp"%>

<style type="text/css">

.paint-card{
box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
label{
font-size: 19px;
font-weight: bold;
}
</style>

</head>

<body>


	<div class="page-wrapper">


		<!-- Header Added -->
		<%@include file="component/header.jsp"%>

		<!-- If the User is not Logged in Then Redirect to User Login page -->
		<a:if test="${empty userObj }">
			<a:redirect url="user-login.jsp"></a:redirect>
		</a:if>

		<!-- Model of Password Update -->
	<a:if test="${not empty PasswordUpdate  }">
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
							${PasswordUpdate}</h3>
					</div>

				</div>
			</div>
		</div>

		<a:remove var="PasswordUpdate" scope="session" />
	</a:if>

	<!-- Model of Error -->
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

	<!-- Model of Password Not Match -->
	<a:if test="${not empty PasswordNotMatch  }">
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
							${PasswordNotMatch}</h3>
					</div>

				</div>
			</div>
		</div>
		<a:remove var="PasswordNotMatch" scope="session" />
	</a:if>
		
	<!-- Model of Password Wrong -->
	<a:if test="${not empty PasswordWrong  }">
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
							${PasswordWrong}</h3>
					</div>

				</div>
			</div>
		</div>
		<a:remove var="PasswordWrong" scope="session" />
	</a:if>
		
	
		<div class="row clearfix m-5 pb-5">
				<!-- Form Column -->
				<div class="form-column  col-sm-12 col-md-7 offset-3 paint-card p-5 mb-5">
				<h3 class ="text-center pb-5 text-danger">Change Password</h3>
					<div class="inner-column">

						<!-- Comment Form -->
						<div class="default-form contact-form">
							<form method="post" action="change-password"
								id="contact-form">
								<div class="row clearfix">

									<input type="hidden" name="user_id" value=" ${userObj.id}">
									<input type="hidden" name = "email" value = "${userObj.email }">

									<div class="col-lg-12 col-md-12 col-sm-12 form-group">
										<label class="font-weight-bold"> Current Password</label> 
										<input type="text" name="old_password"
											placeholder="" required="">
									</div>

									
									<div class="col-lg-12 col-md-12 col-sm-12 form-group">
										<label>New Password</label> <input type="text" name="new_password"
											placeholder="">
									</div>
									
									<div class="col-lg-12 col-md-12 col-sm-12 form-group">
										<label>Confirm Password</label> <input type="text"
											name="confirm_password" placeholder="" required="">
									</div>

									<div class="col-lg-12 col-md-12 col-sm-12 form-group">
										
								
											<button
												class="theme-btn btn-style-one d-flex justify-content-center col-12">
												<span class="btn-wrap"> <span class="text-one">Confirm	</span> <span class="text-two">Confirm</span>
												</span>
											</button>
										

									</div>

								</div>
							</form>

						</div>
						<!-- End Comment Form -->

					</div>
				</div>
				
			</div>

	

	
		<!-- Footer Section added -->
		<%@include file="component/footer.jsp"%>

	</div>
	<!-- End PageWrapper -->


	<!-- Js File Include -->

	<%@include file="component/js-file.jsp"%>
	<script type="text/javascript">
		$(document).ready(function() {
			$('#exampleModal').modal('show');
		});
	</script>

</body>
</html>