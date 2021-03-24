<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/sql" %>
    
<!DOCTYPE html>
<html>
<Head profile="http://www.w3.org/2005/10/profile">
<link rel="shortcut icon" href="pics/favicon/favicon.png">
 
  
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
<script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
<style>

body{
	background-color: #0099cc;
}

.imglogo{
	padding: 10px;
}


.logo{
	width: 100%;
	height: 50%;
	background-color: white;
	margin-top: 30%;
	margin-left: 25%;
	border: 1px solid red;
	border-radius: 50%;
}

.labellogo{
	width: 100%;
	text-align: center;
	margin-top: 25%;
	margin-left: 25%;
	font-family: "Copperplate", fantasy;
}

.card {
	box-shadow: 10px 10px 10px #0099cc;
	border: 1px solid #0099cc;
	width: 15%;
	height: 210px;
	display: inline-block;
	text-align: left;
	padding-right: 5%;
	margin-right: 5%;
	margin-top: 5%;
}

.card:hover {
	background-color: #0099cc;
	box-shadow: none;
	color: white;
}


button{
	position: relative;
	top: 80px;
	  background-color: #0099cc;
  border: 2px solid #0099cc;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin-bottom: 2%;
}

button:hover {
	border: 2px solid #0099cc;
  background-color: white;
  color: #0099cc;
}

.About{
	font-size: 1.5rem;
	width: 60%;
	text-align: center;
	position: relative;
	left: 20%;
	top: 20px;
	font-family: Arial, sans-serif;
}

.Footer{
	height: 100px;
	background-color: black;
	position: relative;
	top: 10%;
	left: -1%;
	width: 101%;
	color:white;
	padding: 40px;

}

h1 {
  position: relative;
  color: #ffffff;  
  font-size: 5rem;
  line-height: 0.9;
  text-align: right;
}

h4{
	position: relative;
  color: #ffffff;  
  font-size: 2rem;
  line-height: 0.9;
  text-align: right;
}
 #pic{
	 background-image: url("pics/new2.jpg");
	 opacity: 0.7;
	 background-repeat: no-repeat;
	  background-size: 100% 100%;
 }
.container1{
	position: absolute;
	top: 4%;
}
.section{
	margin: 5px;
	background-color: white;
	width: 80%;
	box-shadow: 0 8px 16px 0 #333, 0 8px 24px 0 #333;
	padding: 40px;
	position: relative;
	left: 8%;
	text-align: right;
}

.sectionpic{
	margin: 5px;
	background-color: white;
	width: 80%;
	height: 675px;
	box-shadow: 0 8px 16px 0 #333, 0 8px 24px 0 #333;
	padding: 40px;
	position: relative;
	left: 8%;
	text-align: right;
}

.section1{
	margin: 5px;
	background-color: #333;
	width: 80%;
	box-shadow: 0 8px 16px 0 white, 0 8px 24px 0 white;
	padding: 40px;
	position: relative;
	left: 8%;
	text-align: center;
	color: white;
}

.scroll{
	overflow-y:auto;
	overflow-x: auto;
	height: 600px;
	padding: 40px;
}

/* Add a black background color to the top navigation */
.topnav {
  z-index:50;
  border: 2px solid #0099cc;
  background-color: #333;
  overflow: hidden;
  text-align: right;
  box-shadow: 10px 10px 10px 10px #333;
  position: fixed; /* Set the navbar to fixed position */
  left: 0;
  top: 0; /* Position the navbar at the top of the page */
  width: 100%;
}

/* Style the links inside the navigation bar */
.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

/* Change the color of links on hover */
.topnav a:hover {
  background-color: #ddd;
  color: black;
}

/* Add a color to the active/current link */
.topnav a.active {
  background-color: #0099cc;
  color: white;
}
/* Add a color to the active/current link */
.topnav a.active:hover {
   background-color: #ddd;
  color: black;
}

.Tabular{
	
}

.Formcon{
	width: 40%;
	display: inline-block;
	color: white;
}


</style>
<style>
#customers {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
  position: relative;
  margin-top: -105%;
  margin-left: 20%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: black;}
#customers tr:nth-child(odd){background-color: #333;}

#customers tr:hover {background-color: #ddd; color: blue;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #0099cc;
  color: white;
}
</style>
<style>
@import url('https://fonts.googleapis.com/css?family=Lato:300,400,700,900');

* {
	pading: 0;
	margin: 0;
	position: relative;
}

.timeline {
	padding: 15px 0px;
	width: 80%;
	margin-left: 10%;
	margin-bottom: 40px;
}

.timeline:before {
	content: "";
	position: absolute;
	top: 60px;
	left: 65px;
	width: 3px;
	height: calc(100% - 80px);
	background: #0099cc;
}

.timeline .column {
	margin: 40px 40px 40px 120px;
}

.timeline .column .title h1 {
	font-size: 120px;
	color: rgba(0, 153, 204, 0.4);
	font-family: serif;
	letter-spacing: 3px;
}

.timeline .column .title h1:before {
	content: "";
	position: absolute;
	left: -62px;
	top: 86px;
	width: 10px;
	height: 10px;
	background: #fff;
	border: 3px solid #0099cc;
}

.timeline .column .title h2 {
	margin-top: -100px;
	font-size: 33px;
	text-align: left;
}

.timeline .column .description p {
	font-size: 13px;
	line-height: 20px;
	margin-left: 20px;
	margin-top: 10px;
	font-family: serif;
}

