<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SIGNUP</title>
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
      font-family: Montserrat, sans-serif;
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
  <script language="javascript">
		function validate()
		{
			var x=document.WatumullForm.firstname.value;
			var x0=document.WatumullForm.username.value;
			var x1=document.WatumullForm.middlename.value;
			var x2=document.WatumullForm.lastname.value;
			var x3=document.WatumullForm.email.value;
			var x31=document.WatumullForm.mobile.value;
			var x4=document.WatumullForm.password.value;
			var x5=document.WatumullForm.cpassword.value;
			var x6=document.WatumullForm.Address.value;
			var x7=document.WatumullForm.Gender.value;
			var x81=document.WatumullForm.day.value;
			var x82=document.WatumullForm.month.value;
			var x83=document.WatumullForm.year.value;
			var x9=document.WatumullForm.hb;		
			var MobVal = /^[789]\d{9}$/;
			var EmailVal=/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
			var PassVal = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,20}$/;
			var DayVal=/^[0-3]\d$/;
			var DayVal1=/^\d[0-8]$/;
			var DayVal2=/^[0-2]\d$/;
			var DayVal3=/^\d{2,3}$/;
			var YearVal=2018-x83;
		if(x==""||x0==""||x1==""||x2==""||x3==""||x31==""||x4==""||x5==""||x6==""||x7==""||x81==""||x81==""||x83==""||x9==""){
			if(x=="")
			{
				alert("Please enter your First Name");	
			}
			if(x0=="")
			{
				alert("Please enter Username");	
			}

			if(x1=="")
			{
				alert("Please enter your Middle Name");
			}

			if(x2=="")
			{
				alert("Please enter your Last Name");
			}

			if(x31=="" || !MobVal.test(x31))
			{
				alert("Please enter valid Mobile number	");
			}
			if(x3=="" || !EmailVal.test(x3))
			{
				alert("Please enter correct Email");
			}
			if(x4=="")
			{
				alert("Please enter your Password");
			}
			else if(!PassVal.test(x4))
			{
				alert("Enter a password between 6 to 20 characters which contain at least one numeric digit, one uppercase and one lowercase letter");
			}

			if(x5!=x4 || x5=="")
			{
				alert("Please Re-enter the correct password");
			}
			if(x6=="")
			{
				alert("Please enter your Address");
			}
			if(x7=="")
			{
				alert("Please select your gender");
			}

			if(!(YearVal>=18))
			{
				alert("You are not applicable to fill this form");
			}
			else
			{
				if(x81=="" || x82=="" || x83=="")
				{
					alert("Please select valid Date of Birth");
				}
				else
				{
					if(!(x83%4 && x83%100) || !x83%400)
					{
						if(x82==2)
						{
							  if(!DayVal2.test(x81))  
							  {
								alert("Please Enter valid day for valid month");                             
							  }
						}
						if(x82==4 || x82==6 || x82==9 || x82==11)
						{
							if(!DayVal3.test(x81)) 
							{
								alert("Please Enter valid day for valid month");    
							}
						}
						
					}
					else
					{
						if(x82==2)
						{
						     if(!DayVal1.test(x81) || !DayVal2.test(x81))  
							 {
								alert("Please Enter valid day for valid month");                             
							 }
						}

						if(x82==4 || x82==6 || x82==9 || x82==11)
						{
							if(DayVal3.test(x81) && x81 > 30) 
							{
								alert("Please Enter valid day for valid month");    
							}
						}   
					}					
				}
			}
				
			if(!(x9[0].checked || x9[1].checked || x9[2].checked || x9[3].checked || x9[4].checked))
			{
				alert("Please atleast enter one hobby");
			}
		}
		else{
				return true;
		}
			return false;
		}
	</script>
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
</head>
</head>
<body>
<br>
<br>
<h1>SIGN-UP</h1>
<hr>
<form name="WatumullForm" action="Controller" method="post" onsubmit="return validate()">
<input type="hidden" name="page" value="signup_form">
<table>
<tr><td>FIRST NAME      :</td><td><input type="text" name="firstname" value="${firstname}"></td></tr>
<tr><td>MIDDLE NAME     :</td><td><input type="text" name="middlename" value="${middlename}"></td></tr>
<tr><td>LAST NAME       :</td><td><input type="text" name="lastname" value="${lastname}"></td></tr>
<tr><td>MOBILE NO.      :</td><td><input type="text" name="mobile" value="${mobile}"></td></tr>
<tr><td>EMAIL ID        :</td><td><input type="text" name="email" value="${email}"></td></tr>
<tr><td>USERNAME        :</td><td><input type="text" name="username" value="${username}"></td></tr>
<tr><td>PASSWORD        :</td><td><input type="password" name="password" value="${password}"></td></tr>
<tr><td>CONFIRM PASSWORD:</td><td><input type="password" name="cpassword" value="${cpassword}"></td></tr>
<tr><td>ADDRESS</td><td><textarea name="Address" rows="4" cols="40"></textarea></td></tr>
	
			<tr><td>GENDER</td>
				<td>
					<input type="radio" name="Gender" value="MALE" />MALE
					<input type="radio" name="Gender" value="FEMALE" />FEMALE
				</td>
			</tr>
		 
	
			<tr>
				<td>DATE OF BIRTH</td>
				<td>
					<select name="day" value="">				
						<option value="">DAY</option>
						<option>01</option>
						<option>02</option>
						<option>03</option>
						<option>04</option>
						<option>05</option>
						<option>06</option>
						<option>07</option>
						<option>08</option>
						<option>09</option>
						<option>10</option>
						<option>11</option>
						<option>12</option>
						<option>13</option>
						<option>14</option>
						<option>15</option>
						<option>16</option>
						<option>17</option>
						<option>18</option>
						<option>19</option>
						<option>20</option>
						<option>21</option>
						<option>22</option>
						<option>23</option>
						<option>24</option>
						<option>25</option>
						<option>26</option>
						<option>27</option>
						<option>28</option>
						<option>29</option>
						<option>30</option>
						<option>31</option>
					</select>
					<select name="month" value="">
					
						<option value="">MONTH</option>
						<option>1</option>
						<option>2</option>
						<option>3</option>
						<option>4</option>
						<option>5</option>
						<option>6</option>
						<option>7</option>
						<option>8</option>
						<option>9</option>
						<option>10</option>
						<option>11</option>
						<option>12</option>			

					</select>
					<select name="year" value="">

						<option value="">YEAR</option>
						<option>1984</option>
						<option>1985</option>
						<option>1986</option>
						<option>1987</option>
						<option>1988</option>
						<option>1989</option>
						<option>1990</option>
						<option>1991</option>
						<option>1992</option>
						<option>1993</option>	
						<option>1994</option>
						<option>1995</option>
						<option>1996</option>
						<option>1997</option>
						<option>1998</option>
						<option>1999</option>
						<option>2000</option>
						<option>2001</option>
				

					</select>
				</td>
			</tr>
	
			<tr>
				<td>HOBBIES</td>
				<td>
					<input name="hb" type="checkbox" value="FOOTBALL"/>FOOTBALL
					<input name="hb" type="checkbox" value="GAMING"/>GAMING
					<input name="hb" type="checkbox" value="CRICKET"/>CRICKET<br>
					<input name="hb" type="checkbox" value="PROGRAMMING"/>PROGRAMMING
					<input name="hb" type="checkbox" value="TRAVELLING"/>TRAVELLING
				</td>
			</tr>
</table>
<br><br>
<input type="submit" value="SIGNUP"><br><br>
</form>
</body>
</html>