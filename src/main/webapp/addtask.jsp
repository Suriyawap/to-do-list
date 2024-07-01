<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style >
<%@include file="form.css" %> 
</style>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" >
<link href="https://fonts.googleapis.com/css2?family=Cinzel:wght@400..900&family=Cormorant+Garamond:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap" rel="stylesheet">
</head>
<body>
<%@include file="template.html" %>
 <div class="login-container">
        <h2>AddTask</h2>
   <form action="addtask" method="post">
   <label>TaskId:</label>
   <input type="number" name="taskid"><br>
   <label>Tasktitle:</label>
   <input type="text" name="tasktitle"><br>
   <label>TaskDescription:</label>
   <input type="text" name="taskdescription"><br>
   <label>TaskPriority:</label><br>
  <label>
          <input type="radio" name="taskpriority" value="low" class="input" > Low
        </label><br>
   <label>
          <input type="radio" name="taskpriority" value="high" class="input"> High
        </label><br>
   <label>TaskDueDate:</label>
   <input type="date" name="taskduedate"><br>
   <button type="submit">AddTask</button>

    </form>
    </div>
</body>
</html>