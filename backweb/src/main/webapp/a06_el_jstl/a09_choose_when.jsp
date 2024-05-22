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
# 여러가지 경우에 따른 처리  choose when 구문
1. jstl에서는 if else문이 없고 대신 choose when 구문으로 처리된다.
--%>
	<h2>오늘의 운세..^^~</h2>
	<c:set var="ranNum" value="${Math.floor(Math.random()*10+1)}"/>
	<h3>임의의수(1~10):${ranNum}</h3>
	<c:choose>
		<c:when test="${ranNum>=6}"> <%-- 6~10 --%>
			<h3>오늘은 좋은 일이 생길 겁니다!</h3>
		</c:when>
		<c:when test="${ranNum>=3}"> <%-- 3~5 --%>
			<h3>오늘은 평범한 하루입니다!</h3>
		</c:when>		
		<c:otherwise><%-- 1~2 --%>
			<h3>오늘은 조심해야 할 일이 있습니다.!</h3>
		</c:otherwise>
	</c:choose>
<%--
ex) 현재 시간을 입력해서 요청값으로 전달하게 한 후,
해당 시간에 따라 6~11 아침인사말, 13~17 오후인사말,  18~20 저녁인사말  그외 좋은 밤입니다.

 --%>	
	<h3>시간별 인사말</h3>
	<form>
		현재시간입력:<input type="number" name="hour" size="2"/>시<br>
		<input type="submit"/>
	</form> 
	<h4>입력한 시간:${param.hour}</h4>
	
	
	
	
</body>
</html>