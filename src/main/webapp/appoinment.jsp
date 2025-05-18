<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="description" content="Orbitor,business,company,agency,modern,bootstrap4,tech,software">
  <meta name="author" content="themefisher.com">

  <title>Health Sync</title>

  <!-- Favicon -->
  <link rel="shortcut icon" type="image/x-icon" href="/images/favicon.ico" />

  <!-- bootstrap.min css -->
  <link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css">
  <!-- Icon Font Css -->
  <link rel="stylesheet" href="plugins/icofont/icofont.min.css">
  <!-- Slick Slider  CSS -->
  <link rel="stylesheet" href="plugins/slick-carousel/slick/slick.css">
  <link rel="stylesheet" href="plugins/slick-carousel/slick/slick-theme.css">

  <!-- Main Stylesheet -->
  <link rel="stylesheet" href="css/style.css">
  
  <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            padding: 20px;
        }
        h1, h2 {
            text-align: center;
            color: #444;
        }
        form {
            width: 800px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
        }
        label {
            display: block;
            margin-top: 15px;
            font-weight: bold;
            color: #555;
        }
        input[type="text"],
        input[type="date"],
        input[type="time"],
        input[type="tel"],
        input[type="email"],
        select,
        textarea {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }
        textarea {
            height: 80px;
        }
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #28a745;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 20px;
        }
        input[type="submit"]:hover {
            background-color: #4CAF50;
        }
    </style>

</head>
<body id="top">

<header>
	<div class="header-top-bar">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-6">
					<ul class="top-bar-info list-inline-item pl-0 mb-0">
						<li class="list-inline-item"><a href="mailto:support@gmail.com"><i class="icofont-support-faq mr-2"></i>support@HealthSync.com</a></li>
						<li class="list-inline-item"><i class="icofont-location-pin mr-2"></i>Address No,134/A, Colombo , Sri Lanka </li>
					</ul>
				</div>
				<div class="col-lg-6">
					<div class="text-lg-right top-right-bar mt-2 mt-lg-0">
						<a href="tel:+23-345-67890" >
							<span>Call Now : </span>
							<span class="h4">+94-11-222-34-567</span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<nav class="navbar navbar-expand-lg navigation" id="navbar">
		<div class="container">
		 	 <a class="navbar-brand" href="index.jsp">
			  		<img src="images/logo.png" alt="" class="img-fluid" style="width:50% ;,height:auto;">
			  </a>

		  	<button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#navbarmain" aria-controls="navbarmain" aria-expanded="false" aria-label="Toggle navigation">
			<span class="icofont-navigation-menu"></span>
		  </button>
	  
		  <div class="collapse navbar-collapse" id="navbarmain">
			<ul class="navbar-nav ml-auto">
			  <li class="nav-item active">
				<a class="nav-link" href="index.jsp">Home</a>
			  </li>
			   <li class="nav-item"><a class="nav-link" href="about.jsp">About</a></li>
			    <li class="nav-item"><a class="nav-link" href="service.jsp">Services</a></li>

			    <li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="department.jsp" id="dropdown02" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Department <i class="icofont-thin-down"></i></a>
					<ul class="dropdown-menu" aria-labelledby="dropdown02">
						<li><a class="dropdown-item" href="department.jsp">Departments</a></li>
						<li><a class="dropdown-item" href="department-single.jsp">Department Single</a></li>
					</ul>
			  	</li>

			  	<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="doctor.jsp" id="dropdown03" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Doctors <i class="icofont-thin-down"></i></a>
					<ul class="dropdown-menu" aria-labelledby="dropdown03">
						<li><a class="dropdown-item" href="doctor.jsp">Doctors</a></li>
						<li><a class="dropdown-item" href="appoinment.jsp">Appointment</a></li>
					</ul>
			  	</li>

			   <li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="blog-sidebar.jsp" id="dropdown05" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Blog <i class="icofont-thin-down"></i></a>
					<ul class="dropdown-menu" aria-labelledby="dropdown05">
						<li><a class="dropdown-item" href="blog-sidebar.jsp"> Blog with SideB ar</a></li>

						<li><a class="dropdown-item" href="blog-single.jsp">Blog Single</a></li>
					</ul>
			  	</li>
			   <li class="nav-item"><a class="nav-link" href="contact.jsp">Contact</a></li>
			  <li class="nav-item dropdown">
    <a class="nav-link dropdown-toggle" href="doctor.jsp" id="dropdown03" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        <img src="images/user.png" alt="User" style="width: 20px; height: 20px; margin-right: 5px;"> Sign In  <i class="icofont-thin-down"></i>
    </a>
    <ul class="dropdown-menu" aria-labelledby="dropdown03">
        <li><a class="dropdown-item" href="singup.jsp">User</a></li>
        <li><a class="dropdown-item" href="Register_doc.jsp">Doctors</a></li>
        <li><a class="dropdown-item" href="appoinment.jsp">Nurse</a></li>
    </ul>
