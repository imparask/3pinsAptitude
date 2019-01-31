<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SCIENCE</title>
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
<body>
<br>
<h2>YOU CHOOSE SCIENCE</h2>
<br>
<h4>SCIENCE STREAM SUBJECTS</h4>

<ul>
	<li>Biology Group (Physics, Chemistry and Biology as main subjects)</li>
	<li>Mathematics Group (Physics, Chemistry and Mathematics subjects)></li>
	<li>IMPORTANT SUBJECTS</li>
	<li>Physics</li>
	<li>Chemistry</li>
	<li>Mathematics</li>
	<li>Biology</li>
	<li>English</li>
	<li>Computer Science</li>
</ul>
<br>
<hr>
<h3>HERE ARE YOUR OPTIONS : </h3><br>
    MBBS.<br>
    Medical colleges in India, accredited by the Medical Council of India, all title the degrees as MBBS. A medical college offers graduate degree “Bachelor of Medicine and Bachelor of Surgery” (MBBS). Only institutions offering MBBS course in its curriculum are referred to as a Medical Colleges. The college may teach Post Graduate as well as Paramedical courses. The admission to government MBBS programs is highly competitive because of high subsidy and extensive hands-on experience.

The MBBS course starts with the basic pre and para-clinical subjects such as biochemistry, physiology, anatomy, microbiology, pathology and pharmacology. The students simultaneously obtain hands-on training in the wards and out-patient departments, where they interact with real patients for five years. The curriculum aims to inculcate standard protocols of history taking, examination, differential diagnosis and complete patient Management. The student is taught to determine what investigations will be useful for a patient and what are the best treatment options. The curriculum also contains a thorough practical knowledge and practice of performing standard clinical procedures. The course also contains a 12-month-long internship, in which an intern is rotated across various specialties. Besides standard clinical care, one also gets a thorough experience of ward management, staff management, and thorough counselling skills.

The degree awarded is "Bachelor of Medicine and Bachelor of Surgery". The minimum requirements for the MBBS course are 50% marks in physics, chemistry, biology and English in the '10+2' examinations. For reserved category students, the requirement is 40%. MBBS admissions are not centralised. The admission requirements differ across universities. Generally, students who attain higher marks in the qualifying examinations and in the Medical Entrance examinations conducted by various agencies are accepted onto the MBBS course.The government is planning to come up with new medical colleges in 58 districts of India. The new colleges will add 5,800 more MBBS seats in the country.
    <br>
    BAMS (Ayurvedic)<br>
    Bachelor of Ayurvedic Medicine and Surgery(BAMS) is an integrated Indian Degree in the medical field. This degree programme is conferred to those students who studied the modern medicines and traditional Ayurveda.
Ayurveda is one of the ancient medical systems of the world. It traces its roots to the Vedic period. It is not only providing the cure but also prevent the recurrence of diseases. According to the Ayurvedic, there are only three kinds of dysfunctions or disorders in human body Kapha, Pitta and Vata.
These dysfunctions are commonly called as the Dosha in Ayurvedic terminology. Kapha meant Phlegm (water and earth), Pitta meant Bile (fire & water) and Vata meant Wind (air and space). Ayurvedic says that a person got ill when he gets out of the harmony of said three doshas.
The Ayurvedic system of medical care is based on the concept where the natural healing capacity of the body is being enhanced by the Ayurvedic therapy. The Ayurvedic treatment includes the reducing symptoms, eliminating impurities, reducing worry, increasing resistance of disease and increasing harmony of patient’s life.
The Ayurvedic system is a trustful medical system in order to the cure, prevent and rejuvenate. Yes, it takes more time to make the patient fit as before, but once the patient has been treated through this medical system, he will find him better than before he was.
Bachelor of Ayurvedic Medicine & Surgery (BAMS) is a graduate degree course in Ayurvedic system. This degree is awarded after the completion of 5 years and 6 month degree programme containing the 4 and 1/2 year academic session and one year internship programme with live practical.
The UG degree course is separated in three sections of 1.5 years each. These sections called as the three professional courses. In first professional course the students are taught about the anatomy, physiology and history of Ayurvedic system. In second course they are taught about the toxicology and pharmacology and the final course contains the surgery, ENT, skin, obstetrics and gynaecology.
    <br>
    BHMS (Homoeopathy)<br>
    BHMS (Bachelor of Homeopathic Medicine and Surgery) is an undergraduate degree programme in medical field. This degree covers the medical knowledge of the homeopathic system. After completing this degree you are eligible to become a doctor in the homeopathic medical field. The degree holder is eligible to have the prefix as a doctor, the abbreviation is Dr.
