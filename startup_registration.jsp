<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Company Registration</title>
    <style>
    .pic {
  left: 15%;
  margin-top:10px;
}
    p1 {
  font-family: 'Space Mono', monospace;
  font-size: clamp(2rem, 1vw, 2rem);
  color: white;
  white-space: nowrap;
  padding: 0rem clamp(1rem, 2vw, 3rem);
  border-radius: clamp(0.4rem, 0.75vw, 1rem);
  margin: 0rem;
  position: absolute;
  left: 5%;
  top: 5%;
  translate: -50% -50%;
  z-index: 3;
}
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-color: white;
            font-family: 'Gudea', Helvetica, sans-serif;
             margin-right:750px;
        }
        .registration-form {
            background-color: #f4f4f4;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>

 <p1>OneVerse</p1>
<input type="checkbox" id="active">
<label for="active" class="menu-btn"><span></span></label>
    <label for="active" class="close"></label>
    <div class="wrapper">
      <ul>
<li><a href="landingpage.jsp">Home</a></li>
<li><a href="login.jsp">Login</a></li>
</ul>
</div>
    <div class="registration-form">
        <h1>Company Registration</h1>
        <form action="CompanyRegistrationServlet" method="post">
           <label for="companyName">Company Name:</label>
        <input type="text" id="companyName" name="companyName" required><br>
        
        <label for="numEmployees">Number of Employees:</label>
        <input type="number" id="numEmployees" name="numEmployees" required><br>
        
        <label for="shareStructure">Share Structure:</label>
        <input type="text" id="shareStructure" name="shareStructure" required><br>
        
        <label for="revenue">Revenue in Last Financial Year:</label>
        <input type="text" id="revenue" name="revenue" required><br>
        
        <label for="numOpenVacancies">Number of Open Vacancies:</label>
        <input type="number" id="numOpenVacancies" name="numOpenVacancies" required><br>
        
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required><br>
        
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required><br>
        
            <input type="submit" value="submit" class="button">

        </form>
    </div>
</body>
<style>
body{

 background-image:url("Screenshot 2023-08-26 014838.png")
 }
 .wrapper{
  position: fixed;
  top: 0;
  /left: -100%;/
  right: -100%;
  height: 100%;
  width: 100%;
  background: #000;
  /background: linear-gradient(90deg, #f92c78, #4114a1);/
  /* background: linear-gradient(375deg, #1cc7d0, #2ede98); */
 /* background: linear-gradient(-45deg, #e3eefe 0%, #efddfb 100%);*/
  transition: all 0.6s ease-in-out;
}
#active:checked ~ .wrapper{
  /left: 0;/
  right:0;
}
.menu-btn{
  position: absolute;
  z-index: 2;
  right: 20px;
  /*left: 20px; */
  top: 20px;
  height: 50px;
  width: 50px;
  text-align: center;
  line-height: 50px;
  border-radius: 50%;
  font-size: 20px;
  cursor: pointer;
  /color: #fff;/
  /background: linear-gradient(90deg, #f92c78, #4114a1);/
  /* background: linear-gradient(375deg, #1cc7d0, #2ede98); */
 /* background: linear-gradient(-45deg, #e3eefe 0%, #efddfb 100%); */
  transition: all 0.3s ease-in-out;
}
.menu-btn span,
.menu-btn:before,
.menu-btn:after{
	content: "";
	position: absolute;
	top: calc(50% - 1px);
	left: 30%;
	width: 40%;
	border-bottom: 2px solid #435669;
	transition: transform .6s cubic-bezier(0.215, 0.61, 0.355, 1);
}
.menu-btn:before{
  transform: translateY(-8px);
}
.menu-btn:after{
  transform: translateY(8px);
}


.close {
	z-index: 1;
	width: 100%;
	height: 100%;
	pointer-events: none;
	transition: background .6s;
}

/* closing animation */
#active:checked + .menu-btn span {
	transform: scaleX(0);
}
#active:checked + .menu-btn:before {
	transform: rotate(45deg);
  border-color: #fff;
}
#active:checked + .menu-btn:after {
	transform: rotate(-45deg);
  border-color: #fff;
}
.wrapper ul{
  position: absolute;
  top: 60%;
  left: 50%;
  height: 90%;
  transform: translate(-50%, -50%);
  list-style: none;
  text-align: center;
}
.wrapper ul li{
  height: 10%;
  margin: 15px 0;
}
.wrapper ul li a{
  text-decoration: none;
  font-size: 30px;
  font-weight: 500;
  padding: 5px 30px;
  color: #ffff;
  border-radius: 50px;
  position: absolute;
  line-height: 100px;
  margin: 5px 30px;
  opacity: 0;
  transition: all 0.3s ease;
  transition: transform .6s cubic-bezier(0.215, 0.61, 0.355, 1);
}
.wrapper ul li a:after{
  position: absolute;
  content: "";
  background: #ffff;
   /background: linear-gradient(#14ffe9, #ffeb3b, #ff00e0);/
  /background: linear-gradient(375deg, #1cc7d0, #2ede98);/
  width: 100%;
  height: 100%;
  left: 0;
  top: 0;
  
  transform: scaleY(0);
  z-index: -1;
  transition: transform 0.3s ease;
}
.wrapper ul li a:hover:after{
  transform: scaleY(0.1);
}
.wrapper ul li a:hover{
  color: #1a73e8;
}
input[type="checkbox"]{
  display: none;
}
.content{
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  z-index: -1;
  text-align: center;
  width: 100%;
  color: #202020;
}
.content .title{
  font-size: 40px;
  font-weight: 700;
}
.content p{
  font-size: 30px;
  font-weight: 600;
}

#active:checked ~ .wrapper ul li a{
  opacity: 1;
}
.wrapper ul li a{
  transition: opacity 1.2s, transform 1.2s cubic-bezier(0.215, 0.61, 0.355, 1);
  transform: translateX(100px);
}
#active:checked ~ .wrapper ul li a{
	transform: none;
	transition-timing-function: ease, cubic-bezier(.1,1.3,.3,1); /* easeOutBackを緩めた感じ */
   transition-delay: .6s;
  transform: translateX(-100px);
}
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Lato', sans-serif;
  font-family: 'Oswald', sans-serif;
}
.wrapper{
  position: fixed;
  top: 0;
  left: 0;
  height: 100%;
  width: 100%;
  background: #000;
  clip-path: circle(25px at calc(100% - 45px) 45px);
  transition: all 0.3s ease-in-out;
}
#active:checked ~ .wrapper{
  clip-path: circle(75%);
}
.menu-btn{
  position: absolute;
  z-index: 2;
  right: 20px;
  /* left: 20px; */
  top: 20px;
  height: 50px;
  width: 50px;
  text-align: center;
  line-height: 50px;
  border-radius: 50%;
  font-size: 20px;
  color: #fff;
  cursor: pointer;
  background: #000;
  transition: all 0.3s ease-in-out;
}
#active:checked ~ .menu-btn{
  color: #fff;
}
#active:checked ~ .menu-btn i:before{
  content: "\f00d";
}
.wrapper ul{
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  list-style: none;
  text-align: center;
}
.wrapper ul li{
  margin: 15px 0;
}
.wrapper ul li a{
  color: none;
  text-decoration: none;
  font-size: 30px;
  font-weight: 500;
  padding: 5px 30px;
  color: #fff;
  border-radius: 50px;
  background: #000;
  position: relative;
  line-height: 50px;
  transition: all 0.3s ease;
}
.wrapper ul li a:after{
  position: absolute;
  content: "";
  background: #fff;
   background: linear-gradient(#14ffe9, #ffeb3b, #ff00e0);
  /*background: linear-gradient(375deg, #1cc7d0, #2ede98);*/
  width: 104%;
  height: 110%;
  left: -2%;
  top: -5%; /* if the font is 'Oswald'*/
  border-radius: 50px;
  transform: scaleY(0);
  z-index: -1;
  animation: rotate 1.5s linear infinite;
  transition: transform 0.3s ease;
}
.wrapper ul li a:hover:after{
  transform: scaleY(1);
}
.wrapper ul li a:hover{
  color: #fff;
}
input[type="checkbox"]{
  display: none;
}
.content{
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  z-index: -1;
  text-align: center;
  width: 100%;
  color: #202020;
}
.content .title{
  font-size: 40px;
  font-weight: 700;
}
.content p{
  font-size: 35px;
  font-weight: 600;
}

@keyframes rotate {
  0%{
    filter: hue-rotate(0deg);
  }
  100%{
    filter: hue-rotate(360deg);
  }
}
.button {
    background-color: #435669;
    color: white; /* Text color */
    padding: 10px 20px; /* Adjust padding as needed */
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-size: 16px;
    transition: background-color 0.3s ease-in-out;
    margin-left:110px;
    margin-top:25px;

 
 </style>
</html>
