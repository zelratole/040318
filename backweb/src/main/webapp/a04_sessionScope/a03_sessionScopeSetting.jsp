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
<h2>session scope설정</h2>
<%
pageContext.setAttribute("name", "홍길동");
session.setAttribute("age", 25);
application.setAttribute("loc", "수원");

%>
<h3>페이지:<%=pageContext.getAttribute("name")%></h3>
<h3>세션:<%=session.getAttribute("age")%></h3>
<h3>어플리케이션:<%=application.getAttribute("loc")%></h3>
<a href="a04_sessionShow.jsp">페이지 이동</a>
</body>
</html>