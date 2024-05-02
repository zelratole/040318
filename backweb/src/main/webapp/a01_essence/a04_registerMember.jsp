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

String name = request.getParameter("name");
%>
	<h2>입력한 회원명:<%=name%></h2>
</body>
</html>