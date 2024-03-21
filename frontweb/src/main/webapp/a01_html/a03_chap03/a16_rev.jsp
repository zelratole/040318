<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 
	a16_rev.jsp?chinaFoods=짜장면&chinaFoods=탕수육	
	 -->
	<h2>선택한 값</h2>
	<h3>선택1:${paramValues.chinaFoods[0]}</h3>
	<h3>선택2:${paramValues.chinaFoods[1]}</h3>
	<h3>선택3:${paramValues.chinaFoods[2]}</h3>
</body>
</html>

