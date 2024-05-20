<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/backweb/a00_com/a01_common.css" >
<title>Insert title here</title>
<script type="text/javascript">
	alert("로그 아웃 되었습니다!\n로그인 페이지 이동");
</script>
</head>
<body>
<%
// 로그 아웃시, 세션 전체 삭제 및 로그인 페이지 이동..
session.invalidate();
response.sendRedirect("0517_1_login.jsp");
%>


</body>
</html>