<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/backweb/a00_com/a01_common.css" >
<title>Insert title here</title>
</head>
<body>
<%--
# scriptlet
1. jsp에서 메인 코드 처리할 때, 주로 사용되는 코드블럭이다.
2. 기본 형식 <% %> 사이에 자바 코드를 사용한다.
 --%>
<%
// 1. 기본 변수 선언.
int num01 = 10;
// 2. 조건문 처리에 따른 결과 출력
int age = (int)(Math.random()*100); // 0~99 랜덤
%>
	<h1>나이:<%=age %></h1>
<%
if(age>=18){
%> 
	<h2>성인</h2>
<%
}else{
%>
	<h2>미성년자</h2>
<%	
}
%> 
</body>
</html>