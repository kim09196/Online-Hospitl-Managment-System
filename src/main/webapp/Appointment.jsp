<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Patient Information Form</title>
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
    background-color: #f4f7f8;
    margin: 0;
    padding: 20px;
}

h1 {
    text-align: center;
    color: #333;
}

.form-signin {
    max-width: 400px;
    margin: auto;
    background: white;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
}

label {
    display: block;
    margin-bottom: 5px;
    color: #555;
}

input[type="text"],
input[type="date"],
select,
textarea {
    width: 50%;
    padding: 10px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 4px;
    font-size: 14px;
    box-sizing: border-box; /* Ensure padding is included in width */
}

textarea {
    height: 100px; /* Set a fixed height for textareas */
    resize: vertical; /* Allow vertical resizing only */
}

input[type="submit"] {
    background-color: #4CAF50;
    color: white;
    border: none;
    border-radius: 4px;
    padding: 10px;
    cursor: pointer;
    font-size: 16px;
}

input[type="submit"]:hover {
    background-color: #45a049;
}
  </style>
</head>
<body>
	<div class="header-top-bar">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-6">
					<ul class="top-bar-info list-inline-item pl-0 mb-0">
						<li class="list-inline-item"><a href="mailto:support@gmail.com"><i class="icofont-support-faq mr-2"></i>support@HelthSync.com</a></li>
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
    <form action="submitAppointment" method="POST">
        <label for="fullname">Full Name:</label>
        <input type="text" id="fullname" name="fullname" required><br>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required><br>

        <label for="contact">Contact:</label>
        <input type="text" id="contact" name="contact" required><br>

        <label for="dob">Date of Birth:</label>
        <input type="date" id="dob" name="dob" required><br>

        <label for="department">Department:</label>
        <input type="text" id="department" name="department" required><br>
        
         <label for="doctor">Doctor:</label>
        <input type="text" id="doctor" name="doctor" required><br>

        <label for="reason">Reason:</label>
        <textarea id="reason" name="reason" required></textarea><br>

        <input type="submit" value="Submit">
    </form>
</body>
</html>