Homeopathy is the system of alternative medicines. The patients are taken care by enhancing the natural healing power of the human body. The concept of homeopathy is that the body rejuvenates itself because of its self-healing power. We just need to help it by enhancing the natural healing power.
“Homeopathy is the holistic medical system which is involved in the treatment of patients with the high dilutions of the homeopathic medicines mainly in liquid and tablet form, which enhance the body’s natural healing system”.
    <br>
    BUMS (Unani)<br>
    Unani System of Medicine & Surgery is one of the oldest medication systems in the world. Unani System originated in Greece and from there the system of medication was adopted by Middle-East and South-Asian countries.
B.U.M.S is a five-year undergraduate degree program that deals with the medical knowledge and applications of the Unani system and surgery. Unani system of medicine is different from the regular medications (allopathy). In this, the healing process is done through the natural processes/ natural power of the body. As per Unani System, the body has the power to heal itself. All that the human needs to do is identify the healing power within themselves and enhance it. It is known for treating various deadly diseases and disorders in a natural way as every man in the modern age is inflicted with the stress and anxieties which is a root cause of various diseases.
The system of medicine has been in practice since 6,000 years and is mainly based on the four components that are: earth, fire, water, and air. It is known for the treatment of weight loss, kidney stone, diabetes, psoriasis, arthritis and others
    <br>
    BDS.<br>
    BDS is one of the most popular and designated degree of dentists (doctors). The BDS (Bachelor of Dental Surgery) is the only educational and professional programme of dental surgery in India. It is equivalent to the MBBS and owes the “Dr” domain. In the medical educational field, it is the second choice of the students after the MBBS course.
In this course, the students are taught about the denture, dental problems and surgery. It is also a good job oriented degree programmes and various opportunities  are available in the hospital, pharmaceutical and medical device manufacturing industries.
The BDS degree is awarded on the successful completion of the four-year academic education and the one year mandatory internship programme in dentistry education leading to the Bachelor of Dental Surgery degree programme. After completing your BDS, you are qualified to practice as a dentist.
    <br>
    Bachelor of Physiotherapy.<br>
    Bachelor of Physiotherapy is a 4-year undergraduate course, including compulsory 6 months of clinical internship, and involving the science of physical movement aimed at preventing disease and disability.
To be eligible to apply for the course, aspiring candidates need to have attained the 10+2 qualification from a recognized educational Board. The course is offered in the country at an average annual course fee ranging between INR 1 and 5 Lacs, varying across institutes.
Successful graduates of the course are lucratively employed in areas such as hospitals, health institutes, fitness centers, private clinics, etc., with an average annual initial salary ranging between INR 2 and 8 Lacs, depending upon the candidate’s expertise in the field and relevant skillset.
    <br>
    Engineering<br>
    Engineering is a science involving designing, building and usage of machines, engines and structures. Pursuing an engineering degree is a popular career option in India. With the economy opening up over the last two decades, the steady growth of industries in the last few years, as well as the addition of streams within engineering, students may have a variety of career choices.

Engineering education
In order to secure admission to an engineering college, it is mandatory for you to have passed the 10+2 with subjects like physics, chemistry and mathematics. According to the new format introduced by the government, you must undertake the Joint Entrance Exam (JEE Main) exams in order to secure admission to an undergraduate course in the Indian Institutes of Technology (IITs), National Institutes of Technology (NITs) and other centrally funded institutions. The entrance exam was formerly called the All India Engineering Entrance Exam (AIEEE) and was used for admissions to NITs and other centrally funded institutions. IITs conducted the IIT-JEE. If you clear the JEE Main, you must then appear for the JEE (Advanced) exam, which can give you the chance to get admission into select colleges in the country.
 
Here are some of the notable B.E. or B.Tech. programs –
	<ul>
	<li>Mechanical Engineering</li>
	<li>Civil Engineering</li>
	<li>Chemical Engineering</li>
	<li>Electrical Engineering</li>
	<li>Electronics Engineering</li>
	<li>EC Engineering</li>
	<li>IT Engineering</li>
	<li>Production Engineering</li>
	<li>Aeronautical Engineering</li>
	<li>Textile Engineering</li>
	<li>Environmental Engineering</li>
	<li>Naval Architecture</li>
	<li>Mining Engineering</li>
	<li>Petroleum Engineering</li>
	<li>IC Engineering</li>
	<li>Food Processing and Technology</li>
	<li>Power Engineering</li>
	</ul>
</body>
</html>