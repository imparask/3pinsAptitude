<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>COMMERCE</title>
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
<h2>YOU CHOOSE COMMERCE</h2>
<br>
<h4>COMMERCE STREAM SUBJECTS</h4>
<ul>
	<li>Economics</li>
	<li>English</li>
	<li>Business Studies/Organisation of Commerce</li>
	<li>Mathematics</li>
	<li>Information Practices</li>
	<li>Statistics</li>
</ul>
<br>
<hr>
<h3>HERE ARE YOUR OPTIONS : </h3>
    Bachelors of Commerce (B.Com) : ...<br>
    B. Com. stands for Bachelor of Commerce. It is a 3 years long Graduation program. Usually, it is Commerce stream students who choose this course after 12th standard schooling. But technically, even Science as well as Arts stream students are eligible to pursue this course! In the past, B. Com. used to have many takers. In fact, it was one of the most sought after and valuable Degree program. But with the introduction of technical courses like Engineering, B Sc etc, B. Com. had lost some of its old glory. As of now, B. Com. has managed to reinvent itself with the introduction of new areas of specializations! And still today, it is a favorite among Commerce stream students! In this article, we will check out some important details related to B. Com. course, such as- advantages of pursuing this course, areas of specializations, career prospects, scope etc. 
It is one of the oldest degrees offered by Colleges in India. Normally, it is a program that lasts 3 years. In the past, B. Com. used to be a general course, covering number of subjects, which were commonly related to commerce sector. Students had to select a combination of subjects that they had to then pursue. At present, the old B. Com. program is offered across Colleges in India. Along with it, newly introduced specialization programs are also being offered across many Indian Colleges.
Talking about the core subjects of the program, one can say that B. Com. program usually focuses on subjects like-Accounts, Mathematics and Economics. Nowadays, as I mentioned above, new B. Com. programs and specialization courses are also being offered. Some of the new programs are- B. Com. in Computer Application, B. Com. in Information Technology, B. Com. in E Commerce etc.
    <br>
    Bachelors of Commerce (Honours) or B.com (Hons) : ...<br>
    B.Com. Honours is a 3-year full-time undergraduate course, the minimum eligibility for which is a Higher Secondary Certificate (10+2) qualification with a minimum aggregate score of 45%. The program is spread over 6 semesters, with the final semester based on the candidate’s chosen stream of study.
Admission to the course is based on the candidate’s performance in a relevant entrance test, and subsequent round of counselling.
Such postgraduates are hired in capacities such as Business Analyst, Finance Officer, Sales Analyst, Junior Analyst, Tax Accountant, Stock Broker, Economist, Business Development Trainee etc. They are hired in areas such as Business Consultancies, Educational Institutes, Industrial Houses, Public Accounting Firms, Policy Planning, Foreign Trade, Banks, Budget Planning, Inventory Control, Merchant Banking, Marketing.
The average tuition fee charged for the course in India ranges between INR 2,000 and 7 Lacs for a span of 3 years, and the average annual salary offered to such professionals ranges between INR 2 and 10 Lacs, increasing with experience and expertise.
    <br>
    Bachelors in Economics : ...<br>
    B.A. Economics is a is a 3- year long graduate level course divided into 6 semesters, with each semester spanning 6 months. However, some universities follow the yearly pattern of examination. The course is designed to train pupils in analyzing concepts and processes of the economy by educating them in areas such as definition, nature, scope, concepts, utility, production, market, monopoly etc.
    <br>
    Bachelors of Business Administration (BBA) : ...<br>
    In the United States, the degree is conferred after four years of full-time study in one or more areas of business concentrations. In Europe, the degree is conferred after three years of full-time study in one or more areas of business concentrations. The BBA program usually includes general business courses and advanced courses for specific concentrations.
The degree is designed to give a broad knowledge of the functional aspects of a company and their interconnection, while also allowing specialization in a particular area. B.B.A. programs thus expose students to a variety of "core subjects" and generally allow students to specialize in a specific academic area; see aside.

