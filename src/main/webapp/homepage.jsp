<%@page import="java.util.Base64"%>
<%@page import="java.util.List"%>
<%@page import="daoclass.Dao"%>
<%@page import="dtoclass.taskdto"%>
<%@page import="dtoclass.userdto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" >
<link href="https://fonts.googleapis.com/css2?family=Cinzel:wght@400..900&family=Cormorant+Garamond:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap" rel="stylesheet">
<style >
table{
	width: 70%;
	border-collapse: collapse;
	background-color:transparent;
    backdrop-filter:blur(30px);
    border-radius: 20px;
	 background: linear-gradient(#3D1E54, #1F2E52) padding-box,
              linear-gradient(145deg,#e81cff, #40c9ff) border-box;
  border: 2px solid transparent;
	backdrop-filter:blur(30px);   
}
td,th{
 border-radius: 1px;
	 background: linear-gradient(#3D1E54, #1F2E52) padding-box,
              linear-gradient(145deg,#e81cff, #40c9ff) border-box;
  border: 2px solid transparent;
	backdrop-filter:blur(30px);
	text-align: center;
	font-size: large;
	 padding: 10px;
	font-family: "Cinzel", serif;
  font-optical-sizing: auto;
  font-weight: 400;
  font-style: normal;
  color: white;
	 
}
body{
display: flex;
flex-direction: column;
align-items: center;
 background-image:url("https://suriyax1.my.canva.site/images/ea3650bfdf42a8c3412c086b4997aa0e.jpg");
     background-repeat:no-repeat;
     background-size:100%;

}
a{
	font-size: large;
	text-decoration: none;
	font-family: "Cinzel", serif;
  font-optical-sizing: auto;
  font-weight: 400;
  font-style: normal;
}
a:any-link{
  color:white;
}
a:visited{
  color: white;
  text-decoration: none;
}
button,.tab{
   
	height:50px;
	width:150px; 
	border-radius: 20px;
	 background: linear-gradient(#3D1E54, #1F2E52) padding-box,
              linear-gradient(145deg,#e81cff, #40c9ff) border-box;
  border: 2px solid transparent;
	backdrop-filter:blur(30px);
}
button:hover>a{
  color: #6C9BFF;
}
h1,h3{
color: white;
font-family: "Cinzel", serif;
  font-optical-sizing: auto;
  font-weight: 400;
  font-style: normal;
}
nav{

width: 100%;
display: flex;
justify-content: flex-start;
gap:20px;
}
img{
border-radius: 50%;
}

</style>
</head>
<body>
<%@include file="template.html" %>
<%HttpSession ses = request.getSession(); %>
<%userdto u1 = (userdto) ses.getAttribute("user"); %>


<h1 align="center" >TASK TABLE</h1>
   <% Dao dao=new Dao();
     List<taskdto> tasks=dao.findallbyuserid(u1.getUserId());  %>
   <table border="2px" align="center">
   <thead>
   <th>Id</th>
    <th>Title</th>
     <th>Description</th>
      <th>Priority</th>
       <th>Duedate</th>
        <th>Delete</th>
         <th>Update</th>
   </thead>
   <% for(taskdto t:tasks){ %>
   <tbody>
     <tr>
     <td><%=t.getTaskId() %></td>
     <td><%=t.getTasktitle() %></td>
     <td><%=t.getTaskDescription() %></td>
     <td><%=t.getTaskPriority() %></td>
     <td><%=t.getTaskDueDate() %></td>
     <td><button class="tab"><a href="delete1?id=<%=t.getTaskId() %>">Delete</a></button></td>
     <td><button class="tab"><a href="edit?id=<%=t.getTaskId() %>">Update</a></button></td>
     </tr>
   </tbody>
   <%} %>
   </table><br>
   
</body>
</html>