.timeline .column .description {
	border-left: 1px solid #000;
}

.main {
	width: 80%;
	margin-left: 10%;
	margin-top: 40px;
}

.main h1 {
	float: right;
	font-size: 80px;
	line-height: 60px;
}

.main p {
	font-size: 13px;
	line-height: 20px;
	font-family: serif;
	text-align: right;
}
</style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
<style>

@import url("https://fonts.googleapis.com/css?family=Oswald|Roboto:400,700");
body {
  font-size: 14px;
  line-height: 1.5;
}

h1, h2, h3, h4, h5, h6 {
  font-family: 'Oswald', sans-serif;
}

h1 {
  font-size: 2rem;
}

p {
  font-family: 'Roboto', sans-serif;
  font-size: .8rem;
}

.container {
  max-width: 1024px;
  width: 90%;
  margin: 0 auto;
}

.timeline-item {
  padding: 2em 2em 2em;
  position: relative;
  color: white;
  border-left: 2px solid rgba(0, 0, 0, 0.3);
}
.timeline-item p {
  font-size: 1rem;
  text-align: left;
}

.timeline-item h1 {
  text-align: left;
}

.timeline-item h3 {
  font-size: 1.4rem;
  text-align: left;
}

.timeline-item::before {
  content: attr(date-is);
  position: absolute;
  left: 2em;
  font-weight: bold;
  top: 1em;
  display: block;
  font-family: 'Roboto', sans-serif;
  font-weight: 700;
  font-size: .785rem;
}
.timeline-item::after {
  width: 10px;
  height: 10px;
  display: block;
  top: 1em;
  position: absolute;
  left: -7px;
  border-radius: 10px;
  content: '';
  border: 2px solid rgba(0, 0, 0, 0.3);
  background: white;
}
.timeline-item:last-child {
  -o-border-image: linear-gradient(to bottom, rgba(0, 0, 0, 0.3) 60%, transparent) 1 100%;
     border-image: -webkit-linear-gradient(top, rgba(0, 0, 0, 0.3) 60%, transparent) 1 100%;
     border-image: linear-gradient(to bottom, rgba(0, 0, 0, 0.3) 60%, transparent) 1 100%;
}


</style>
<style>

/* Media Queries */
/* cards sizing */
/* Colors */
/* Calculations */
/* Placeholders */
@media (min-width: 1000px) {
  #timeln .demo-cards:nth-child(odd) .head::after, #timeln .demo-cards:nth-child(even) .head::after {
    position: absolute;
    content: "";
    width: 0;
    height: 0;
    border-top: 15px solid transparent;
    border-bottom: 15px solid transparent;
  }

  #timeln .demo-cards:nth-child(odd) .head::before, #timeln .demo-cards:nth-child(even) .head::before {
    position: absolute;
    content: "";
    width: 9px;
    height: 9px;
    background-color: #bdbdbd;
    border-radius: 9px;
    box-shadow: 0px 0px 2px 8px #f7f7f7;
  }
}
/* Some Cool Stuff */
.demo-cards:nth-child(1) {
  order: 1;
}

.demo-cards:nth-child(2) {
  order: 4;
}

.demo-cards:nth-child(3) {
  order: 2;
}

.demo-cards:nth-child(4) {
  order: 5;
}

.demo-cards:nth-child(5) {
  order: 3;
}

.demo-cards:nth-child(6) {
  order: 6;
}

/* Border Box */
* {
  box-sizing: border-box;
}

/* Fonts */
body {
  font-family: Roboto;
}