</li>

			</ul>
		  </div>
		</div>
	</nav>
</header>
	
	


<section class="page-title bg-1">
  <div class="overlay"></div>
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="block text-center">
          <span class="text-white">Book your Seat</span>
          <h1 class="text-capitalize mb-5 text-lg">Appoinment</h1>

          <!-- <ul class="list-inline breadcumb-nav">
            <li class="list-inline-item"><a href="index.jsp" class="text-white">Home</a></li>
            <li class="list-inline-item"><span class="text-white">/</span></li>
            <li class="list-inline-item"><a href="#" class="text-white-50">Book your Seat</a></li>
          </ul> -->
        </div>
      </div>
    </div>
  </div>
</section>

<section class="appoinment section">
  <div class="container">
    <div class="row">
      <div class="col-lg-4">
          <div class="mt-3">
            <div class="feature-icon mb-3">
              <i class="icofont-support text-lg"></i>
            </div>
             <span class="h3">Call for an Emergency Service!</span>
              <h2 class="text-color mt-3">+94-11-222-34-567</h2>
          </div>
      </div>

      <div class="col-lg-8">
           <div class="appoinment-wrap mt-5 mt-lg-0 pl-lg-5">
            <h2 class="mb-2 title-color">Book an appointment</h2>
            <p class="mb-4">"Ready to take the next step in your health journey? Book your appointment today and experience personalized care tailored just for you!".</p>
                 <form action="${pageContext.request.contextPath}/submitAppointmentForm" method="post" class="appointment-form" autocomplete="off">
        <label for="full_name">Full Name:</label>
        <input type="text" id="full_name" name="full_name" placeholder="Enter your full name" required>

        <label for="dob">Date of Birth:</label>
        <input type="date" id="dob" name="dob" required>

        <label for="gender">Gender:</label>
        <select id="gender" name="gender" required>
            <option value="" disabled selected>Select Gender</option>
            <option value="male">Male</option>
            <option value="female">Female</option>
            <option value="other">Other</option>
        </select>

        <label for="email">E-mail:</label>
        <input type="email" id="email" name="email" placeholder="@gmail.com" required>

        <label for="phone">Phone Number:</label>
        <input type="tel" id="phone" name="phone" placeholder="+94 123345678" required>

        <label for="address">Address:</label>
        <textarea id="address" name="address" placeholder="Enter your address" required></textarea>

        <label for="date">Appointment Date:</label>
        <input type="date" id="date" name="date" required>

        <label for="time">Preferred Time:</label>
        <input type="time" id="time" name="time" required>

        <label for="doctor">Doctor:</label>
        <input type="text" id="doctor" name="doctor" placeholder="Enter doctor's name" required>

        <label for="reason">Reason for Appointment:</label>
        <textarea id="reason" name="reason" placeholder="Describe your symptoms or reason for visit" required></textarea>

        <!-- Submission -->
        <input type="submit" value="Submit Appointment">
    </form>
            </div>
        </div>
      </div>
    </div>
  </div>
</section>


