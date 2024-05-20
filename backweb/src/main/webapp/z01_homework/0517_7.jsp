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
<%
	// 세션 만료 시간을 초단위로 설정..
	
    session.setMaxInactiveInterval(10 * 60); // 10분
	session.setAttribute("userID", "himan");

%>
	<h1 onclick="location.href='0517_8.jsp'">세션 userID 설정(페이지 이동)</h1>
	
<%--
# 0517_8.jsp 내용
// 세션이 설정된 경우..
if (session.isNew()) {
    out.println("<p>세션이 시작되었습니다.</p>");
// 세션이 만료된 경우    
} else if (session.getAttribute("userID") == null) {
    out.println("<p>세션이 만료되었습니다. 다시 로그인 해주세요.</p>");
// 세션이 현재 유지되는 경우..
} else {
    out.println("<p>세션이 유지되고 있습니다.</p>");
}


 --%>	
	    
</body>
</html>