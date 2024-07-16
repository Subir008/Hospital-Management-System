<%@page import="com.dto.Doctor"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.dto.User"%>
<%@page import="java.util.List"%>
<%@page import="com.configuration.Configuration"%>
<%@page import="com.dao.AppointmentDao"%>
<%@page import="com.dto.Appointment"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="a" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Appointment List</title>

<%@include file="component/css-file.jsp"%>

</head>
<body>

	<!-- Header Added -->
	<%@include file="component/header.jsp"%>
	
	<a:if test="${empty userObj }">
		<a:redirect url="user-login.jsp"></a:redirect>
	</a:if>

		<!--  Appointment Section -->
	<section class="contact-form-section mt-3 pb-4">
		<div class="auto-container" style="max-width: 100%">
			<h3 class="text-center">Appointment List</h3>

			<div class="row clearfix m-4 pb-5">
				<!-- Form Column -->
				<div class="form-column col-lg-9 col-md-12 col-sm-12 ">
					<div class="inner-column">

					<table class="table table-hover table-bordered">
					<thead class="text-center">
						<tr>
							<th scope="col">Full Name</th>
							<th scope="col">Gender</th>
							<th scope="col">Age</th>
							<th scope="col">Email</th>
							<th scope="col">Contact</th>
							<th scope="col">Appointment Date</th>
							<th scope="col">Disease</th>
							<th scope="col">Doctor</th>
							<th scope="col">Status</th>
						</tr>
					</thead>
					
					<tbody>
					<%
						/* 	Getting the user id from the session when the user is logged in */
						User user = (User) session.getAttribute("userObj");
					
						AppointmentDao appointmentDao = new AppointmentDao(Configuration.configure());
						List<Appointment> list  = appointmentDao.fetchAllAppointment(user.getId());
					
						for (Appointment appointment : list)
						{
							// Getting the doctor name by the doctor id 
							DoctorDao doctorDao = new DoctorDao(Configuration.configure());
							Doctor doctor =  doctorDao.fetchDoctorById(appointment.getDoc_id());
					%>

						<tr class= "text-center">
					      <th scope="row"><%= appointment.getFull_name() %></th>
					      <td><%= appointment.getGender() %></td>
					      <td><%= appointment.getAge() %></td>
					      <td><%= appointment.getEmail() %></td>
					      <td><%= appointment.getContact() %></td>
					      <td><%= appointment.getAppointment_date() %></td>
					      <td><%= appointment.getDisease() %></td>
					      <td><%= doctor.getFull_name() %></td>
					      <% if (appointment.getStatus().equals("Pending"))
					      {
					      %>
					      <td><a class="btn btn-sm btn-warning text-white" >Pending</a></td> 
					      <%
					      }else
					      {
					      %>
					      <td><%= appointment.getStatus() %></td>
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
				<!-- Image Column -->
				<div class="image-column col-lg-3 col-md-12 col-sm-12 d-flex align-items-center" >
					<div class="inner-column " > 
						<div class="image wow fadeInRight " data-wow-delay="0ms"
							data-wow-duration="1500ms" >
							<img src="assets/images/resource/about-3.jpg" alt="" />
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End  Appointment Section -->
	
	
	
</body>
</html>