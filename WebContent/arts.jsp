<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ARTS</title>
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
<h2>YOU CHOOSE ARTS</h2>
<br>
<h4>ARTS STREAM SUBJECTS</h4>
<ul>
	<li>English</li>
	<li>History</li>
	<li>Geography</li>
	<li>Political Science</li>
	<li>Economics</li>
	<li>Other literature subjects- Hindi, regional languages etc</li>
	<li>Psychology</li>
	<li>Music</li>
	<li>Home Science</li>
	<li>Physical Education</li>
	<li>Public Administration</li>
	<li>Mathematics</li>
	<li>Computer Science</li>
	<li>Fine Arts</li>
	<li>Sociology</li>
</ul>
<br>
<hr>
<h3>HERE ARE YOUR OPTIONS : </h3><br>
    B.A...<br>
    Bachelor of Arts (BA) is a 3-year undergraduate degree offered in India, the minimum eligibility for admission to which is passing in Intermediate or 10+2 level from a recognized board or university. The course is generally offered in Liberal Arts Humanities. 
The admission process for Bachelor of Arts (BA), ideally, starts after the results of 10+2 examinations are declared. After the results are declared, universities offering BA course invite application from eligible candidates. Soon after the application process, universities release cut off lists of selected candidates for admission. Certain universities, like Banaras Hindu University (BHU), also conduct entrance test for admission to Bachelor of Arts Course.
Bachelor of Arts (BA) course requires a student to learn minimum 5 different subjects and select a combination of subjects suitable to their needs and interests. With options ranging from Psychology to French, a student can easily model his/her Bachelor of Arts course as per their future aspirations. Apart from two distinct languages, students opting for a Bachelor of Arts degree learn basics of Anthropology, History, Literature, Psychology, Political Science, Philosophy etc. These subjects combined together give students a clear understanding of how civilizations work and help in developing sought-after skills like critical thinking, communication and problem-solving. 
The undergraduate degree is offered at a range of public and private colleges in India where some colleges also offer the option of selecting a subject to major in. The average fee charged for Bachelor of Arts in India varies from INR 10,000 to 25,000. Some of the public sector areas where a BA degree holder can work are Banks, Indian Administrative Services, Secretariat, Indian Postal Department, Indian Railways, Army and Navy and others such. The average annual salary offered to such professionals ranges between INR 1.5 lacs to 2.5 lacs.  
    <br>
    B.F.A....<br>
    Bachelor of Fine Arts (BFA)is the standard under-graduate degree for students seeking a professional education in the visual or performing arts.
It is an interactive course having duration of 3 to 4 years. This course is also known as BVA Bachelor of Visual Arts.Students who have completed their 10+2 can pursue Bachelor of Fine Arts.
The course can be pursued either for full-time graduate course or part-time graduate course .i.e. through correspondence or distance learning.
The average tuition fee for this course varies from 2 Lakh INR to 6 Lakh INR or as according to the fee structure of different universities.
After completing Bachelor of Fine Arts a person can get jobs in advertising companies, art studios, boutiques, educational institutes etc.
Fine Arts includes Visual Arts and Performance Arts. Visual Arts and Performance Arts have always been an important part of cultures and traditions all over the world. From cave paintings to exquisite paintings of M.F. Hussain, all such art forms fall under the arena of Fine Arts.
In recent years, public’s knowledge as well as interest towards Fine Arts has increased, thus adding in to the curiosity towards this course. In this course students learn to create and appreciate visual works of art. This course leans towards creativity and aesthetic aspect of arts.
Candidates who have a natural interest for Visual Arts or possess natural skills as sketching, drawing and visualization are perfectly suited to pursue this course. This course is perfect for those who really enjoy creating and imagining and are interested in pursuing a career in visual and/or performance arts.
Bachelor of Fine Arts course is of 3 to 4 yearsdepending upon the specialization selected by the student. Some universities follow semester system in which there are two semesters in each year. For the correspondence or distance mode education, the minimum duration can be 3 years to 5 years or as according to the university.
    <br>
    Journalism and Mass Communication...<br>
    B.A. Journalism & Mass Communication is a 3-year undergraduate course divided into 6 semesters. The minimum eligibility for the course is a 10+2 or equivalent qualification in any stream, from a recognized educational Board, with a minimum aggregate score of 50%.
The average tuition fee charged for the course in India ranges between INR 2,000 to 5 lacs for a span of 3 years.
B.A. Journalism & Mass Communication course has been designed to offer enrolled students Basic journalistic skills in various mass media, to expose students to recent developments in media issues and media research. B.A. Journalism & Mass Communication course also provides professional familiarity with the various technologies involved in mass media like computer applications, respective software and hardware applied in print, radio, television, internet and such forms of media.
Admission to B.A. Journalism & Mass Communication course is based on the candidate’s performance in a relevant entrance exam or merit obtained in the last qualifying exam.
Such graduates are hired in capacities such as Feature Writer, Columnist, Fashion Photographer, News Analyst, Public Relations Officer, Radio Jockey (RJ), Special Correspondent, Video Jockey (VJ), TV Correspondent, Staff or Freelance Writer, Correspondent, Illustrator, Photojournalist, Journalist, etc.
Successful graduates of B.A. Journalism & Mass Communication course can expect anything between INR 4 to 10 lacs as an annual salary in the industry, increasing with experience and skill set.
    <br>
    Hotel Management...<br>
    One of the significant outcomes of globalization is the tremendous growth in the tourism and hospitality industry. With India being one of the most popular travel destinations, the government too is encouraging and investing in the development of these industries. 
