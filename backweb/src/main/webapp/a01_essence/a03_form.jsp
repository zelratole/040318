<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>등록할 회원명</h2>
	<%--
	a04_registerMember.jsp?name=홍길동
	==> String name = request.getParameter("name");
	
	
	 --%>
	<form action="a04_registerMember.jsp">
	회원명:<input type="text" name="name" />
	<input type="submit" value="등록"/>
	</form>
</body>
</html>