The degree also develops the student's practical, managerial and communication skills, and business decision-making capability. Many programs incorporate training and practical experience, in the form of case projects, presentations, internships, industrial visits, and interaction with experts from the industry.

General educational requirements emphasize humanities and social sciences (history, economics, and literature). Coverage of mathematics is generally business related, and is often limited to "Quantitative Applications for Business" or, alternatively, courses in Calculus for business or Calculus 101, and business- or general-statistics.
    <br>
    Bachelor of Management Studies (BMS) : ...<br>
    As the name suggests, BMS course focuses on the domain of management studies. Basically, it is a management education program.
The main aim of BMS course is to impart management skills and knowledge among students. To impart this knowledge, the academic program utilizes both classroom lectures and practical training.
Businesses and Organizations across the world need skilled managers to take care of their daily operations. Managers are the ones who coordinate and manage the following things – human resources, finance, operations, decision-making, material resources, marketing etc.
Managers occupy key administrative jobs in businesses and organizations. If you want to become a manager, you must possess management knowledge and skills! This is when BMS course comes handy!
BMS course trains you to don administrative roles in different types of organizations. It is essentially a general management course!
BMS course covers topics such as fundamentals of management, modern management practices, use of IT and computers, business laws etc. The academic program consists of two sets of subjects – core management subjects and optional subjects (specialization).
    <br>
    Chartered Accountancy (CA) : ...<br>
    CA
Chartered accountants were the first accountants to form a professional accounting body, initially established in Scotland in 1854. The Edinburgh Society of Accountants (1854), the Glasgow Institute of Accountants and Actuaries (1854) and the Aberdeen Society of Accountants (1867) were each granted a royal charter almost from their inception.[1] The title is an internationally recognised professional designation; the certified public accountant designation is generally equivalent to it.

Chartered accountants work in all fields of business and finance, including auditing, taxation, financial and general management. Some are engaged in public practice work, others work in the private sector and some are employed by government bodies.[2][3][4]

Chartered accountants' institutes require members to undertake a minimum level of continuing professional development to stay professionally competitive. They facilitate special interest groups (for instance, entertainment and media, or insolvency and restructuring) which lead in their fields. They provide support to members by offering advisory services, technical helplines and technical libraries. They also offer opportunities for professional networking, career and business development.
    <br>
    Company Secretary (CS) : ...<br>
    A company secretary is a senior position in a private sector company or public sector organisation. In large American and Canadian publicly-listed corporations, a company secretary is typically named a corporate secretary or secretary. The company secretary is responsible for the efficient administration of a company, particularly with regard to ensuring compliance with statutory and regulatory requirements and for ensuring that decisions of the board of directors are implemented.[1]

Despite the name, the role is not clerical or secretarial. The company secretary ensures that an organisation complies with relevant legislation and regulation, and keeps board members informed of their legal responsibilities. Company Secretaries are the company’s named representative on legal documents, and it is their responsibility to ensure that the company and its directors operate within the law. It is also their responsibility to register and communicate with shareholders, to ensure that dividends are paid and to maintain company records, such as lists of directors and shareholders, and annual accounts.
    <br>

    Cost and Management Accountant (CMA) :<br>
    Certified Management Accountant (CMA) is a professional certification credential in the management accounting and financial management fields. The certification signifies that the person possesses knowledge in the areas of financial planning, analysis, control, decision support, and professional ethics. The CMA is a U.S.-based, globally recognized certification offered by the Institute of Management Accountants.

CMA-certified professionals work inside organizations of all sizes, industries, and types, including manufacturing and services, public and private enterprises, not-for-profit organizations, academic institutions, government entities, and multinational corporations. To date, more than 50,000 CMAs have been certified in more than 100 countries.[citation needed] To obtain certification, candidates must pass a rigorous exam, meet an educational requirement, experience requirement, and demonstrate a commitment to continuous learning through continuing professional education (CPE).
    <br>
</body>
</html>