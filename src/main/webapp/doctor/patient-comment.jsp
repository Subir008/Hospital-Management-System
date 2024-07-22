<%@page import="com.dto.Appointment"%>
<%@page import="com.configuration.Configuration"%>
<%@page import="com.dao.AppointmentDao"%>
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

	<div class="auto-container mt-5" style="max-width: 100%">
		<h3 class="text-center">Doctor Review</h3>

		<div class="row clearfix mt-3  pb-5">
			<div class="col-12 d-flex justify-content-center">
				<div class="card paint-card paint-card col-12">
					<div class="card-body  text-success pl-3 pr-3">
						<!-- <h4 class="text-center mb-3 text-uppercase">Update Doctor
							Details</h4> -->
						
						<%
						//Fetching the appoinment id from the url
						int appointment_id =Integer.parseInt(request.getParameter("appointment_id"));
						AppointmentDao appointmentDao = new AppointmentDao(Configuration.configure());
						
						//Fetching the appoinment id based on id
						Appointment appointment =	appointmentDao.fetchAppointmentById(appointment_id);
						%>	
						
						<form action="../add-comment" method="post">
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputEmail4">Name</label> <input type="text"
										class="form-control"  name="" readonly="readonly" value="<%= appointment.getFull_name() %>">
								</div>
								<div class="form-group col-md-6">
									<label for="inputPassword4">Gender</label> <input
										type="text" class="form-control"  readonly="readonly" value="<%= appointment.getGender() %>">
								</div>
							</div>
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputEmail4">Age</label> <input type="text"
										class="form-control"  name="" readonly="readonly" value="<%= appointment.getAge() %>">
								</div>
								<div class="form-group col-md-6">
									<label for="inputPassword4">Contact</label> <input
										type="text" class="form-control"  readonly="readonly" value="<%= appointment.getContact() %>">
								</div>
							</div>
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputEmail4">Disease</label> <input type="text"
										class="form-control"  name="" readonly="readonly" value="<%= appointment.getDisease() %>">
								</div>
								<div class="form-group col-md-6">
									<label for="inputPassword4">Status</label> 
									<select class="form-control" name="status" required>
										<option selected="selected" disabled="disabled" value="">Pending</option>
										<option value="Closed">Closed</option>
									</select>
									
								</div>
							</div>
							<div class="form-group">
								<label for="inputAddress">Comment</label> <textarea type="text"
									class="form-control" name="comment"
									placeholder="Add Comments Here" required></textarea>
							</div>
							
							<!-- Taking appoinment and doctor id in hidden to update the data based on these id -->
							<input type="hidden" name="appointment_id" value="<%= appointment.getAppointment_id() %>">
							<input type="hidden" name="doc_id" value="<%= appointment.getDoc_id() %>">
							
							
							<button type="submit" class="btn btn-primary btn-lg col-12">Submit</button>
						</form>

					</div>
				</div>

			</div>
		</div>

	</div>
	<%@include file="component/js-file.jsp"%>

</body>
</html>