The hotel industry is a crucial part of the hospitality industry with a huge growth potential in the near future.The demand for hotel management professionals is already huge and is expected to grow more with the increasing number of hotels being set up in India and all over the world. Apart from its glamour, a career in hotel management has become lucrative and exciting, attracting more and more students to opt for it.
Hotel management jobs include multiple skills like food and beverage service, front office operation,sales and marketing, accounting etc. Many government colleges and private institutes in India offer certificate, diploma or degree courses in hotel management.
    <br>
    B.B.A...<br>
    in Business Management, the minimum eligibility for which is class 12th from a recognized educational board with minimum score 
of 50%.The course is divided into six semesters andcomprises variants like BMS, BBM and BBS. It can also be pursued through Correspondence/ Distant learning modes and admisison to the same is based on entrance tests carried out by different colleges and universities.
BBA course equips you with the right knowledge and skills in business and management and impart knowledge of the principles which are perfect for a career in the corporate world. A degree in Business Administration solidifies your base for your future Business and management career goals. Successful graduates of this course can opt for a range of jobs from sectors like finance, marketing, sales, management, government and education.
The average tuition fee charged for the course in india ranges between INR 1 lakh to 2.5 lacs. Some of the top institutes which provide admission to candidates into the 3-year program are as follows:
Financial Analyst, Business Development Executive, Project Manager (IT), Data Analyst, Human Resources (HR) Manager, Marketing Executive etc. are some such profiles which successful graduates interested in pursuing job can opt for. The average monthly salary offered to them would vary between INR 10,000 – 15,000 depending on the organization and candidate’s expertise in the field. 
    <br>
    Event Management...<br>
    Event management is a multifaceted activity. Major constituents of this profile include creativity, meticulous planning, relationship management, advertising and marketing and much more, all rolled into one seamlessly choreographed process.
The candidates who have passed higher & senior secondary level (10 + 2) with minimum 50% are eligible for this course. Graduates of any other stream looking for a degree and eventually a career in event management Industry can also apply for the course.
The fee for the course varies between INR 20,000 and 1,20,000 in India.
Graduates of Diploma in event management have a specific set of job opportunities like Event management consultancy, Hotel/Travel and hospitality industries, Advertising agencies, Public relations firms, Corporations, Integrated marketing & communications, Event budgeting and accounting.
Once completed, the graduate may pursue further studies or may take up said job opportunities. The average salary for a Diploma in Event management is between INR 3 and 4 LPA. The starting salary is a little less for a trainee, maybe between INR 2 and 3 LPA.
    <br>
    Fashion Design...<br>
    Fashion Designing is one of the most popular fields amongst students who are on the lookout for creative courses. If you are aspiring to study fashion design it is important that you find out about the different types of fashion designing courses, their duration and fees.
Apart from that, it is also essential to understand that curriculum and course structure of different fashion designing courses vary from institute to institute. Fashion design courses will also depend on the credit awarded at the end of the course i.e. degree, diploma or certificate.
If you are seeking admission to design courses basis the NIFT entrance exam, the detailed NIFT 2018 Paper Analysis will give you a fair idea of what to expect from the entrance exam. Check the NIFT exam analysis here after the successful conduct of the exam.
Following table comprises the list of different fashion designing courses along with the eligibility criteria that you can consider in order to foray in the fashion industry.
    <br>
    Retail and Fashion Merchandise... <br>
    A bachelor's program in fashion merchandising teaches students about the process of moving apparel from the designer to the retail sales floor and into the hands of consumers. Schools may offer various degrees in this field such as a Bachelor of Science, Bachelor of Professional Studies, Bachelor of Arts or Bachelor of Business Administration. Some of these programs also include opportunities for hands-on work experience such as internships or work study experiences. Most programs do not have special admissions requirements.
In a fashion merchandising bachelor's degree program, students can learn about advertising, promotion, store planning and visual merchandising while gaining exposure in retailing and catalog development. They also have the opportunity to build strong foundations in buying, inventory, stock control, product assortment analysis, budgets and distribution strategies. Some programs may include internships or work study opportunities so students can gain professional experience. Some topics covered in a program may include:
The U.S. Bureau of Labor Statistics (BLS) indicated that product line managers would see a slow decline in jobs from 2014-2024. Further BLS projections state that buyers are likely to see a 2% employment growth during that decade, which is also slower than the average rate. Jobs in the market research field are expected to increase by 19%.
A few programs at the master's level are available in fashion merchandising and related fields for individuals looking to build upon their studies. These degree programs typically add a research component to the curricula and may offer specializations within the field, such as historic textiles. Graduates may qualify for administrative positions or enter into university-level teaching positions.
Those students who earn a bachelor of fashion merchandising will be prepared to work numerous different kinds of career by reviewing courses such as textiles and fashion retailing. Internships help students build upon the knowledge they are taught in the courseroom.
    <br>
</body>
</html>