#timeln {
  padding: 100px 0;
  background: white;
  border-top: 1px solid rgba(191, 191, 191, 0.4);
  border-bottom: 1px solid rgba(191, 191, 191, 0.4);
}
#timeln h1 {
  text-align: center;
  font-size: 3rem;
  font-weight: 200;
  margin-bottom: 20px;
}
#timeln p.leader {
  text-align: center;
  max-width: 90%;
  margin: auto;
  margin-bottom: 45px;
}
#timeln .demo-cards-wrapper {
  position: relative;
  margin: auto;
}
@media (min-width: 1000px) {
  #timeln .demo-cards-wrapper {
    display: flex;
    flex-flow: column wrap;
    width: 1172px;
    height: 1650px;
    margin: 0 auto;
  }
}
#timeln .demo-cards-wrapper::after {
  z-index: 1;
  content: "";
  position: absolute;
  top: 0;
  bottom: 0;
  left: 50%;
  border-left: 1px solid rgba(191, 191, 191, 0.4);
}
@media (min-width: 1000px) {
  #timeln .demo-cards-wrapper::after {
    border-left: 1px solid #bdbdbd;
  }
}
#timeln .demo-cards {
  position: relative;
  display: block;
  margin: 10px auto 80px;
  max-width: 94%;
  z-index: 2;
}
@media (min-width: 480px) {
  #timeln .demo-cards {
    max-width: 60%;
    box-shadow: 0px 1px 22px 4px rgba(0, 0, 0, 0.07);
  }
}
@media (min-width: 720px) {
  #timeln .demo-cards {
    max-width: 40%;
  }
}
@media (min-width: 1000px) {
  #timeln .demo-cards {
    max-width: 450px;
    height: auto;
    margin: 90px;
    margin-top: 45px;
    margin-bottom: 45px;
  }
  #timeln .demo-cards:nth-child(odd) {
    margin-right: 45px;
  }
  #timeln .demo-cards:nth-child(odd) .head::after {
    border-left-width: 15px;
    border-left-style: solid;
    left: 100%;
  }
  #timeln .demo-cards:nth-child(odd) .head::before {
    left: 491.5px;
  }
  #timeln .demo-cards:nth-child(even) {
    margin-left: 45px;
  }
  #timeln .demo-cards:nth-child(even) .head::after {
    border-right-width: 15px;
    border-right-style: solid;
    right: 100%;
  }
  #timeln .demo-cards:nth-child(even) .head::before {
    right: 489.5px;
  }
  #timeln .demo-cards:nth-child(2) {
    margin-top: 180px;
  }
}
#timeln .demo-cards .head {
  position: relative;
  display: flex;
  align-items: center;
  color: #fff;
  font-weight: 400;
}
#timeln .demo-cards .head .number-box {
  display: inline;
  float: left;
  margin: 15px;
  padding: 10px;
  font-size: 35px;
  line-height: 35px;
  font-weight: 600;
  background: rgba(0, 0, 0, 0.17);
}
#timeln .demo-cards .head h2 {
  text-transform: uppercase;
  font-size: 1.3rem;
  font-weight: inherit;
  letter-spacing: 2px;
  margin: 0;
  padding-bottom: 6px;
  line-height: 1rem;
}
@media (min-width: 480px) {
  #timeln .demo-cards .head h2 {
    font-size: 165%;
    line-height: 1.2rem;
  }
}
#timeln .demo-cards .head h2 span {
  display: block;
  font-size: 0.6rem;
  margin: 0;
}
@media (min-width: 480px) {
  #timeln .demo-cards .head h2 span {
    font-size: 0.8rem;
  }
}
#timeln .demo-cards .body {
  background: #fff;
  border: 1px solid rgba(191, 191, 191, 0.4);
  border-top: 0;
  padding: 15px;
}
@media (min-width: 1000px) {
  #timeln .demo-cards .body {
    height: 315px;
  }
}
#timeln .demo-cards .body p {
  font-size: 14px;
  line-height: 18px;
  margin-bottom: 15px;
}
#timeln .demo-cards .body img {
  display: block;
  width: 100%;
}
#timeln .demo-cards--step1 {
  background-color: #46b8e9;
}
#timeln .demo-cards--step1 .head::after {
  border-color: #46b8e9;
}
#timeln .demo-cards--step2 {
  background-color: #3ee9d1;
}
#timeln .demo-cards--step2 .head::after {
  border-color: #3ee9d1;
}
#timeln .demo-cards--step3 {
  background-color: #ce43eb;
}
#timeln .demo-cards--step3 .head::after {
  border-color: #ce43eb;
}
#timeln .demo-cards--step4 {
  background-color: #4d92eb;
}
#timeln .demo-cards--step4 .head::after {
  border-color: #4d92eb;
}
#timeln .demo-cards--step5 {
  background-color: #46b8e9;
}
#timeln .demo-cards--step5 .head::after {
  border-color: #46b8e9;
}


</style>

<style>
/* width */
::-webkit-scrollbar {
  width: 10px;
}

/* Track */
::-webkit-scrollbar-track {
  background: #333; 
}
 
/* Handle */
::-webkit-scrollbar-thumb {
  background: #0099cc; 
}

/* Handle on hover */
::-webkit-scrollbar-thumb:hover {
  background: teal; 
  width: 20px;
}

</style>
<style>
form{
	text-align: left;
}
input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

textarea {
  width: 100%;
  height: 200px;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 100%;
  background-color: #0099cc;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: white;
  color: #0099cc;
}

</style>
</Head>
<body>
<div name = "layout-scroll">
<div name = "nav" style = "text-align:right">
	<div class="topnav">
            <a class ="active" href="#intro">HOME</a>
            <a href="#About">ABOUT</a>
            <a href="#Skills">SKILLS</a>
			<a href="#Education">EDUCATION</a>
            <a href="#Experience">EXPERIENCE</a>
            <a href="#Projects">PROJECTS</a>
			<a href="#Contact">CONTACT</a>
			<a href = "#"><p>${message}</p></a>
			<a href = "https://www.facebook.com/gautham.pamidipati/" style = "float:right;"><i class="fab fa-facebook"></i></a>
			<a href = "https://www.instagram.com/life_as_gautham_pamidipati/" style = "float:right;"><i class="fab fa-instagram"></i></a>
			<a href = "https://www.linkedin.com/in/saigauthampamidipati/" style = "float:right;"><i class="fab fa-linkedin"></i></a>
			<a href = "https://github.com/SaiGauthamPamidipati/" style = "float:right;"><i class="fab fa-github"></i></a>
</div>
	</div>
	<div class = "container1">
	<br/><br/>
	<div class = "sectionpic" id = "pic">
