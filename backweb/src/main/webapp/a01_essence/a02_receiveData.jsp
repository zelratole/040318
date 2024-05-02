<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 
html 주석문(코드로 로딩은 된다), 코드 처리 주석에 한계
 -->
<%--
jsp에서 사용하는 주석문, 코드 처리 주석을 완벽하게 하여,
특수구문 등 모든 주석이 가능하고, 화면에 보지 않게 처리 된다.

--%>

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