<!-- footer Start -->
<footer class="footer section gray-bg">
	<div class="container">
		<div class="row">
			<div class="col-lg-4 mr-auto col-sm-6">
				<div class="widget mb-5 mb-lg-0">
					<div class="logo mb-4">
						<img src="images/logo.png" alt="" class="img-fluid">
					</div>
					<p>"Our innovative healthcare system integrates cutting-edge technology and expert medical professionals to provide seamless, personalized care for every patient.".</p>

					<ul class="list-inline footer-socials mt-4">
						<li class="list-inline-item"><a href="https://www.facebook.com/themefisher"><i class="icofont-facebook"></i></a></li>
						<li class="list-inline-item"><a href="https://twitter.com/themefisher"><i class="icofont-twitter"></i></a></li>
						<li class="list-inline-item"><a href="https://www.pinterest.com/themefisher/"><i class="icofont-linkedin"></i></a></li>
					</ul>
				</div>
			</div>

			<div class="col-lg-2 col-md-6 col-sm-6">
				<div class="widget mb-5 mb-lg-0">
					<h4 class="text-capitalize mb-3">Department</h4>
					<div class="divider mb-4"></div>

					<ul class="list-unstyled footer-menu lh-35">
						<li><a href="#">Surgery </a></li>
						<li><a href="#">Wome's Health</a></li>
						<li><a href="#">Radiology</a></li>
						<li><a href="#">Cardioc</a></li>
						<li><a href="#">Medicine</a></li>
					</ul>
				</div>
			</div>

			<div class="col-lg-2 col-md-6 col-sm-6">
				<div class="widget mb-5 mb-lg-0">
					<h4 class="text-capitalize mb-3">Support</h4>
					<div class="divider mb-4"></div>

					<ul class="list-unstyled footer-menu lh-35">
						<li><a href="#">Terms & Conditions</a></li>
						<li><a href="#">Privacy Policy</a></li>
						<li><a href="#">Company Support </a></li>
						<li><a href="#">FAQuestions</a></li>
						<li><a href="#">Company Licence</a></li>
					</ul>
				</div>
			</div>

			<div class="col-lg-3 col-md-6 col-sm-6">
				<div class="widget widget-contact mb-5 mb-lg-0">
					<h4 class="text-capitalize mb-3">Get in Touch</h4>
					<div class="divider mb-4"></div>

					<div class="footer-contact-block mb-4">
						<div class="icon d-flex align-items-center">
							<i class="icofont-email mr-3"></i>
							<span class="h6 mb-0">Support Available for 24/7</span>
						</div>
						<h4 class="mt-2"><a href="tel:+23-345-67890">Support@email.com</a></h4>
					</div>

					<div class="footer-contact-block">
						<div class="icon d-flex align-items-center">
							<i class="icofont-support mr-3"></i>
							<span class="h6 mb-0">Mon to Fri : 08:30 - 18:00</span>
						</div>
						<h4 class="mt-2"><a href="tel:+23-345-67890">+94-11-222-34-567</a></h4>
					</div>
				</div>
			</div>
		</div>
		

</footer>

    <!-- 
    Essential Scripts
    =====================================-->

    
    <!-- Main jQuery -->
    <script src="plugins/jquery/jquery.js"></script>
    <!-- Bootstrap 4.3.2 -->
    <script src="plugins/bootstrap/js/popper.js"></script>
    <script src="plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="plugins/counterup/jquery.easing.js"></script>
    <!-- Slick Slider -->
    <script src="plugins/slick-carousel/slick/slick.min.js"></script>
    <!-- Counterup -->
    <script src="plugins/counterup/jquery.waypoints.min.js"></script>
    
    <script src="plugins/shuffle/shuffle.min.js"></script>
    <script src="plugins/counterup/jquery.counterup.min.js"></script>
    <!-- Google Map -->
    <script src="plugins/google-map/map.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAkeLMlsiwzp6b3Gnaxd86lvakimwGA6UA&callback=initMap"></script>    
    
    <script src="js/script.js"></script>
    <script src="js/contact.js"></script>

  </body>
  </html>