<div id = "intro" ><h1 style = "font-size: 7em;">Jai Sai Ram.. <br/> Hi There,<br/> </h1><h4 style = "font-size: 3em;">This is Sai Gautham Pamidipati.</h4>
</div>
</div>
<div class = "section">
<div id = "About" style = "padding: 40px;"><h1 style="text-align:center;color:#0099cc;font-size: 3rem;">About</h1><p class = "About">I'm a computer science engineer. I have close to 2 years of experience in the field.  I have worked in a few categories of computer science namely Web Development, Andriod Development, Full Stack Engineer, Cloud Intern, Web Designer and Maintanence Engineer, & Cyber Security Intern. I would like to tell you more about my self through the idea of this website.</p>
<center><a href = "Documents/Resume.pdf" target = "_blank"><button>View My Resume</button></a></center>
</div>
</div>
<div class = "section1">
<div id = "Skills"><h1 style="text-align:center;color:#0099cc;font-size: 3rem;">Skills</h1>
<div class = "scroll">
<h3>Front-end Web Development Skills</h3>
<div class = "card" >
<div class = "logo"><img class = "imglogo" src = "pics/skills/html.png"  height = "100px"/></div>
<div class = "labellogo"><p>HTML</p></div>
</div>
<div class = "card" >
<div class = "logo"><image class = "imglogo" src = "pics/skills/html.png"  height = "100px"/></div>
<div class = "labellogo"><p>CSS</p></div>
</div>
<div class = "card" >
<div class = "logo"><image class = "imglogo" src = "pics/skills/html.png"  height = "100px"/></div>
<div class = "labellogo"><p>Javascript</p></div>
</div>
<div class = "card" >
<div class = "logo"><image class = "imglogo" src = "pics/skills/html.png"  height = "100px"/></div>
<div class = "labellogo"><p>React.js</p></div>
</div>
<div class = "card" >
<div class = "logo"><img class = "imglogo" src = "pics/skills/html.png"  height = "100px"/></div>
<div class = "labellogo"><p>jQuery</p></div>
</div>
<div class = "card" >
<div class = "logo"><image class = "imglogo" src = "pics/skills/html.png"  height = "100px"/></div>
<div class = "labellogo"><p>AJAX</p></div>
</div>
<div class = "card" >
<div class = "logo"><image class = "imglogo" src = "pics/skills/html.png"  height = "100px"/></div>
<div class = "labellogo"><p>Bootstrap</p></div>
</div>
<div class = "card" >
<div class = "logo"><image class = "imglogo" src = "pics/skills/html.png"  height = "100px"/></div>
<div class = "labellogo"><p>JSON</p></div>
</div>
<h3 style = "margin-top:5%">Middleware / Programming Languages</h3>
<div class = "card" >
<div class = "logo"><img class = "imglogo" src = "pics/skills/html.png"  height = "100px"/></div>
<div class = "labellogo"><p>Java</p></div>
</div>
<div class = "card" >
<div class = "logo"><image class = "imglogo" src = "pics/skills/html.png"  height = "100px"/></div>
<div class = "labellogo"><p>C</p></div>
</div>
<div class = "card" >
<div class = "logo"><image class = "imglogo" src = "pics/skills/html.png"  height = "100px"/></div>
<div class = "labellogo"><p>C++</p></div>
</div>
<div class = "card" >
<div class = "logo"><image class = "imglogo" src = "pics/skills/html.png"  height = "100px"/></div>
<div class = "labellogo"><p>Python</p></div>
</div>
<div class = "card" >
<div class = "logo"><img class = "imglogo" src = "pics/skills/html.png"  height = "100px"/></div>
<div class = "labellogo"><p>PHP</p></div>
</div>
<div class = "card" >
<div class = "logo"><image class = "imglogo" src = "pics/skills/html.png"  height = "100px"/></div>
<div class = "labellogo"><p>JSP & Servlets</p></div>
</div>
<div class = "card" >
<div class = "logo"><image class = "imglogo" src = "pics/skills/html.png"  height = "100px"/></div>
<div class = "labellogo"><p>Scala</p></div>
</div>
<div class = "card" >
<div class = "logo"><image class = "imglogo" src = "pics/skills/html.png"  height = "100px"/></div>
<div class = "labellogo"><p>Prolog</p></div>
</div>
<h3 style = "margin-top:5%">Databases</h3>
<div class = "card" >
<div class = "logo"><img class = "imglogo" src = "pics/skills/html.png"  height = "100px"/></div>
<div class = "labellogo"><p>Oracle DB</p></div>
</div>
<div class = "card" >
<div class = "logo"><image class = "imglogo" src = "pics/skills/html.png"  height = "100px"/></div>
<div class = "labellogo"><p>MySQL</p></div>
</div>
<div class = "card" >
<div class = "logo"><image class = "imglogo" src = "pics/skills/html.png"  height = "100px"/></div>
<div class = "labellogo"><p>MSSQL</p></div>
</div>
<div class = "card" >
<div class = "logo"><image class = "imglogo" src = "pics/skills/html.png"  height = "100px"/></div>
<div class = "labellogo"><p>Postgres SQL</p></div>
</div>
<div class = "card" style = "display:block; margin-left:9%;" >
<div class = "logo"><img class = "imglogo" src = "pics/skills/html.png"  height = "100px"/></div>
<div class = "labellogo"><p>Firebase</p></div>
</div>
<div class = "card" style = "display:none">

</div>
<div class = "card" style = "display:none">

</div>
<div class = "card" style = "display:none">

