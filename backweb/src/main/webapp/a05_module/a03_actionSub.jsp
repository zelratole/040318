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
//request.setCharacterEncoding("utf-8");
%>

	<h2>포함된 페이지의 변수(action 태그일 때)</h2>
	<%--
	<h3>단순변수 호출:<%=name%></h3> 
		에러발생(에러발생되는 것 확인 하고, 주석처리할 것)
	 --%>
	<h3>넘겨온 요청값:<%=request.getParameter("reqName")%></h3>
	
</body>
</html>