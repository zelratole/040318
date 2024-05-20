<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "backweb.vo.Member"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/backweb/a00_com/a01_common.css" >
<title>Insert title here</title>
</head>
<body>
<%--
### 문제 4: 세션에 저장된 모든 데이터를 삭제하고 로그아웃 처리하는 JSP 페이지. 로그아웃 후 로그인 페이지로 리다이렉트
로그인 session처리 된 상황에서 로그 아웃 처리되는 내용..
	0517_1_login.jsp : 로그인 페이지 다시 로그인 페이지 설정.
		id, pwd
	0517_2_session.jsp : 세션 설정 및 로그인 중/로그아웃페이지 이동 설정
			요청값을 받아 id/pwd himan/7777이면 로그인 성공과 함께 세션 설정
			그렇지 않으면 로그인 실패와 함께 로그인 페이지 이동..
			?id=himan&pwd=7777
			==> himan/7777 : 로그인 성공(js), session.setAttribute("member", "himan")
			==> 그외 : 로그인 실패(js) ==> location.href="0517_1_login.jsp"
			로그 아웃 클릭시 js) ==> location.href="0517_1_login.jsp"
			
	0517_3_logout.jsp : 로그 아웃시 처리되는 페이지, session.invalidate()로 세션삭제 처리
						및 response.sendRedirect("0517_1_login.jsp")로 로그인 페이지 이동
	

### 문제 5: 사용자가 HTML 폼을 통해 나이와 성별을 입력 받아 세션에 저장하고, 이를 다른 페이지에서 출력하는 JSP 페이지
	(누적 배열 처리)
### 문제 6: 세션에 저장된 데이터를 JSON 형식으로 변환하여 클라이언트에 반환하는 JSP 페이지
### 문제 7: 세션 타임아웃 시간을 10분으로 설정하고, 세션이 만료되었을 때 적절한 메시지를 표시하는 JSP 페이지

 --%>
	<h2>로그인 성공 session 처리</h2>
	<%
	session.setAttribute("member", "himan");
	String member = (String)session.getAttribute("member");
	
	%> 
 	<h3 align="cneter"><%=member %>님 로그인중</h3>
 	<h4 align="right" location="0517_logout.jsp">로그아웃</h3>
	
	
	
</body>
</html>