</div>
<h3 style = "margin-top:5%">Operating System & Services</h3>
<div class = "card" >
<div class = "logo"><img class = "imglogo" src = "pics/skills/html.png"  height = "100px"/></div>
<div class = "labellogo"><p>Shell Script</p></div>
</div>
<div class = "card" >
<div class = "logo"><image class = "imglogo" src = "pics/skills/html.png"  height = "100px"/></div>
<div class = "labellogo"><p>Windows</p></div>
</div>
<div class = "card" >
<div class = "logo"><image class = "imglogo" src = "pics/skills/html.png"  height = "100px"/></div>
<div class = "labellogo"><p>Kali Linux</p></div>
</div>
<div class = "card" >
<div class = "logo"><image class = "imglogo" src = "pics/skills/html.png"  height = "100px"/></div>
<div class = "labellogo"><p>Ubuntu Linux</p></div>
</div>
<h3 style = "margin-top:5%">Tools and Technologies</h3>
<div class = "card" >
<div class = "logo"><img class = "imglogo" src = "pics/skills/html.png"  height = "100px"/></div>
<div class = "labellogo"><p>Tomcat</p></div>
</div>
<div class = "card" >
<div class = "logo"><image class = "imglogo" src = "pics/skills/html.png"  height = "100px"/></div>
<div class = "labellogo"><p>Apache</p></div>
</div>
<div class = "card" >
<div class = "logo"><image class = "imglogo" src = "pics/skills/html.png"  height = "100px"/></div>
<div class = "labellogo"><p>Eclipse</p></div>
</div>
<div class = "card" >
<div class = "logo"><image class = "imglogo" src = "pics/skills/html.png"  height = "100px"/></div>
<div class = "labellogo"><p>IntelliJ</p></div>
</div>
<div class = "card" >
<div class = "logo"><img class = "imglogo" src = "pics/skills/html.png"  height = "100px"/></div>
<div class = "labellogo"><p>VS Code</p></div>
</div>
<div class = "card" >
<div class = "logo"><image class = "imglogo" src = "pics/skills/html.png"  height = "100px"/></div>
<div class = "labellogo"><p>XAMPP</p></div>
</div>
<div class = "card" >
<div class = "logo"><image class = "imglogo" src = "pics/skills/html.png"  height = "100px"/></div>
<div class = "labellogo"><p>Django</p></div>
</div>
<div class = "card" >
<div class = "logo"><image class = "imglogo" src = "pics/skills/html.png"  height = "100px"/></div>
<div class = "labellogo"><p>Expression Web</p></div>
</div>
<h3 style = "margin-top:5%">Cloud Computing Technology</h3>
<div class = "card" >
<div class = "logo"><img class = "imglogo" src = "pics/skills/html.png"  height = "100px"/></div>
<div class = "labellogo"><p>AWS Amazon s3 </p></div>
</div>
<div class = "card" >
<div class = "logo"><image class = "imglogo" src = "pics/skills/html.png"  height = "100px"/></div>
<div class = "labellogo"><p style = "left:-10%;position:relative;">AWS&nbsp;ElasticBeanStalk</p></div>
</div>
<div class = "card" >
<div class = "logo"><image class = "imglogo" src = "pics/skills/html.png"  height = "100px"/></div>
<div class = "labellogo"><p>AWS CloudFront</p></div>
</div>
<div class = "card" >
<div class = "logo"><image class = "imglogo" src = "pics/skills/html.png"  height = "100px"/></div>
<div class = "labellogo"><p>AWS&nbsp;Amazon&nbsp;RDS</p></div>
</div>
<div class = "card" >
<div class = "logo"><img class = "imglogo" src = "pics/skills/html.png"  height = "100px"/></div>
<div class = "labellogo"><p>AWS Route 53</p></div>
</div>
<div class = "card" >
<div class = "logo"><image class = "imglogo" src = "pics/skills/html.png"  height = "100px"/></div>
<div class = "labellogo"><p>AWS&nbsp;Glacier&nbsp;Vault</p></div>
</div>
<div class = "card" >
<div class = "logo"><image class = "imglogo" src = "pics/skills/html.png"  height = "100px"/></div>
<div class = "labellogo"><p>AWS&nbsp;Amazon&nbsp;EC2</p></div>
</div>
<div class = "card" >
<div class = "logo"><image class = "imglogo" src = "pics/skills/html.png"  height = "100px"/></div>
<div class = "labellogo"><p>GCP&nbsp;Direction&nbsp;API</p></div>
</div>
<h3 style = "margin-top:5%">Vulnerability Assessment and Penetration Testing</h3>
<div class = "card" >
<div class = "logo"><img class = "imglogo" src = "pics/skills/html.png"  height = "100px"/></div>
<div class = "labellogo"><p>Maltego</p></div>
</div>
<div class = "card" >
<div class = "logo"><image class = "imglogo" src = "pics/skills/html.png"  height = "100px"/></div>
<div class = "labellogo"><p>Google Docks</p></div>
</div>
<div class = "card" >
<div class = "logo"><image class = "imglogo" src = "pics/skills/html.png"  height = "100px"/></div>
<div class = "labellogo"><p>NMAP</p></div>
</div>
<div class = "card" >
<div class = "logo"><image class = "imglogo" src = "pics/skills/html.png"  height = "100px"/></div>
<div class = "labellogo"><p>Nessus</p></div>
</div>
<div class = "card" >
<div class = "logo"><img class = "imglogo" src = "pics/skills/html.png"  height = "100px"/></div>
<div class = "labellogo"><p>Acunetix</p></div>
</div>
<div class = "card" >
<div class = "logo"><image class = "imglogo" src = "pics/skills/html.png"  height = "100px"/></div>
<div class = "labellogo"><p>Burpsuite</p></div>
</div>
<div class = "card" >
<div class = "logo"><image class = "imglogo" src = "pics/skills/html.png"  height = "100px"/></div>
<div class = "labellogo"><p>Wireshark</p></div>
</div>
<div class = "card" >
<div class = "logo"><image class = "imglogo" src = "pics/skills/html.png"  height = "100px"/></div>
<div class = "labellogo"><p>Metasploit</p></div>
</div>
<h3 style = "margin-top:5%">Software Development Methodologies & Version Control</h3>
<div class = "card" >
<div class = "logo"><img class = "imglogo" src = "pics/skills/html.png"  height = "100px"/></div>
<div class = "labellogo"><p>Agile</p></div>
</div>
<div class = "card" >
<div class = "logo"><image class = "imglogo" src = "pics/skills/html.png"  height = "100px"/></div>
<div class = "labellogo"><p>Spiral</p></div>
</div>
<div class = "card" >
<div class = "logo"><image class = "imglogo" src = "pics/skills/html.png"  height = "100px"/></div>
<div class = "labellogo"><p>WaterFall</p></div>
</div>
<div class = "card" >
<div class = "logo"><image class = "imglogo" src = "pics/skills/html.png"  height = "100px"/></div>
<div class = "labellogo"><p>Git&nbsp;(Version&nbsp;Control)</p></div>
</div>
</div>
</div>
</div>
<div class = "section">
<div id = "Education"><h1 style="text-align:center;color:#0099cc;font-size: 3rem;">Education</h1>

