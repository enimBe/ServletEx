<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Post Method 1</title>
</head>
<body>

	<form method="post" action="test01_1.jsp">
		<h1>사칙 연산</h1>
		<input type="text" name="number1">
		<select name="operator">
			<option>+</option>
			<option>-</option>
			<option>X</option>
			<option>/</option>
		</select>
		<input type="text" name="number2">
		<button>계산</button>
		 
	</form>
</body>
</html>