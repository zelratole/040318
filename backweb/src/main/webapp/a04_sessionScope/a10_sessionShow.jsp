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
<h2>session 범위 데이터 확인</h2>
<h3><%=pageContext.getAttribute("name")%></h3>
<h3><%=request.getAttribute("age")%></h3>
<h3><%=session.getAttribute("loc")%></h3>
</body>
</html>