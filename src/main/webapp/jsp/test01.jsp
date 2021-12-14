<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP test</title>
</head>
<body>

	<%
		int[] scores = {80, 90, 100, 95, 80};
	
		int score = 0;
		for(int i = 0; i < scores.length; i++){
			score += scores[i];
		}
		
		double average = score / (double)scores.length;		
	%>
	
	<h1>점수 평균: <%= average %></h1>
	
	
	
	<%
		List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
	
		int result= 0;
		for(String check:scoreList) {
			if(check.equals("O")) {
				result += 10;
			}
		}
		
	%>
	
	<h1>채점 결과: <%= result %></h1>
	
	<%!
		public int allSum(int number) {
			
			int score = 0;
			for(int i = 1; i <= number; i++) {
				score += i;
			}
			
			return score;
		}
	%>
	
	<h1>1에서 50까지의 합은 <%=allSum(50)%></h1>

	<%
		String birthday = "20010820";
		int age = 2021 - Integer.parseInt(birthday.substring(0,4)) + 1;
	%>
	
	<h1><%= birthday %>의 나이는 <%= age %>살 입니다.</h1>

</body>
</html>
































