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
<form method="get"> <%-- method를 선언하지 않으면 get방식이다. --%>
	이름:<input type="text" name="name"/><br>
	나이:<input type="text" name="age"/><br>
	사는곳:<input type="text" name="loc"/><br>
	<input type="submit"/>
	
</form>
<%--
# get 방식 전송
1. form을 url을 통해서 key=value 형식으로 전송
2. 민감한 데이터를 전송하지 못한다.(전송하는 데이터가 url에 보이기 때문이다)
3. 전송하는 데이터 제한(2048 문자)
4. 북마크를 사용할 때 유용함.
5. 전송하는 데이터가 보안이 필요없는 경우 주로 많이 사용된다.

 --%>
 
<%
String name = request.getParameter("name");
String age = request.getParameter("age");
String loc = request.getParameter("loc");
if(name!=null){
%>
	<h1>요청값!(GET방식으로 받음)</h1>
	<h2><%=name %></h2>
	<h2><%=age %></h2>
	<h2><%=loc %></h2>
<%
}
%>
<%--
?name=홍길동&age=25&loc=SEOUL
 --%>
</body>
</html>