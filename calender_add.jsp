<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <link rel="stylesheet" href="http://code.jquery.com/ui/1.9.1/themes/base/jquery-ui.css" />
     <script src="http://code.jquery.com/jquery-1.8.2.js"></script>
     <script src="http://code.jquery.com/ui/1.9.1/jquery-ui.js"></script>
     <link rel="stylesheet" href="/resources/demos/style.css" />
     <script>    $(function() {        $( "#datepicker" ).datepicker();    });    </script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>캘린더 추가</title>
</head>
<body>
<% if (session.getAttribute("userId") == null) 
{ %>
  로그인을 하셔야 내용을 보실 수 있습니다.
  <p>
    <a href="calender_log_in.jsp">로그인</a>
   </p>
<% } 

else 
{ %>
  안녕하세요. <b><%=session.getAttribute("userName") %></b>님<br>
  <label><input type="button" id ="calender" value="내 캘린더 목록"></label>
	<div id="datepicker"></div>
	<a href="calender_log_in.jsp"><input type = "button" value = "logout"></a>    
<% } %>

</body>
</html>