<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>signup</title>
<style >
a:hover {
	text-decoration: underline;
}
<%@include file="form.css" %> 
</style>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" >
<link href="https://fonts.googleapis.com/css2?family=Cinzel:wght@400..900&family=Cormorant+Garamond:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap" rel="stylesheet">
</head>
<body>

    <div class="login-container">
        <h2>Signup</h2>
    <form action="signup" method="post" enctype="multipart/form-data">
         <label>Id:</label>
         <input type="number" name="userid"><br>
         <label> username:</label>
         <input type="text" name="username"><br>
         <label>useremail:</label>
         <input type="text" name="useremail"><br>
         <label>usercontact:</label>
         <input type="number" name="usercontact"><br>
        <label> userpassword:</label>
        <input type="password" name="userpassword"><br>
        <label> userimage:</label>
        <input type="file" name="uimage"><br>
        <button type="submit">Signup</button>
        <h3>If you  Have Account? <a href="login.jsp">LOGIN</a></h3>
    </form>
     </div>
</body>
</html>