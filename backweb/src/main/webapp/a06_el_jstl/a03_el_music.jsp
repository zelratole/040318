<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="backweb.vo.*"   
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/backweb/a00_com/a01_common.css" >
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.7.1.js" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function(){
		//$("h2").text("시작");
		
	})
</script>
</head>
<body>
<%--
# 제목
--%>
<%
pageContext.setAttribute("title", "Ditto");
session.setAttribute("singer", "New Jeans");
application.setAttribute("year", 2022);
%>
	<h2>페이지단위 el 태그 호출</h2>
	<h3>타이틀:${title}</h3>
	<h3>가수:${singer}</h3>
	<h3>발매연동:${year}</h3>
	<a href="a04_el_scope.jsp">세션 범위 호출</a>

	
</body>
</html>