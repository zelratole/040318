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
a08_requestScope.jsp
	page scope : 이름
	request scope : 나이
	session scope : 사는 곳으로 설정	
	위 내용 호출확인..
	확인 후..
	forward 처리 ( a09_requestShow.jsp) 

a09_requestShow.jsp
	이름, 나이, 사는 곳 확인
	a href="a10_sessionShow.jsp"
	
a10_sessionShow.jsp	
	이름, 나이, 사는 곳 확인	
--%>
<%
pageContext.setAttribute("name", "홍길동(page)");
request.setAttribute("age", "25(request)");
session.setAttribute("loc", "서울(session)");

%>
<h2>페이지 범위 데이터 확인</h2>
<h3><%=pageContext.getAttribute("name")%></h3>
<h3><%=request.getAttribute("age")%></h3>
<h3><%=session.getAttribute("loc")%></h3>
<%
RequestDispatcher rd = request.getRequestDispatcher("a09_requestShow.jsp");
rd.forward(request, response);

%>


</body>
</html>