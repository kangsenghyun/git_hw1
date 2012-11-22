<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" buffer="8kb"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
</head>
<body>
  <%
  if (request.getMethod() == "POST") 
  {
	  String id = request.getParameter("id");
	  String pwd = request.getParameter("pwd");
	  
	  if (id == null || pwd == null || id.length() == 0 || pwd.length() == 0) {
		  %>
		   <div class="error">아이디와 비밀번호를 입력하세요.</div>
		  <%
	  } 
	  else if (id.equals("abcde") && pwd.equals("12345")) 
	  {
		  // 로그인 성공
	      session.setAttribute("userId", "abcde");
	      session.setAttribute("userName", "오용석");	
	      response.sendRedirect("calender_add.jsp");   
	  } 
	  else 
	  {
		  %>
		   <div class="error">아이디나 비밀번호가 잘못되었습니다.</div>
		  <%
	  }
  }
  %>
	<div>
	<form method="POST">
	<b>캘린더 접속</b><br>
	ID : <input type ="text" name  ="id"><br>
	PASSWORD :  <input type  ="password" name ="pwd"><br>
	<input type="submit" value="login">
	</form>
	</div>
	<div>
	<a href = "ex1.jsp"><input type="submit" value = "register"></a>
	</form>
	</div>
</body>
</html>