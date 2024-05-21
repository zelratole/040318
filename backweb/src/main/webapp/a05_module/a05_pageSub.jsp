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
	String name="홍길동";
	int age = 25;
%>
	<h2>포함될 페이지</h2>
<h3>이름:<%=name %></h3>
<h3>나이:<%=age %></h3>

	
</body>
</html>