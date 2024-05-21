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
# 변수만을 확인 했지만, 여러가지 화면이나, js변수/함수, css 등을 공유할 수 있다.
(action태그와 공통점)  
--%>

	<%@ include file="a07_subMenu.jsp" %>
	
	<h2>포함할 페이지</h2>
	<h3>아이디:<%=id %></h3>
	<h3>포인트:<%=point %></h3>
	
</body>
</html>