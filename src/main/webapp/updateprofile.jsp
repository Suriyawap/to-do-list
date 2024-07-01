<%@page import="dtoclass.userdto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
<%@include file="form.css" %>
</style>
</head>
<body>
<%@include file="template.html" %>
<%HttpSession ses = request.getSession(); %>
<%userdto u1 = (userdto) ses.getAttribute("user"); %>
   <div class="login-container">
        <h2>UpdateProfile</h2>
   <form action="uprofile" method="post">
   <label>UserId:</label>
   <input type="number" name="uid" value="<%=u1.getUserId()  %>" hidden="true"><br>
   
   <label>UserName:</label>
   <input type="text" name="uname" value="<%=u1.getUsername() %>"><br>
   
    <label>UserPassword:</label>
   <input type="password" name="upwd" value="<%=u1.getUserpassword() %>"><br>
   
   <label>UserEmail:</label>
   <input type="text" name="uemail" value="<%=u1.getUserEmail()  %>"><br>
 
   <label>UserContact:</label>
   <input type="number" name="ucontact" value="<%=u1.getUserContact() %>"><br>
   
   <button type="submit">UPDATE</button>

    </form>
    </div>
</body>
</html>