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
# session으로 방문 횟수 표시 하기..
1. 세션에 방문 횟수를 저장되어 있는 확인..
	- 저장되어 있으면 그 카운트를 가져오고,
	- 저장되어 있지 않으면 카운트를 0으로 처리..
2. 방문수는 0 이면 ==> 1증
   기존에 방문수를 1+ 표현
3. 화면에 표시된 방수는 session에 저장 한다.	

 --%>
<%
// Integer : Wrapper 클래스 (자바 클래스)
Integer visitCnt = (Integer)session.getAttribute("visitCnt");
if(visitCnt == null) visitCnt = 0;
// null 아니면 저장된 데이터를 가져온다.

%>
	<h2>방문한 횟수:<%=++visitCnt%></h2> 
<%
session.setAttribute("visitCnt", visitCnt);
%>	
	
</body>
</html>