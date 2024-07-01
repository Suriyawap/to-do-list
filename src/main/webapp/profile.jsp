<%@page import="java.util.Base64"%>
<%@page import="dtoclass.userdto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
 img{
 border-radius: 15px;
 }
        <%@include file="form.css" %> 
</style>
</head>
<body>
<%@include file="template.html" %>
<%HttpSession ses = request.getSession(); %>
<%userdto u1 = (userdto) ses.getAttribute("user"); %>
 
   <div class="login-container">
    <h2 style="text-decoration: underline;">Profile</h2>
   <% String img=new String(Base64.getEncoder().encode(u1.getUserImage())); %>
   <img alt="" height="250px" width="250px" src="data:image/jpeg;base64,<%=img %>">
  <form action="">
  <label>USERID:<%=u1.getUserId() %></label><br>
  <label>USER NAME:<%=u1.getUsername().toUpperCase() %></label><br>
  <label>USER EMAIL:<%=u1.getUserEmail().toUpperCase() %></label><br>
  <label>USER CONTACT:<%=u1.getUserContact() %></label><br>
  </form>
  </div>
</body>
</html>