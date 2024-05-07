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
# 내장 객체
1. jsp에서는 servlet으로 처리되게 기본적으로 내장 객체를 선언하고 사용하고 있다.
2. 즉, 변경되 servlet에서 매개변수로 받는 객체 뿐만 아니라 여러가지 선언되어 바로 사용할 수 
	있는 내장 객체가 있다.
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	1) servlet으로 변환되었을 때, 매개변수로 위와 같이, 참조변수로 request, response객체를 받아서 처리해주기에
	2) request.getParameter("요청키) 종류로 여러가지 객체를 사용할 수 있고,
	2)	
 --%>
<%
	String req = request.getParameter("key");// 요청 key
	Cookie ck[] = request.getCookies(); // 쿠키객체
	HttpSession session01 =  request.getSession();
	// 이 객체에 의해서 만들어진 
	session.setAttribute("key", "session값"); // 세션 key와 값 설정
	
	// PrintWriter out =  response.getWriter();
	out.print("출력처리..!!");
	

%>
</body>
</html>