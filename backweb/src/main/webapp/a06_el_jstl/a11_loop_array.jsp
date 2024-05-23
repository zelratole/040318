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
# 배열형 데이터에 대한 forEach 구문 처리
1. 단순 배열
2. 객체형 배열

--%>
<%
// 요청 범위로 선언.
request.setAttribute("array01", new String[]{"사과","바나나","딸기"});
%>
	<h2>단순 배열형 데이터 처리</h2>
	<%-- varStatus로 선언한 sts에 count는 1부터 카운트업 출력 --%>
	<c:forEach var="fruit" items="${array01}" varStatus="sts">
		<h3>${sts.count} ) ${fruit}</h3>
	</c:forEach>
<%--
ex1) 과일의 가격 2000,3000,5000을 선언하고 출력하세요...
-----------------------------------------------
ex2) 판매하는 음식 배열 짜장면  짬뽕  탕수육  라조기 를 배열로 선언하고,
	2X2 테이블에 출력해보자..    
 --%>
 <%
 request.setAttribute("array02", new int[]{2000,3000,5000});
 %>
	<h2>과일 가격 리스트 </h2>
	<c:forEach var="fruitPrice" items="${array02}" varStatus="sts">
		<h3>[${sts.count}]번째 과일의 가격은 ${fruitPrice}원!!</h3>
	</c:forEach>
<%
request.setAttribute("foods", new String[]{"짜장면","짬뽕","탕수육","라조기"});
%>	
	<h2>판매하는 음식1</h2>
	<table>
	<c:forEach var="food" items="${foods}" varStatus="sts">
		<c:if test="${sts.count%2==1}">
		<tr>
		</c:if>
			<td>${food}</td>
		<c:if test="${sts.count%2==0}">	
		</tr>
		</c:if>
	</c:forEach>
	</table>
	<h2>판매하는 음식2</h2>
	<table>
		<col width="5%"><col width="5%">
		<tr><th><input type="checkbox" name="ckAll" value="akk"></th>
			<th>no</th><th>음식명</th><th>구매갯수</th></tr>
		<c:forEach var="food" items="${foods}" varStatus="sts">
		<tr><td><input type="checkbox" name="ckNo" value="${sts.index}"></td>
			<td>${sts.count}</td>
			<td>${food}</td>
			<td><input type="number" name="cnt" value="0"/></td></tr>
		</c:forEach>
	</table>
		
</body>
</html>