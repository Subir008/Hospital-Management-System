<%@page import="com.dto.Doctor"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.configuration.Configuration"%>
<%@page import="com.dto.Appointment"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.AppointmentDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Patient Appointments List</title>

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
			<h3 class="text-center">Patient Appointment List</h3>

			<div class="row clearfix m-4 pb-5">
				<!-- Form Column -->
				<div class="form-column col-12 col-md-12 col-sm-12 ">
					<div class="inner-column">

						<table class="table table-hover table-bordered">
							<thead class="text-center  thead-dark">
								<tr>
									<th scope="col">Full Name</th>
									<th scope="col">Gender</th>
									<th scope="col">Age</th>
									<th scope="col">Email</th>
									<th scope="col">Contact</th>
									<th scope="col">Address</th>
									<th scope="col">Appointment Date</th>
									<th scope="col">Disease</th>
									<th scope="col">Doctor</th>
									<th scope="col">Status</th>
									<th scope="col">Comment</th>
								</tr>
							</thead>

							<tbody>
								<%
								/* 	Getting all the appointments data */
								AppointmentDao appointmentDao = new AppointmentDao(Configuration.configure());
								List<Appointment> list = appointmentDao.fetchAllAppointment();

								for (Appointment appointment : list) {
									DoctorDao doctorDao = new DoctorDao(Configuration.configure());
									Doctor doctor = doctorDao.fetchDoctorById( appointment.getDoc_id() );
								%>

								<tr class="text-center table-success">
									<th scope="row"><%=appointment.getFull_name()%></th>
									<td><%=appointment.getGender()%></td>
									<td><%=appointment.getAge()%></td>
									<td><%=appointment.getEmail()%></td>
									<td><%=appointment.getContact()%></td>
									<td><%=appointment.getAddress()%></td>
									<td><%=appointment.getAppointment_date()%></td>
									<td><%=appointment.getDisease()%></td>
									<td><%=doctor.getFull_name()%></td>
									<%
									if (appointment.getStatus().equals("Pending")) {
									%>
									<td><a class="btn btn-sm btn-warning text-light"><i class="fa-solid fa-clock"></i> <nbsp> Pending</a></td>
									<%
									} else {
									%>
									<td><%=appointment.getStatus()%></td>
									<%
									}
									%>
									<td><%=appointment.getComment()%></td>
									
									
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