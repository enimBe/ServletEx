<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" 
		import = "java.text.SimpleDateFormat" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Current Time</title>
</head>
<body>
	<%

	Date date_now = new Date(System.currentTimeMillis());
	
		SimpleDateFormat fourteen_format = new SimpleDateFormat("HHmmss");
		
		String timeFormat = (String)fourteen_format.format(date_now);
		 
	%>
	
	<%!
		public String getHour(String timeFormat) {
			String hour = timeFormat.substring(0, 2);
			return hour;
		}
		public String getMinute(String timeFormat) {
			String minute = timeFormat.substring(2, 4);
			return minute;
		}
		public String getSecond(String timeFormat) {
			String second = timeFormat.substring(4, 6);
			return second;
		}
	
	%>
	
		<h1>현재 시간 <%= getHour(timeFormat) %>시 <%= getMinute(timeFormat) %>분 <%= getSecond(timeFormat) %>초 </h1>
	
</body>
</html>