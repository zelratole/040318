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
# 반복문 처리..
1. jstl은 el과 함께 반복구문을 처리하는 기능 태그를 지원하고 있다.
2. 기본 형식
	1) <c:forEach var="변수" begin="시작번호" end="마지막번호 step="증감단위>
			${변수명}
	2) <c:forEach var="단위변수" items="${배열형데이터}" varStatus="상태변수">
			${단위변수}
			${단위객체.property}
	3) varStatus 속성
		- 여러가지 배열형태의 데이터에 지원되는 속성 처리
		- 기본형식 
			varStatus="변수명"
		- 속성값(변수명.속성값)
			변수명.index : 배열의 index번호 0부터
			변수명.count : 배열의 순번 1부터
			변수명.first : 해당 배열의 첫번째 데이터 인지 여부 true/false
			변수명.last : 해당 배열의 마지막 데이터 인지 여부 true/false
--%>
	
	<h2>jstl 반복문1</h2>
	<c:forEach var="cnt" begin="1" end="10">
	<h3>${cnt}번째 안녕하세요</h3>
	</c:forEach>
	<%-- ex1)  10~20까지 출력 --%>
	<h2>10~20</h2>
	
	<c:forEach var="cnt" begin="10" end ="20">
		<h3>카운트:${cnt}</h3>
	</c:forEach>	
	<%-- ex2)  3~18까지 출력(3단위로 증가처리) --%>
	<h2>3~18</h2>
	<c:forEach var="cnt" begin="3" end ="18" step="3">
		<h3>카운트:${cnt}</h3>
	</c:forEach>
	
	<%-- ex3)  1~9까지 출력(테이블 3x3-조건문 활용) --%>
	<h2>1~9</h2>
	<table>
		<c:forEach var="cnt" begin="1" end ="9" >
			<c:if test="${cnt%3==1}">
			<tr>
			</c:if>
				<td>${cnt}</td>	
			<c:if test="${cnt%3==0}">	
			</tr>
			</c:if>
		</c:forEach>
	</table>
	<br>
	<%-- ex1) 4X4 1~16 --%>
	<%-- ex2) 2X5 1~10 --%>
	
	
		
	
	
	
	
	
	
	
	
	
	

	
</body>
</html>