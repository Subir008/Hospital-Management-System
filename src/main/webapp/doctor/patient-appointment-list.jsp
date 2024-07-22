<%@page import="com.dto.Appointment"%>
<%@page import="java.util.List"%>
<%@page import="com.configuration.Configuration"%>
<%@page import="com.dao.AppointmentDao"%>
<%@page import="com.dto.Doctor"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>Appointment List</title>

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

	<%@include file="component/navbar.jsp"%>

	<!-- Popup of Booking Confirm -->
	<a:if test="${not empty CommentUpdated  }">
		<div class="modal" id="exampleModal" tabindex="-1" role="dialog">
			<div class="modal-dialog modal-dialog-centered " role="document">
				<div class="modal-content paint-card">

					<div class="modal-body">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<br>
						<h3 class="text-center text-success fs-4 font-weight-bold p-3 pb-5">
							${CommentUpdated}</h3>
					</div>

				</div>
			</div>
		</div>

		<a:remove var="CommentUpdated" scope="session" />
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



	<!--  Appointment Section -->
	<section class="contact-form-section mt-3 pb-4">
		<div class="auto-container" style="max-width: 100%">
			<h3 class="text-center text-uppercase">Patient Appointment List</h3>

			<div class="row clearfix mt-4 pb-5">
				<!-- Form Column -->
				<div class="form-column col-12 col-md-12 col-sm-12 ">
					<div class="inner-column table-responsive">

						<table class="table table-hover table-bordered" style="overflow:auto;">
							<thead class="text-center thead-dark">
								<tr>
									<th scope="col">Full Name</th>
									<th scope="col">Gender</th>
									<th scope="col">Age</th>
									<th scope="col">Email</th>
									<th scope="col">Contact</th>
									<th scope="col">Appointment Date</th>
									<th scope="col">Disease</th>
									<th scope="col">Status</th>
									<th scope="col">Comment</th>
									<th scope="col">Add Comment</th>
								</tr>
							</thead>

							<tbody>
								<%
								/* 	Getting the user id from the session when the user is logged in */
								Doctor doctor = (Doctor) session.getAttribute("doctorObj");

								AppointmentDao appointmentDao = new AppointmentDao(Configuration.configure());
								List<Appointment> list = appointmentDao.fetchDoctorById(doctor.getDoc_id());

								for (Appointment appointment : list) {
								%>

								<tr class="text-center">
									<th scope="row"><%=appointment.getFull_name()%></th>
									<td><%=appointment.getGender()%></td>
									<td><%=appointment.getAge()%></td>
									<td><%=appointment.getEmail()%></td>
									<td><%=appointment.getContact()%></td>
									<td><%=appointment.getAppointment_date()%></td>
									<td><%=appointment.getDisease()%></td>
									<%
									if (appointment.getStatus().equals("Pending")) {
									%>
									<td><a class="btn btn-sm btn-warning text-light">Pending</a></td>
									<%
									} else {
									%>
									<td><%=appointment.getStatus()%></td>
									<%
									}
									%>
									<td><%=appointment.getComment()%></td>
									<%
									if("Pending".equals(appointment.getStatus()))
									{
									%>
									<td><a class="btn btn-sm btn-primary text-light"
										href="patient-comment.jsp?appointment_id=<%=appointment.getAppointment_id()%>">Add
											Comment</a></td>
									<%
									}else{
									%>
									<td><a class="btn btn-sm btn-primary text-light disabled" 
										href="#">
											Comment Added</a></td>
									<%
									}
									%>
									
									
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
		
	</section>
	<!-- End  Appointment Section -->

	<!-- Js File Include -->

	<%@include file="component/js-file.jsp"%>
	<script type="text/javascript">
		$(document).ready(function() {
			$('#exampleModal').modal('show');
		});
	</script>

</body>

</html>