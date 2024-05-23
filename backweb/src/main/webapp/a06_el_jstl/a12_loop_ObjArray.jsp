<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="backweb.vo.*"   
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<fmt:requestEncoding value="utf-8"/>       
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${path}/a00_com/a01_common.css" >
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
# 객체배열
1. 객체단위로 List형 배열을 처리하는 것을 말한다..
2. 실무적으로 DB에서 가져오는 데이터를 이러한 형태의 List형 객체 배열이다.
3. 처리순서
	1) list형의 단위 객체 만들기
		데이터베이스의 하나의 단위 데이터에 맞는 클래스 선언
	2) 객체형으로 request.setAttribute()로 설정..
	3) forEach구문으로 처리..
	
--%>
	<h2></h2>

	
</body>
</html>