<!-- delete this if remove time line start -->
<div class = "scroll">
<div class="timeline">
	<div class="column">
		<div class="title">
			<h1> May 2021 </h1>
			<h2> Wright State University <br> Masters in Computer Science (GPA : 3.7/4.0)</h2>
		</div>
		<div class="description">
			<p>Studied Master of Sciences in Computer Science. The following was part of my course curriculum: <br/>
			Algorithm Design and Analysis || Intro to Databases || Advance Computer Networks || Distributed Computing ||
			Advance Wireless Networks || Advanced Databases || Functional Programming (Prolog) || Logical Programming (Scala) ||
			Artificial Intelligence || Cyber Network Security || Intensive Independent Study / Research under Professor Bin Wang on the Distributed Denial of Service Attack.
			</p>
		</div>
	</div>

	<div class="column">
		<div class="title">
			<h1> May 2019</h1>
			<h2> JNTU Hyderabad <br> Bachelors in Information Technology (GPA : 3.9/4.0)</h2>
		</div>
		<div class="description">
			<p> Studied Bachelor of Technology in the Field of Information Technology. The following was part of my course curriculum: 
			<br/>
			Industry Oriented Major Project || Industry Oriented Mini Project || Mobile Application Development || Cloud Computing ||
			 Big Data Analytics || Predictive Analytics with R programming || Compiler Design || Data Warehousing and Data Mining ||
			  Information Security || Advance Computer Networks || Internet of Things (IOT) || Unix Programming || Formal Language and Automata Theory ||
			   Web Technologies || Computer Networks || Operating Systems || Object Oriented Analysis and Design || Design and Analysis of Algorithms || Computer Organization ||
			    Database Management Systems || Software Engineering || Java Programming || Data Structures || Digital Logic Design || Object Oriented Programming (C++) ||
			     Electronic Devices and Circuits || Computer Programming with C || Mathematics and Statistics || Discrete Mathematics || Engineering Graphics || Engineering Physics 
			     || Personality Development and Soft skills || English Language and Communication Skills || Personality Development and Carrier Building || Management Sciences ||
			      Gender Sensitization.
			 </p>
		</div>
	</div>

	<div class="column">
		<div class="title">
			<h1> May 2015 </h1>
			<h2> Sri Chaitanya Narayana Jr College <br> High School Senior Years </h2>
		</div>
		<div class="description">
			<p> Studied Till 12<sup>th</sup> Grade
			Subjects Studied: <br/>
			Mathematics & Statistics || Calculus || Physics || Chemistry || English || Sanskrith.
			 </p>
		</div>
	</div>

	<div class="column">
		<div class="title">
			<h1> May 2013 </h1>
			<h2> Narayana Concept School <br> High School </h2>
		</div>
		<div class="description">
			<p> Studied Till 10<sup>th</sup> Grade
			Subjects Studied: <br/>
			Mathematics & Statistics || Physics || Chemistry || Biology || Computer Applications || Physical Education || History & Civics || Geography & Economics || English || Telugu || Hindi.
			</p>
		</div>
	</div>

	<div class="column">
		<div class="title">
			<h1> May 2011 <!-- – 1978 --> </h1>
			<h2> Johnson Grammar School <br> Middle School </h2>
		</div>
		<div class="description">
			<p> Studied Till 8<sup>th</sup> Grade 
			Subjects Studied: <br/>
			Mathematics || Physics || Chemistry || Biology || History & Civics || Geography & Economics || Computer Applications || Environmental Sciences || Moral Sciences || Art || Physical Education || English Literature & Poetry || English Grammar || Telugu || Hindi.
			 </p>
		</div>
	</div>
</div>
</div>


<!-- delete this if remove time line end -->
</div>
</div>
<div class = "section1">
<div id = "Experience"><h1 style="text-align:center;color:#0099cc;font-size: 3rem;">Experience</h1>
</div>
<div class = "scroll">
<div class="container">
	
	<div class="timeline-item" date-is='Jan 2021 - present'>
		<h1>Web Developer Intern</h1>
		<h3>The ONEIL center</h3>
		<p>
			Technical Competencies: Python (Django), JAVA (Spring), HTML, CSS, Bootstrap, JavaScript, React, MySQL<br/>
