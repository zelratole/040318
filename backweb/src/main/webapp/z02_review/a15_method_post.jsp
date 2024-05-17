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
# post 방식 전송
1. 요청값을 http request안의  body에 key=value 형식으로 전송된다.
	url에서는 보이지 않는다.
2. post방식에서는 크기의 제한이 없다. 대량의 데이터도 전송을 할 수 있다.
3. url에 표시가 안되기에 북마크로 사용은 힘들다.
 --%>
<%
// 주의 요청값에 대한 한글 encoding을 처리하여야 한다. 한글 처리시..
request.setCharacterEncoding("utf-8");
%> 
<form method="post"> <%-- method를 선언하지 않으면 get방식이다. --%>
	이름:<input type="text" name="name"/><br>
	나이:<input type="text" name="age"/><br>
	사는곳:<input type="text" name="loc"/><br>
	<input type="submit"/>
	
</form>
<%
String name = request.getParameter("name");
String age = request.getParameter("age");
String loc = request.getParameter("loc");
if(name!=null){
%>
	<h1>요청값!(post방식으로 받음)</h1>
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