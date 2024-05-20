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
// 1. 아이디 패스워드 체크
String id = request.getParameter("id"); if(id==null) id = "";
String pwd = request.getParameter("pwd"); if(pwd==null) pwd = "";
if(id.equals("himan") && pwd.equals("7777")){
	// 2. 세션 설정
	out.println("<script>alert('로그인성공');</script>"); // out : 화면에 출력시 처리되는 내장 객체..
	// 세션으로 로그인 아이디 설정
	session.setAttribute("member", id);
}else{
	// 3. 유효하지 않을 때, 로그 인페이지 이동
	out.println("<script>alert('로그인실패 다시 로그인'); "+
		"location.href='0517_1_login.jsp'</script>"); // out : 화면에 출력시 처리되는 내장 객체..
}
%>
<%-- 4. 로그인 세션 출력, 로그아웃 클릭시, session 종료페이지 이동 처리.. --%>
<h2 align="center"><%= session.getAttribute("member")%>님 로그인 중</h2>
<h3 align="right" onclick="location.href='517_3_logout.jsp'">로그인 아웃</h3>



</body>
</html>