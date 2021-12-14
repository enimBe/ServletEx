<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" 
		import = "java.text.SimpleDateFormat" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Current Date</title>
</head>
<body>

	<%
		Date date_now = new Date(System.currentTimeMillis());
	
		SimpleDateFormat fourteen_format = new SimpleDateFormat("yyyyMMddHHmmss");
		
		String dateFormat = (String)fourteen_format.format(date_now);
	
		 
	%>
	
	<%! 

		public String getYear(String dateFormat) {
			String year = dateFormat.substring(0, 4);
			return year;	
		}
		public String getMonth(String dateFormat) {
			String month = dateFormat.substring(4, 6);
			return month;	
		}
		public String getDate(String dateFormat) {
			String date = dateFormat.substring(6, 8);
			return date;	
		}
	
	%>
	
	<h1>오늘 날짜 <%= getYear(dateFormat) %>년 <%= getMonth(dateFormat) %>월 <%= getDate(dateFormat) %>일 </h1>

	
</body>
</html>