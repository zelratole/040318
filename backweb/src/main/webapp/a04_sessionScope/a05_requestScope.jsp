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
# request 범위
1. request를 처리하여 forward되었을 때까지 영향을 미치는 범위를 말한다.
	page < request < session < application
	범위 중에 두번째 범위로 주로 사용된다.
2. 우리가 주로 활용되는 form데이터를 입력했을 때, 전송하고 그 전송되는 데이터를 받는 범위까지를
	말한다.
3. 실습예제
	1) request범위로 설정
		request.setAttribute("reqScope","request범위데이터");
	2) request.getRequestDispacther("request범위로 이동할페이지")
		rqd.forward(request, response); request범위로 특정 페이지 이동 처리
		
	3) 이동된 페이지
		request.getAttribute("reqScope") : request범위 데이터 확인 가능하다.
 --%>
<%
pageContext.setAttribute("scope01", "페이지 scope데이터");
request.setAttribute("scope02", "request scope데이터");
session.setAttribute("scope03", "session scope데이터");
%>
	<h2>페이지에서 데이터 확인</h2>
	<h3><%=pageContext.getAttribute("scope01")%></h3> 
	<h3><%=request.getAttribute("scope02")%></h3> 
	<h3><%=session.getAttribute("scope03")%></h3> 
<%--
# request범위는 request 데이터 설정한 곳에서 바로 forward처리될 때, 해당 데이터 유지 여부이다.
1. 설정한 곳에서 forward를 처리한다.
 --%>  	
<%
RequestDispatcher rd = request.getRequestDispatcher("a06_showRequest.jsp");
rd.forward(request, response); //해당 페이지로 forward 처리한다.

%> 
<%--
	# a06_showRequest.jsp
	<h2>페이지에서 데이터 확인(forward된 페이지)</h2>
	<h3><%=pageContext.getAttribute("scope01")%></h3> 
	<h3><%=request.getAttribute("scope02")%></h3> 
	<h3><%=session.getAttribute("scope03")%></h3> 
	<a href="a07_ShowSession.jsp">세션 범위 확인</a>
	
	# a07_ShowSession.jsp
	<h2>페이지에서 데이터 확인(session 범위 페이지)</h2>
	<h3><%=pageContext.getAttribute("scope01")%></h3> 
	<h3><%=request.getAttribute("scope02")%></h3> 
	<h3><%=session.getAttribute("scope03")%></h3> 	
	
 --%>
 
 
 
 

</body>
</html>