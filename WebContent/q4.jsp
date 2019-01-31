<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<div style="font-weight : bold" id="quiz-time-left"></div>
<head>
<meta charset="ISO-8859-1">
<title>QUESTION 1</title>
<!-- Theme Made By www.w3schools.com - No Copyright -->
  <title>Career Guidance</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  body {
      font: 400 15px/1.8 Lato, sans-serif;
      color: #777;
  }
      h3, h4 {
      margin: 10px 0 30px 0;
      letter-spacing: 10px;
      font-size: 20px;
      color: #111;
  }
  .container {
      padding: 80px 120px;
  }

  .carousel-inner img {
      /*webkit-filter: grayscale(90%);
      filter: grayscale(90%);--> /* make all photos black and white */
      width: 100%; /* Set width to 100% */
      margin: auto;
  }
  .carousel-caption h3 {
      color: #fff !important;
  }
  @media (max-width: 600px) {
    .carousel-caption {
      display: none; /* Hide the carousel text when the screen is less than 600 pixels wide */
    }
  }
  .bg-1 {
      background: #2d2d30;
      color: #bdbdbd;
  }
  .bg-1 h3 {color: #fff;}
  .bg-1 p {font-style: italic;}
  .list-group-item:first-child {
      border-top-right-radius: 0;
      border-top-left-radius: 0;
  }
  .list-group-item:last-child {
      border-bottom-right-radius: 0;
      border-bottom-left-radius: 0;
  }
  .btn {
      padding: 10px 20px;
      background-color: #333;
      color: #f1f1f1;
      border-radius: 0;
      transition: .2s;
  }
  .btn:hover, .btn:focus {
      border: 1px solid #333;
      background-color: #fff;
      color: #000;
  }
  .modal-header, h4, .close {
      background-color: #333;
      color: #fff !important;
      text-align: center;
      font-size: 30px;
  }
  .modal-header, .modal-body {
      padding: 40px 50px;
  }
  .nav-tabs li a {
      color: #777;
  }
  .navbar {
      font-family: sans-serif;
      margin-bottom: 0;
      background-color: #2d2d30;
      border: 0;
      font-size: 11px !important;
      letter-spacing: 4px;
      opacity: 0.9;
  }
  .navbar li a, .navbar .navbar-brand {
      color: #d5d5d5 !important;
  }
  .navbar-nav li a:hover {
      color: #fff !important;
  }
  .navbar-nav li.active a {
      color: #fff !important;
      background-color: #29292c !important;
  }
  .navbar-default .navbar-toggle {
      border-color: transparent;
  }
  .open .dropdown-toggle {
      color: #fff;
      background-color: #555 !important;
  }
  .dropdown-menu li a {
      color: #000 !important;
  }
  .dropdown-menu li a:hover {
      background-color: red !important;
  }
  footer {
      background-color: #2d2d30;
      color: #f5f5f5;
      padding: 32px;
  }
  footer a {
      color: #f5f5f5;
  }
  footer a:hover {
      color: #777;
      text-decoration: none;
  }
  .form-control {
      border-radius: 0;
  }
  textarea {
      resize: none;
  }
  </style>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">

<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#myPage">3PINS CAREER GUIDANCE</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="<%=request.getContextPath() %>/Controller?page=index">HOME</a></li>
        <li><a href="<%=request.getContextPath() %>/Controller?page=course">COURSES</a></li>
        <li><a href="<%=request.getContextPath() %>/Controller?page=tests">TEST</a></li>
        <li><a href="<%=request.getContextPath() %>/Controller?page=login">LOGIN</a></li>
        <li><a href="<%=request.getContextPath() %>/Controller?page=contact">CONTACT</a></li>
         <li><a href="<%=request.getContextPath() %>/Controller?page=about">ABOUT</a></li>
          <li><a href="<%=request.getContextPath() %>/Controller?page=logout">LOGOUT</a></li>
      </ul>
    </div>
  </div>
</nav>
<script type="text/javascript">
var total_seconds=60*0.5;
var c_minutes= parseInt(total_seconds/60);
var c_seconds= parseInt(total_seconds%60);
function CheckTime(){
	document.getElementById("quiz-time-left").innerHTML='<br><br>Time Left: '+c_minutes+ 'minutes'+c_seconds+'seconds';
	
	if(total_seconds<=0){
		document.getElementById("quiz-time-left").innerHTML = '<br><br><a href="<%=request.getContextPath() %>/Controller?page=submit">CLICK HERE NOW</a>'
	}
	else{
		total_seconds=total_seconds-1;
		c_minutes = parseInt(total_seconds/60);
		c_seconds = parseInt(total_seconds%60);
		setTimeout("CheckTime()",1000);
	}
}
setTimeout("CheckTime()",1000);
</script>

</head>
<body>
<h1>QUESTION 4</h1>
<hr>
<br>
<form action="Controller" method="post">
<input type="hidden" name="page" value="q5">
There are two examinations rooms A and B. If 10 students are sent from A to B, then the number of students in each room is the same.<br>
If 20 candidates are sent from B to A, then the number of students in A is double the number of students in B. The number of students in room A is:<br><br>
<input type="radio" name="A" value="1">20<br>
<input type="radio" name="B" value="1">80<br>
<input type="radio" name="C" value="1">100<br>
<input type="radio" name="D" value="1">200<br>
<hr>
<input type="submit" value="NEXT">
</form>
<br>
<a href="<%=request.getContextPath() %>/Controller?page=q3"><button>BACK</button></a><br><br>
</body>
</html>