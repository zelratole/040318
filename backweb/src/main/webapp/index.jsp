<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	// 자바 코드를 넣을 수 있는 범위
	String name = "홍길동";
	int age = 25;
	String loc = "수원";
	%>
	<h2>jsp 시작</h2>
	<h2>이름:<%=name%></h2>
	<h2>나이:<%=age%></h2>
	<h2>사는곳:<%=loc%></h2>
	
	<!-- 자바 코드 출력.. -->
</body>
</html>