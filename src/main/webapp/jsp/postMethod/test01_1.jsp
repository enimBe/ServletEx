<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Result</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		int num1 = Integer.parseInt(request.getParameter("number1"));
		int num2 = Integer.parseInt(request.getParameter("number2"));
		String operator = request.getParameter("operator");
		
		double result;
		if(operator.equals("+")) {
			result = num1 + num2;
		}else if(operator.equals("-")) {
			result = num1 - num2;
		}else if(operator.equals("*")) {
			result = num1 * num2;
		}else {
			result = num1 / num2;
		}
		
	%>
	
	계산 결과 <br>
	<%= num1 %><%= operator %><%= num2 %>=<%= result %>
	
	
</body>
</html>