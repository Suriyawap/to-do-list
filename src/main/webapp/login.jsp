<%@page import="javax.swing.plaf.metal.MetalBorders.Flush3DBorder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style >
<%@include file="form.css" %> 
a:hover {
	text-decoration: underline;
}
</style>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" >
<link href="https://fonts.googleapis.com/css2?family=Cinzel:wght@400..900&family=Cormorant+Garamond:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap" rel="stylesheet">
</head>
<body>

    <div class="login-container">
        <h2>Login</h2>
 <form action="login" method="post">
       <label for="email"> Email:</label>
   <input type="email" id="email" name="email"><br>
   
    <label for="password"> password:</label>
    <input type="password" id="password" name="password"><br>
    
     <button type="submit">Login</button><br>
     <h3>If you Don't Have Account? <a href="signup.jsp">SIGNUP</a></h3>
     <%if(request.getAttribute("message")!=null ){ %>
        <h3><%=request.getAttribute("message") %></h3>
     <%} %>
       
    </form>
    </div>
</body>
</html>