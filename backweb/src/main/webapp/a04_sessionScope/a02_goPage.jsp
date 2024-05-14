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
	<h2>이동된 페이지</h2>
	<h3>페이지 scope 데이터:<%=pageContext.getAttribute("str01")%></h3>
	<h3>session scope 데이터:<%=session.getAttribute("str02")%></h3>	
	<h3>application scope 데이터:<%=application.getAttribute("str03")%></h3>
	
</body>
</html>