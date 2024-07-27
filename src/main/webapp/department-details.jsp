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
<title>Department Details</title>


<%@include file="component/css-file.jsp"%>

</head>
<body>

	<!-- Header Added -->
	<%@include file="component/header.jsp"%>

	<!-- Preloader -->
	<div class="preloader"></div>
	<!-- End Preloader -->

	<%
		int id = Integer.parseInt( request.getParameter("id") );
		DepartmentDao departmentDao = new DepartmentDao(Configuration.configure());
		Department department = departmentDao.fetchDepartmentById(id);
	%>

	<!-- Page Title -->
	<section class="page-title"
		style="background-image: url(assets/images/background/3.jpg)">
		<div class="auto-container">
			<h2><%= department.getDepartment_name() %></h2>
			<ul class="bread-crumb clearfix">
				<li><a href="index.jsp">Home</a></li>
				<li>Department Detail</li>
			</ul>
		</div>
	</section>
	<!-- End Page Title -->

	<!-- Sidebar Page Container -->
	<div class="sidebar-page-container left-sidebar mb-5">
		<div class="auto-container">
			<div class="row clearfix">

				<!-- Sidebar Side -->
				<div class="sidebar-side col-lg-4 col-md-12 col-sm-12">
					<aside class="sidebar sticky-top">

						<!-- Department Widget -->
						<div class="sidebar-widget department-widget">
							<div class="widget-content">
								<ul class="department-list">
									<%
										List<Department> list = departmentDao.fetchAllDepartment();
										for (Department allDepartment : list)
										{
									%>
									<li ><a href="#"><%= allDepartment.getDepartment_name() %> Department</a></li>
									<%
										}
									%>
								</ul>
							</div>
						</div>

						<!-- Time Widget -->
						<div class="sidebar-widget time-widget">
							<div class="widget-content">
								<div class="time-widget_content">
									<span class="clock_icon flaticon-clock"></span>
									<h4>Working Time</h4>
									<ul class="working-time_list">
										<li>Mon-Thu <span>08:00 - 20:00</span></li>
										<li>Friday <span>07:00 - 22:00</span></li>
										<li>Saturday <span>08:00 - 18:00</span></li>
									</ul>
								</div>
							</div>
						</div>

						<!-- Time Widget -->
						<div class="sidebar-widget contact-info_widget">
							<div class="widget-content">
								<div class="time-widget_content">
									<h4>Contact Info</h4>
									<ul class="contact-info_widget-list">
										<li><span class="icon fa-solid fa-phone fa-fw"></span>80
											Broklyn Golden Street, New York. USA</li>
										<li><span class="icon fa-solid fa-envelope fa-fw"></span>
											<a href="mailto:needhelp@company.com">needhelp@company.com</a></li>
										<li><span class="icon fa-solid fa-clock fa-fw"></span>Mon
											- Sat 8:00 - 6:30, <br> Sunday - CLOSED</li>
									</ul>
								</div>
							</div>
						</div>

						<!-- Expert Widget -->
						<div class="sidebar-widget expert_widget"
							style="background-image: url(assets/images/background/pattern-33.png)">
							<span class="color-layer"></span>
							<h3>
								Ready To Get Expert <br> Our Service
							</h3>
							<a href="contact-us.jsp" class="theme-btn btn-style-one"> <span
								class="btn-wrap"> <span class="text-one">Contact
										Now</span> <span class="text-two">Contact Now</span>
							</span>
							</a>
							<div class="image">
								<img src="assets/images/resource/doctor-1.png" alt="" />
							</div>
						</div>

					</aside>
				</div>

				<!-- Content Side -->
				<div class="content-side col-lg-8 col-md-12 col-sm-12">
					<div class="department-detail">
						<div class="inner-box">
							<div class="image">
								<img src="upload_content/department/<%= department.getDept_img() %>" alt="" />
							</div>
							<h3><%= department.getHeading() %></h3>
							<!-- <div class="bold-text">Cardiology is the study and
								treatment of disorders of the heart and the blood vessels. A
								person with heart disease or cardiovascular disease may be
								referred to a cardiologist.</div>
 -->							<p><%= department.getDept_details() %></p>
							
						
						
							
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>

	<!-- Footer Section added -->
	<%@include file="component/footer.jsp"%>


	<!-- Js File Include -->

	<%@include file="component/js-file.jsp"%>
</body>
</html>