-> Development of backend of a client with the help of Python and Django framework.<br/>
-> Utilized Java and Spring Framework for some clients<br/>
-> Upload the website into the internet using AWS Services like Elastic Beanstalk.<br/>
-> Improve the front-end with the help of React framework.<br/>
		</p>
	</div>
	
	<div class="timeline-item" date-is='Dec 2020 - Jan 2021'>
		<h1>Cloud Practitioner Intern</h1>
		<h3>Aura Beverages Co.</h3>
		<p>
			Technical Competencies: Amazon S3 and Amazon S3 Glacier Vault, IAM user creation, Amazon
ElasticBeanStalk.<br/>
-> Designed a cloud architecture for Aura Beverages to migrate the current data to AWS cloud.<br/>
-> Designed an Amazon S3 architecture for secure storage of sensitive information of company on cloud.<br/>
-> Worked with Amazon EC2 Instance, ElasticBeanStalk, Amazon EventBridge, and VPC.<br/>
-> Migrated total company data to AWS cloud and created a separate IAM user to access only the necessary
functions.<br/>
		</p>
	</div>
	
	<div class="timeline-item" date-is='Jan 2020 - Mar 2021'>
		<h1>Teaching Assistant</h1>
		<h3>Wright State University</h3>
		<p>
			Worked as a Teaching Assistant under Dr. Guozhu Dong in the course - CS-6710 Introduction to Data Mining, Professor Brandy Foster - CS-1000 Technology and Society, and Professor Brent Richter - CS-1000 Technology and Society.

		</p>
	</div>
	<div class="timeline-item" date-is='Jan 2019 - Jun 2019'>
		<h1>Full Stack Engineer Intern</h1>
		<h3>Fulcrum INC.</h3>
		<p>
			TECHNICAL COMPETENCIES: HTML 5.0, CSS 3, JS, MySQL, PHP, JAVA, JSP, Servlets, Tomcat Server, Bootstrap and Basic AJAX and JQuery.<br/>
-> Developed Full Stack applications for various clients associated with Fulcrum Inc.<br/>
-> Utilized XAMPP services to facilitate PHP application development.<br/>
-> Utilized Tomcat services to facilitate Java application deployment.<br/>
-> Utilized MySQL and Firebase for application development<br/>
-> Designed the Frontend with Bootstrap, CSS, and JS.<br/>
-> Learned about AJAX and JQuery's concept and implementation in the websites.
		</p>
	</div>
	<div class="timeline-item" date-is='Jun 2018 - Jun 2019'>
		<h1>Web Developer and Maintenance Engineer (Intern)</h1>
		<h3>IUCEE - SCALE</h3>
		<p>
			TECHNICAL COMPETENCIES: HTML 5.0, CSS 3, JS, AJAX, JQuery, PHP, Java, JSP, Servlets, Tomcat Server and MySQL.<br/>
-> Work as a part of the web development team and supported various event websites and coordinated registrations, 
&nbsp;&nbsp;&nbsp;&nbsp;Guiding international students towards the visa requirements in India using web technologies.<br/>
-> Websites Supported Registration, Documentation, Processing and News Delivery System to all Participants of &nbsp;&nbsp;&nbsp;&nbsp;Workshops.<br/>
-> Designed the website for registration of Students for the event of the Annual Student Conference 2019 which was in &nbsp;&nbsp;&nbsp;&nbsp;Hyderabad.<br/>
-> Designed the website for the Global Student Conference 2019 which was held in Chennai.
		</p>
	</div>
	<div class="timeline-item" date-is='May 2018 - Jun 2018'>
		<h1>Cyber Security Student Intern</h1>
		<h3>Spyry Technologies</h3>
		<p>
			TECHNICAL COMPETENCIES: Maltego, Acunetix, Nessus, NMAP, Wireshark, and Burpsuite.<br/>
-> Hands-on experience on Vulnerability Assessment and Penetration Testing specialized in Website Penetration Testing.<br/>
-> Various Footprinting Techniques were used to gather information.<br/>
-> NMAP and Acunetix were used to find vulnerability on the network layer.<br/>
-> Burpsuite was used to gain access in the client layer.
		</p>
	</div>
</div>
</div>
</div>
<div class = "section">
<div id = "Projects"><h1 style="text-align:center;color:#0099cc;font-size: 3rem;">Projects</h1>

<div class = "scroll" style = "padding:0px;">
 <section id="timeln">
	<div class="demo-cards-wrapper">
		<div class="demo-cards demo-cards--step1">
			<div class="head">
				<div class="number-box">
					<span>01</span>
				</div>
				<h2><span class="small">Mar 2019 - May 2019</span>Bus Tracking Application</h2>
			</div>
			<div class="body">
				<p style = "text-align:left;color : blue;">Technologies Utilized: JAVA, Maven, Git, Firebase, XML, Data Structures (Hashmaps<key, value>), Tomtom Maps APIs, Google Location API.</p>
				<p style = "text-align:left;">-> Designed Android Application for Anurag Group of Institutions to track the bus.<br/>
