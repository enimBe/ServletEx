<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" 
		import = "java.text.SimpleDateFormat" %>   
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>날짜, 시간 링크</h1>
	<a>현재 시간 확인 <%= request.getParameter("time") %> </a>
	<a>현재 날짜 확인 <%= request.getParameter("date") %> </a>
	
	<%
		Date date_now = new Date(System.currentTimeMillis());
	%>
	
	<h1> <%= date_now %> </h1>
</body>
</html>