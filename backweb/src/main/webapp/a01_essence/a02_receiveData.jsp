<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
// ?id=himan&pwd=7777
String id = request.getParameter("id");
String pwd = request.getParameter("pwd");
String result = "로그인 실패";
if(id.equals("himan") && pwd.equals("7777")){
	 result = "로그인 성공";
}
%>
	<h2>로그인 결과:<%=result %></h2>

</body>
</html>