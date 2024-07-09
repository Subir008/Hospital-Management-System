<%@ taglib prefix="a" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>


<!-- Header Style One -->
<header class="main-header">

	<!-- Header Upper -->
	<div class="header-upper">
		<div class="auto-container" style="max-width: 100%">
			<div
				class="d-flex justify-content-between align-items-center flex-wrap">

				<div class="logo-box">
					<div class="logo">
						<a href="index.html"><img src="assets/images/logo.png" alt=""
							title=""></a>
					</div>
				</div>

				<div class="upper-right d-flex flex-wrap">

					<!--Info Box-->
					<div class="upper-column info-box">
						<div class="icon-box">
							<span class="flaticon-clock"></span>
						</div>
						<ul>
							<li><strong>Monday - Friday 8:00 - 6:30</strong></li>
							<li>Saturday and Sunday - CLOSED</li>
						</ul>
					</div>

					<!--Info Box-->
					<div class="upper-column info-box">
						<div class="icon-box">
							<span class="flaticon-send-mail"></span>
						</div>
						<ul>
							<li><strong>+92 (8800) 9806</strong></li>
							<li><a href="mailto:needhelp@company.com">needhelp@company.com</a></li>
						</ul>
					</div>

					<!--Info Box-->
					<div class="upper-column info-box">
						<div class="icon-box">
							<span class="flaticon-placeholder"></span>
						</div>
						<ul>
							<li><strong>New York. USA</strong></li>
							<li>80 Broklyn Golden Street</li>
						</ul>
					</div>

				</div>

			</div>
		</div>
	</div>
	<!--End Header Upper-->

	<!-- Header Lower -->
	<div class="header-lower">
		<div class="auto-container" style="max-width: 100%;">

			<div
				class="inner-container d-flex justify-content-between align-items-center flex-wrap">

				<div class="nav-outer">
					<!-- Main Menu -->
					<nav class="main-menu navbar-expand-md">
						<div class="navbar-header">
							<!-- Toggle Button -->
							<button class="navbar-toggler" type="button"
								data-toggle="collapse" data-target="#navbarSupportedContent"
								aria-controls="navbarSupportedContent" aria-expanded="false"
								aria-label="Toggle navigation">
								<span class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>
						</div>

						<div class="navbar-collapse collapse clearfix"
							id="navbarSupportedContent">
							<ul class="navigation clearfix">
								<li><a href="index.jsp">Home</a></li>
								<li class="dropdown"><a href="#">About</a>
									<ul>
										<li><a href="about.html">About us</a></li>
										<li><a href="faq.html">Faq's</a></li>
										<li><a href="price.html">Price</a></li>
										<li><a href="price-2.html">Price 02</a></li>
										<li><a href="process.html">Process</a></li>
										<li><a href="gallery.html">Projects</a></li>
										<li><a href="timetable.html">Timetable</a></li>
										<li><a href="testimonial.html">Testimonial</a></li>
										<li><a href="coming-soon.html">Coming Soon</a></li>
										<li><a href="terms.html">Terms Condition</a></li>
										<li><a href="privacy.html">Privacy Policy</a></li>
										<li class="dropdown"><a href="#">Doctors</a>
											<ul>
												<li><a href="doctors.html">Doctors</a></li>
												<li><a href="doctor-detail.html">Doctor Detail</a></li>
												<li><a href="doctor-detail-2.html">Doctor Detail 02</a></li>
											</ul></li>
									</ul></li>
								<li class="dropdown"><a href="#">Services</a>
									<ul>
										<li><a href="services.html">Services</a></li>
										<li><a href="intensive-care.html">Trauma intensive
												care</a></li>
										<li><a href="community.html">Community Services</a></li>
										<li><a href="diagnosis.html">Diagnosis Investigation</a></li>
										<li><a href="surgical.html">Medical Surgical</a></li>
										<li><a href="specialised.html">Specialised Support
												Service</a></li>
										<li><a href="rehabitation.html">Health Rehabitation</a></li>
									</ul></li>
								<li class="dropdown"><a href="#">department</a>
									<ul>
										<li><a href="department.html">department</a></li>
										<li><a href="department-detail.html">department
												Detail</a></li>
									</ul></li>


								<li class="dropdown"><a href="#">Blog</a>
									<ul>
										<li><a href="blog.html">Our Blog</a></li>
										<li><a href="blog-left-sidebar.html">Blog left
												Sidebar</a></li>
										<li><a href="blog-classic.html">Blog Classic</a></li>
										<li><a href="blog-detail.html">Blog Detail</a></li>
										<li><a href="not-found.html">Not Found</a></li>
									</ul></li>
								<li class="dropdown"><a href="#">Contact</a>
									<ul>
										<li><a href="contact.html">Contact 01</a></li>
										<li><a href="contact-2.html">Contact 02</a></li>
										<li><a href="contact-3.html">Contact 03</a></li>
									</ul></li>
								<a:if test="${empty userObj }">
									<li class="dropdown"><a href="#">Administration</a>
										<ul>
											<li><a href="admin-login.jsp">Admin</a></li>
											<li><a href="doctor-login.jsp">Doctor</a></li>
										</ul></li>
								</a:if>

							</ul>
						</div>
					</nav>
				</div>

				<!-- Main Menu End-->
				<!-- 	<div class="outer-box  flex-wrap"> -->
				<!-- 
					Search Btn
					<div class="search-box-btn search-box-outer">
						<span class="icon fa fa-search"></span>
					</div> -->


				<!-- Social Box -->
				<!-- 	<ul class="header-social_box">
								<li><a href="https://www.twitter.com/"
									class="fa-brands fa-twitter fa-fw"></a></li>
								<li><a href="https://www.facebook.com/"
									class="fa-brands fa-facebook-f fa-fw"></a></li>
								<li><a href="https://dribbble.com/"
									class="fa-brands fa-dribbble fa-fw"></a></li>
								<li><a href="https://www.linkedin.com/"
									class="fa-brands fa-linkedin fa-fw"></a></li>
							</ul> -->


				<div class="nav-outer">
					<!-- Main Menu -->
					<nav class="main-menu navbar-expand-md">
						<div class="navbar-header">
							<!-- Toggle Button -->
							<button class="navbar-toggler" type="button"
								data-toggle="collapse" data-target="#navbarSupportedContent"
								aria-controls="navbarSupportedContent" aria-expanded="false"
								aria-label="Toggle navigation">
								<span class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>
						</div>

						<div class="navbar-collapse collapse clearfix"
							id="navbarSupportedContent">

							<div class="appointmeny_button-box">
								<a href="#" class="theme-btn btn-style-one"> <span
									class="btn-wrap"> <span class="text-one">Appoint
											Now</span> <span class="text-two">Appoint Now</span>
								</span>
								</a>
							</div>
							<!-- User Btn -->
							<a:if test="${empty userObj }">
								<div class="search-box-btn search-box-outer">
									<a href="user-login.jsp"><i class="fa fa-user-circle fa-lg"
										aria-hidden="true"></i></a>
								</div>
							</a:if>

							<a:if test="${ not empty userObj }">

								<ul class="navigation clearfix">
									<li class="dropdown userBtn"><a href="#"><i
											class="fa fa-user-circle fa-lg" aria-hidden="true"></i> <nbsp>
											${userObj.name } </a>
										<ul>
											<li><a href="#">Change Password</a></li>
											<li><a href="userLogout">Log Out <nbsp>
													<nbsp> <i class="fa-solid fa-right-from-bracket"></i></a></li>
										</ul></li>
								</ul>


							</a:if>

						</div>
					</nav>
				</div>



				<!-- Mobile Navigation Toggler -->
				<div class="mobile-nav-toggler">
					<span class="icon flaticon-menu"></span>
				</div>

			</div>
		
		</div>
	</div>
	<!-- End Header Lower -->

	<!-- Sticky Header  -->
	<div class="sticky-header">
		<div class="auto-container">
			<div
				class="inner-container d-flex justify-content-between align-items-center flex-wrap">

				<!-- Logo -->
				<div class="logo">
					<a href="index.html" title=""><img src="assets/images/logo.png"
						alt="" title=""></a>
				</div>

				<!-- Right Box -->
				<div class="right-box">
					<!-- Main Menu -->
					<nav class="main-menu">
						<!--Keep This Empty / Menu will come through Javascript-->
						
					</nav>
					<!-- Main Menu End-->
					<!-- Mobile Navigation Toggler -->
					<div class="mobile-nav-toggler">
						<span class="icon flaticon-menu"></span>
					</div>
				</div>

			</div>
		</div>
		<!-- End Sticky Menu -->
	</div>

	<!-- Mobile Menu  -->
	<div class="mobile-menu">
		<div class="menu-backdrop"></div>
		<div class="close-btn">
			<span class="icon flaticon-close"></span>
		</div>

		<nav class="menu-box">
			<div class="nav-logo">
				<a href="index.html"><img src="assets/images/logo-small.png"
					alt="" title=""></a>
			</div>
			
			<div class="menu-outer">
				<!-- User Btn -->
							<a:if test="${empty userObj }">
								<div class="search-box-btn search-box-outer">
									<a href="user-login.jsp"><i class="fa fa-user-circle fa-lg"
										aria-hidden="true"></i></a>
								</div>
							</a:if>

							<a:if test="${ not empty userObj }">

								<ul class="navigation clearfix">
									<li class="dropdown "><a href="#"><i
											class="fa fa-user-circle fa-lg" aria-hidden="true"></i> <nbsp>
											${userObj.name } </a>
										<ul class="userBtn">
											<li><a href="#">Change Password</a></li>
											<li><a href="userLogout">Log Out <nbsp>
													<nbsp> <i class="fa-solid fa-right-from-bracket"></i></a></li>
										</ul></li>
								</ul>


							</a:if>
			
				<!--Here Menu Will Come Automatically Via Javascript / Same Menu as in Header-->
				
			</div>
		</nav>
	</div>
	<!-- End Mobile Menu -->
</header>

<!-- End Main Header -->