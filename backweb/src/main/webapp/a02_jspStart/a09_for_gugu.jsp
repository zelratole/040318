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

<% // 자바 코드
int no = 10;
%>
출력 부분:<%=no %>
<% // 자바 코드 
int no2 = 20;
%>
<%=no2 %>
<br>
<h2><%=no %></h2>
<h3><%=no2%></h3>
<table border>
	<tr><td><%=no%></td><td><%=no2%></td></tr>
</table>
<%-- ex) 물건명 가격 갯수를 변수를 선언하고
h1, h2, h3에 출력하고,
table의 th태그 안에도 출력하세요..
 --%>
<%
String name="사과";
int price = 3000;
int cnt = 2;
%> 
<h1><%=name%></h1>
<h2><%=price%></h2>
<h3><%=cnt%></h3>
<table >
	<tr><th><%=name%></th><th><%=price%></th><th><%=cnt%></th></tr>
</table>
<%
if(price>=3000){
%>	
	<h2>가격이 3000이상일 때 출력 내용</h2>
<%	
}

// 가격이 2000이상일때
if(price>=2000){
%>
	<h2>가격이 2000이상일때</h2>
<%
}
// 가격이 4000이상일 때 출력할내용을 위 조건문 형식으로 철하세요.
%>
<%if(price>=4000){ %>
	<h2>가격이 4000이상일 때 출력할</h2>
<%}%>
</body>
</html>