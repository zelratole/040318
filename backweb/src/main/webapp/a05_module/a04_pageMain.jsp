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
# include directive(@)
1. 코드 차원에서 포함
	결국은 하나의 파일로 컴파일되어서 실행처리된다.(.class)
2. 기본 형식
	<%@ include file="포함할 파일" %>
3. 활용
	1) 모든 JSP 페이지에서 사용되는 변수 지정
		위에서 아래로 흐름 순서로 변수를 인식할 수 있다.
	2) 실용예시 : 저작권 표시, 자바단의 공통변수 설정 등 모든 페이지에 중복되는 코드를
		사용할 때 활용한다.	
4. jsp를 통해서 공통 변수, 페이지를 설정할 때 주로 사용된다.		
	comm.jsp : memu01.jsp,memu02.jsp,memu02.jsp
				공통화면(top화면,bottom화면,왼쪽메뉴), java변수, js,css
	menu01.jsp
	menu02.jsp
	menu03.jsp

--%>
	<%@ include file="a05_pageSub.jsp" %>
	<h2>include directive 연습(포함할 페이지)</h2>
	<h3>이름:<%=name %></h3>
	<h3>나이:<%=age %></h3>
<%--
# a05_pageSub.jsp
<h2>포함될 페이지</h2>
<%
	String name="홍길동";
	int age = 25;
%>
<h3>이름:<%=name %></h3>
<h3>나이:<%=age %></h3>

ex) a06_mainMenu.jsp(포함할페이지) : 선언된 내용 호출 처리..
	a07_subMenu.jsp(포함될페이지) : 변수 회원아이디, 회원포인트 선언

 --%>	
 
 
 
 
 
 
</body>
</html>