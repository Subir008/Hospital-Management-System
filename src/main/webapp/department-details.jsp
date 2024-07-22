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


	<!-- Page Title -->
	<section class="page-title"
		style="background-image: url(assets/images/background/3.jpg)">
		<div class="auto-container">
			<h2>Department Detail</h2>
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
									<li class="active"><a href="#">Dental Department</a></li>
									<li><a href="#">Eye Care Deoartment</a></li>
									<li><a href="#">Neurology Department</a></li>
									<li><a href="#">Cardiology Department</a></li>
									<li><a href="#">Orthopedic Department</a></li>
									<li><a href="#">Hematology Department</a></li>
									<li><a href="#">Dermatology Department</a></li>
									<li><a href="#">Pulmonology Department</a></li>
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
							<a href="appointment.html" class="theme-btn btn-style-one"> <span
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
								<img src="assets/images/resource/department-13.jpg" alt="" />
							</div>
							<h3>Professional Medical Service Of Cardiology</h3>
							<div class="bold-text">Cardiology is the study and
								treatment of disorders of the heart and the blood vessels. A
								person with heart disease or cardiovascular disease may be
								referred to a cardiologist.</div>
							<p>Cardiology is a branch of internal medicine. A
								cardiologist is not the same as a cardiac surgeon. A cardiac
								surgeon opens the chest and performs heart surgery.</p>
							<p>A cardiologist specializes in diagnosing and treating
								diseases of the cardiovascular system. The cardiologist will
								carry out tests, and they may perform some procedures, such as
								heart catheterizations, angioplasty, or inserting a pacemaker.</p>
							<p>Heart disease relates specifically to the heart, while
								cardiovascular disease affects the heart, the blood vessels, or
								both.</p>
							<p>To become a cardiologist in the United States, it is
								necessary to complete 4 years of medical school, 3 years of
								training in internal medicine, and at least 3 years specializing
								in cardiology.</p>
							<h3>When would I need a cardiologist?</h3>
							<p>If a person has symptoms of a heart condition, their
								physician may refer them to a cardiologist.</p>
							<div class="graph-outer">
								<div class="row clearfix">
									<div class="column col-lg-6 col-md-6 col-sm-12">
										<p>Symptoms that can indicate a heart problem include:</p>
										<ul class="list">
											<li>Shortness of Breath</li>
											<li>Dizziness</li>
											<li>Chest Pains</li>
											<li>Changes in Heart Rate or Rhythm</li>
											<li>High Blood Pressure</li>
										</ul>
									</div>
									<div class="column col-lg-6 col-md-6 col-sm-12">
										<div class="image">
											<img src="assets/images/resource/graph.jpg" alt="" />
										</div>
									</div>
								</div>
							</div>
							<h3>What does cardiology involve?</h3>
							<p>A cardiologist will review a patient’s medical history and
								carry out a physical examination.</p>
							<p>They may check the person’s weight, heart, lungs, blood
								pressure, and blood vessels, and carry out some tests.</p>
							<p>An interventional cardiologist may carry out procedures
								such as angioplasties, stenting, valvuloplasties, congenital
								heart defect corrections, and coronary thrombectomies.</p>
							<h3>tests</h3>
							<p>They may also carry out or order tests as listed below:</p>
							<div class="image">
								<img src="assets/images/resource/department-14.jpg" alt="" />
							</div>
							<p>
								<strong>Electrocardiogram (ECG or EKG): </strong>this records
								the electrical activity of the heart.
							</p>
							<p>
								<strong>Ambulatory ECG: </strong>this records heart rhythms
								while the person carries out exercise or their regular
								activities. Small metal electrodes are stuck on to the chest,
								and these are connected by wires to a Holter monitor, which
								records the rhythms.
							</p>
							<p>
								<strong>An exercise test, or stress test: </strong>this shows
								the changes of heart rhythm when resting and exercising. It
								measures the performance and limitations of the heart.
							</p>
							<p>
								<strong>Echocardiogram: </strong>this provides an ultrasound
								picture that shows the structure of the heart chambers and
								surrounding areas, and it can show how well the heart is
								working.
							</p>
							<p>Echocardiography can measure how well the heart is pumping
								blood, known as cardiac output. It can detect inflammation
								around the heart, known as pericarditis. It can also identify
								structural abnormalities or infections of the heart valves.</p>
							<p>
								<strong>Cardiac catheterization: </strong>a small tube in or
								near the heart collects data and may help relieve a blockage. It
								can take pictures and check the functioning of the heart and the
								electrical system. Catheter-based techniques with fluoroscopy
								can be used to treat congenital cardiac, valvular, and coronary
								artery diseases.
							</p>
							<p>
								<strong>Nuclear cardiology: </strong>nuclear imaging techniques
								use radioactive materials to study cardiovascular disorders and
								diseases in a noninvasive way.
							</p>
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