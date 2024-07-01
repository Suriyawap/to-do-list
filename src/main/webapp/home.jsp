<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" >
<link href="https://fonts.googleapis.com/css2?family=Cinzel:wght@400..900&family=Cormorant+Garamond:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap" rel="stylesheet">
<meta charset="UTF-8">
<title>todolist</title>
<style>
body{
	 background-image:url("https://suriyax1.my.canva.site/images/ea3650bfdf42a8c3412c086b4997aa0e.jpg");
     background-repeat:no-repeat;
     background-size:cover;
     font-family: "Cinzel", serif;
  
}
button{
   
	height:50px;
	width:150px; 
	border-radius: 20px;
	margin-left: 20px;
	margin-top: 40px;
	 background: linear-gradient(#3D1E54, #1F2E52) padding-box,
              linear-gradient(145deg,#e81cff, #40c9ff) border-box;
  border: 2px solid transparent;
	border-radius: 20px;
	backdrop-filter:blur(30px);
}
#main{
	position:absolute;
	top:450px;
	padding:20px;
}

a{
 font-family: "Cinzel", serif;
	font-size: large;
	
	font-optical-sizing: auto;
  font-weight: 400;
  font-style: normal;
  text-decoration: none;
  color: white;
}
button:hover>a{
  color:silver;
 
}



.cinzel {
  font-family: "Cinzel", serif;
  font-optical-sizing: auto;
  font-weight: 400;
  font-style: normal;
  font-size: 64px;
	color:white;
	height:317px;
	width:578px;
	padding: 20px
}
#img1{
height: 350px;
	width: 150px;
	position:absolute;
	top:100px;
	right:150px;
}
h3{
  color:linear-gradient(90deg, #94c0fc,#3c79f5);
}
#img2{
height: 350px;
	width: 350px;
	position:absolute;
	top:150px;
	right:150px;
}
}
</style>
</head>
<body>
  
   <h3 class="cinzel">Your to-do List The Roadmap To Your Dreams</h3>
   <img id="img1" alt="" src="https://suriyax1.my.canva.site/videos/031ef585f60d6fbd5cff2cf5c53f1656.gif">
   <img id="img2"  alt="" src="https://suriyax1.my.canva.site/videos/3200ec4516d57298a960d3678bd5dbcd.gif">
   <div id="main">
  <button><a href="login.jsp">login</a></button>
  <button> <a href="signup.jsp">signup</a></button>
   </div>
</body>
</html>