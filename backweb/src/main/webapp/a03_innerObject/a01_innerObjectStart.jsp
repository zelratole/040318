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
# jsp 처리 단계
1. jsp(개발자 코드의 편의성 만듦)
2. jsp ==> java(서블릿) ==> class
	주의) 코드가 충분히 class단계로 컴파일이 안될 때, 오른쪽에 빨간색이 나올 때가 있으니,
		코드전체를 잘라내기 하여 다시 붙여서, 저장하여 재컴파일 될 수 있게 하여야 한다.
3. servlet의 주요 작업은.
	java + html 혼합된 코드를 html코드로 변환하여 브라우저에 stream방식으로 전송
4. client 브라우저에서는 서버로 부터 받은 html코드를 해석하여 화면에 출력
5. 그 이후로 javascript 코드의 여러가지 기능(이벤트 핸들러 등)을 처리한다.			
		
# 내장 객체
1. jsp에서는 servlet으로 처리되게 기본적으로 내장 객체를 선언하고 사용하고 있다.
2. 즉, 변경되 servlet에서 매개변수로 받는 객체 뿐만 아니라 여러가지 선언되어 바로 사용할 수 
	있는 내장 객체가 있다.
	protected void service(HttpServletRequest request, 
	                       HttpServletResponse response) throws ServletException, IOException {
	1) servlet으로 변환되었을 때, 매개변수로 위와 같이, 
		참조변수로 request, response객체를 받아서 처리해주기에
	2) request.getParameter("요청키) 종류로 여러가지 객체를 사용할 수 있고,
	2)	
 --%>
<%
	String req = request.getParameter("key");// 요청 key
	Cookie ck[] = request.getCookies(); // 쿠키객체
	HttpSession session01 =  request.getSession();
	/// HttpSession session =  request.getSession(); 내장되어 만들어짐
	// 이 객체에 의해서 만들어진 
	session.setAttribute("key", "session값"); // 세션 key와 값 설정
	
	// PrintWriter out =  response.getWriter();  내장되어 선언됨..
	out.print("출력처리..!!");
	

%>
</body>
</html>