<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/backweb/a00_com/a01_common.css" >
<title>Insert title here</title>
</head>
<body>
	<h2>다른 페이지에서 요청값 받기(a09_requestData.jsp)</h2>
	<h3><%=request.getParameter("name")%></h3>
	<h3><%=request.getParameter("age")%></h3>
	<h3><%=request.getParameter("pname")%></h3>
	<h3><%=request.getParameter("price")%></h3>
</body>
</html>