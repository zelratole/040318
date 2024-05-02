<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>구매한 정보1</h2>
	<%
	String name = request.getParameter("name");
	String price = request.getParameter("price");
	%>
	<h3>물건명:<%=name%></h3>
	<h3>가격:<%=price%></h3>
	<h2>구매 정보2</h2>
	<h3>물건명:${param.name}</h3>
	<h3>가격:${param.price}</h3>
</body>
</html>