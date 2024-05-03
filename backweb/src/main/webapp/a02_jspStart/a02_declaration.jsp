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
<%!
// ex) 선언부에 이름, 나이, 사는 곳 선언과 할당하고(변수), 두개의 정수를 더하여 합산하는 리턴값이
//     있는 메서드를 선언하고.. 
//     expression.코드로 출력하세요 <h2></h2> 사이에서 처리..
String name="홍길동";
int age = 25;
String loc="수원";
int plus(int num01, int num02){
	return num01 + num02;
}

int no1 = 20;
int no2 = 30;
%>
	<h2>이름:<%=name %></h2>
	<h2>나이:<%=age %></h2>
	<h2>사는곳:<%=loc %></h2>
	<h2><%=no1 %> + <%=no2 %> = <%=plus(no1, no2) %></h2>
</body>
</html>