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
<h3>다음 페이지에 확인</h3>
<h3>페이지:<%=pageContext.getAttribute("name")%></h3>
<h3>세션:<%=session.getAttribute("age")%></h3>
<h3>어플리케이션:<%=application.getAttribute("loc")%></h3>

</body>
</html>