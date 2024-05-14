<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/backweb/a00_com/a01_common.css">
<title>Insert title here</title>
</head>
<body>
	<h1>요청값을 받는 페이지</h1>
	<h2><%=request.getParameter("memberId")%></h2>
	<h2><%=request.getParameter("mname")%></h2>
	<h2><%=request.getParameter("mpoint")%></h2>
</body>
</html>