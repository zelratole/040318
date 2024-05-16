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
	<h2>페이지에서 데이터 확인(session 범위 페이지)</h2>
	<h3><%=pageContext.getAttribute("scope01")%></h3> 
	<h3><%=request.getAttribute("scope02")%></h3> 
	<h3><%=session.getAttribute("scope03")%></h3> 	
</body>
</html>