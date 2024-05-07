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
# request기본 객체
1. 웹 브라우저에 웹 서버에 전송한 요청 관련 정보
2. 주요 기능
	1) 클라이언트(웹 브라우저)와 관련된 정보 읽기 기능
	2) 서버와 관련된 정보 읽기 기능
	3) 클라이언트가 전송한 요청 파라미터 읽기 기능
	4) 클라이언트가 전송한 쿠기 읽기 기능
	5) 속성 처리 기능
3. 요청관련 주요 정보 처리 메서드
	1) getRemoteAddr()
		웹 서버에 연결한 클라이언트 ip 주소를 구한다. 게시판이나 방명록 등에서
		글 작성의 ip주소가 자동으로 입력되기도 하는데,
		이 때 입력되는 ip주소가 바로 이 메서드를 사용하여 구한 것이다.
	2) getMethod()
		웹 브라우저가 정보를 전송할 때 사용한 방식을 구한다.
		form의 method="get/post" 방식 설정
	3) getRequestURI()
		웹 브라우저가 요청한 url에서 경로를 구한다.
	4) getContextPath()
		jsp 페이지가 속한 웹 어플리케이션의 컨텍스트 경로를 구한다.
	5) getServerName()
		연결할 때 사용한 서버 이름을 구한다.
	6) getServerPort()
		서버가 실행중인 포트 번호를 구한다.	
 --%>
 	<h2>원격주소:<%=request.getRemoteAddr() %></h2>
 	<h2>전송방식:<%=request.getMethod() %></h2>
 	<h2>요청주소:<%=request.getRequestURI() %></h2>
 	<h2>context:<%=request.getContextPath() %></h2>
 	<h2>서버이름:<%=request.getServerName() %></h2>
 	<h2>서버포트:<%=request.getServerPort() %></h2>
<%


%>
</body>
</html>