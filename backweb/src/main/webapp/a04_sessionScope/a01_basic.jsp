<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/backweb/a00_com/a01_common.css" >
<title>Insert title here</title>
</head>
<%--
# session scope
1. jsp는 변수/객체를 저장하는 시간적 범위를 추가하여 저장할 수 있다.
2. 이것을 session scope의 범위에 의한 서버단 저장이라고 할 수 있다.
3. 쉽게 말하면, int, double, String, Person 등의 변수나 객체들으로
	메모리의 크기와 형식에 의해 저장하는 것뿐만아니라, 시간적 범위(유지시간)에
	의해 처리할 수 있다는 말이다.
	ex) int num01 = 25; + session scope범위에 따라 유지시간 보존..
4. 이러한 session scope범위에 의한 저장과 호출은 각, 내장 객체에 의해 처리되고
	아래와 같이 기본 형식에 의해 저장, 호출 할 수 있다.
	XXX.setAttribute("저장키",저장할데이터) : 저장하기
	XXX.getAttribute("저장키") : 가져오기..
5. session scope를 처리할 내장 객체들
	1) pageContext : 한 페이지만	
	2) request	: 요청값을 전달한 페이지까자.
	3) session	: 브라우저와 서버가 연결되 있을 때까지
	4) application	: 서버가 다시 시작할 때까지..
	==> 웹 서버가 재기동 되더라도 데이터 가지고 있는 형태가 DB 서버 활용..

12:05~
 --%>
<body>
	<h2>페이지 scope 데이터 설정</h2>
	<%
	pageContext.setAttribute("str01", "페이지범위까지 호출");
	session.setAttribute("str02", "세션범위까지 호출 가능");
	application.setAttribute("str03", "어플리케이션 범위까지 호출 가능");
	%>
	<h3>페이지 scope 데이터:<%=pageContext.getAttribute("str01")%></h3>
	<h3>session scope 데이터:<%=session.getAttribute("str02")%></h3>
	<h3>application scope 데이터:<%=application.getAttribute("str03")%></h3>
	<a href="a02_goPage.jsp">페이지 이동..</a>
	<%--
	a02_goPage.jsp : 에 처리할 내용..
	<h2>이동된 페이지</h2>
	<h3>페이지 scope 데이터:<%=pageContext.getAttribute("str01")%></h3>
	<h3>session scope 데이터:<%=session.getAttribute("str02")%></h3>	
	<h3>application scope 데이터:<%=application.getAttribute("str03")%></h3>
	
	ex)
	a03_sessionScopeSetting.jsp
		세션scope 설정, 페이지 범위에서 확인
		page범위 이름저장name
		session범위 나이저장age
		application범위  사는곳저장loc
		
		
	a04_sessionShow.jsp
		각 scope별 확인
	
	
	 --%>	
	
</body>
</html>