-> Designed Front end with list overview.<br/>
-> Worked with firebase integrated it with the application.<br/>
-> Used the Fused location API to capture the current location of the user and the moving bus.<br/>
-> Used Java to code the complete backend of the application.</p>
			</div>
		</div>

		<div class="demo-cards demo-cards--step2">
			<div class="head">
				<div class="number-box">
					<span>02</span>
				</div>
				<h2><span class="small">Oct 2018 - Dec 2018</span> Library Management System</h2>
			</div>
			<div class="body">
				<p style = "text-align:left;color : blue;">Technologies Utilized: Java, JDBC-ODBC, JSP, Servlets, HTML, CSS, DOM, Tomcat Application Server, Oracle 11g database, JavaScript.</p>
			    <p style = "text-align:left;">-> Developed a basic web application that would manage the borrowing and returning of books in the library.<br/>
-> Designed the front end with JS, CSS, and Basic HTML 5.0.<br/>
-> Developed middleware of the web application with the help of Java and Java Server Pages.<br/>
-> Integrated the Oracle 11g with the front-end with the help of JAVA using JDBC-ODBC connectivity.<br/>
-> Deployed the following application locally with the assistance of Apache Tomcat by generating a .WAR file.</p>
			</div>
		</div>

		<div class="demo-cards demo-cards--step3">
			<div class="head">
				<div class="number-box">
					<span>03</span>
				</div>
				<h2><span class="small">Jan 2019 - Feb 2019</span> Anurag Group's Intranet</h2>
			</div>
			<div class="body">
				<p style = "text-align:left;color : blue;">Technology utilized: PHP, AJAX, MySQL</p>
				<p style = "text-align:left;">
				-> Developed for the intranet system of Anurag Group of Institutions using PHP, HTML 5.0, CSS 3.0 and JS.<br/>
-> Worked with backend of the application, integrated various applications using JSP to the intranet.<br/>
-> XAMPP was utilized throughout the lifecycle of the project along with AJAX & PHP technology<br/>
-> Developed a smart form with AJAX and jQuery which collects details automatically as the data is entered.<br/>
-> Worked with the webcam API for PHP.
				</p>
			</div>
		</div>

		<div class="demo-cards demo-cards--step4">
			<div class="head">
				<div class="number-box">
					<span>04</span>
				</div>
				<h2><span class="small">Aug 2018 - Oct 2018</span> Admission System</h2>
			</div>
			<div class="body">
			<p style = "text-align:left;color : blue;">Technology utilized: PHP, AJAX, MySQL, CSS, JS, HTML, JQuery,XAMPP</p>
				<p style = "text-align:left;">-> Innovated and Implemented by using AJAX & PHP technology <br/>
-> Developed a smart form with AJAX and JQuery which collects details automatically as the data is entered.<br/>
-> Worked with the webcam API for PHP
-> Designed biometric verification system for faculty to verify the student documents and speed up the admission problem <br/>
-> Uploaded the website on the intranet server of Anurag Group and a component of fee payment was designed in the upcoming version.</p>
			</div>
		</div>

		<div class="demo-cards demo-cards--step5">
			<div class="head">
				<div class="number-box">
					<span>05</span>
				</div>
				<h2><span class="small">Feb 2019 - Apr 2019</span> Global Student Forum 2019</h2>
			</div>
			<div class="body">
			<p style = "text-align:left;color : blue;">Technology utilized: PHP, AJAX, MySQL, CSS, JS, HTML, JQuery,XAMPP</p>
				<p style = "text-align:left;">-> Built a registration website for the event called Global Student Forum and the website was designed for IFEES, IUCEE and SCALE India.
-> Used Ajax to design smart forms, JQuery and Php was used to implement proper backend code which is secure, and this website was launched on the global scale and had functioned successfully.
-> Used MySQL server and XAMPP server in the process of development of this project.</p>
			</div>
		</div>
    
	</div>
</section>
</div>
</div>
</div>
<div class = "section1">
<div id = "Contact"><h1 style="text-align:center;color:#0099cc;font-size: 3rem;">Contact</h1>
</div>
<div class = "Tabular">
<div class = "Formcon">
<form action = "mail" method = "POST">
<label for="fname">Full Name</label>
    <input type="text" id="name" name="name" placeholder="Your name..">

    <label for="Subject">Subject</label>
    <input type="text" id="subject" name="subject" placeholder="Subject..">
	
	<label for="email">Email-ID</label>
    <input type="text" id="email" name="email" placeholder="Your Email Address..">
	
	<label for="email">Message to be delivered</label>
	<textarea id = "body" name = "body" placeholder = "Type the Message here.."></textarea>
	
	<input type="submit" value="Submit">

</form>
</div>
<div class = "Formcon"> 
<table id = "customers">
<tr><th>Name:</th><td>Sai Gautham Pamidipati</td></tr>
<tr><th>Phone#:</th><td>+1-(206)-499-0729</td></tr>
<tr><th>Email-ID:</th><td>sg.pamidipati@gmail.com</td></tr>
<tr><th>Address:</th><td>1578 Burns Ct Fairborn, OH 45324</td></tr>
<tr><th>LinkedIn:</th><td>https://www.linkedin.com/in/saigauthampamidipati/</td></tr>
</table>
</div>
</div>
</div>
<br/>
<div class = "Footer">
<center><p>@Copyrights 2021 The Website is Designed and Developed by <a style = "color: white;" href="https://www.linkedin.com/in/saigauthampamidipati/">SAI GAUTHAM PAMIDIPATI</a>.</p></center>
</div>
</div>
</div>

</body>
</html>