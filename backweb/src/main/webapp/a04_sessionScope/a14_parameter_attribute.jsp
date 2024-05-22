<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="backweb.vo.*"   
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<fmt:requestEncoding value="utf-8"/>       
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${path}/a00_com/a01_common.css" >
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.7.1.js" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("h2").text("시작");
		
	})
</script>
</head>
<body>
<%--
# request.getParameter() vs XXX.setAttribute("key", value)
1. client와 server와의 데이터 처리 방식에 차이점.
	1) client ===> server : request.getParameter()
	   페이지?key=val  ==> server
	2) server ===> client : 각 scope의 범위까지 데이터를 확인 가능..
2. request.getParameter() : 요청값이 있을 때, 바로 client에서 서버로 전송
	<form>하위에 요청값을 입력했을 때, 서버에 보내는 처리
	ex) id, pwd를 입력해서 서버에 전송하고, 전송된 데이터를 DB에 있는 여부 확인..
	
3. 세션스코프.setAttribute("key", value) :
	세션스코프별로 데이터를 지속적으로 저장하여 호출하는 방식..
	1) 범위별로 필요로 할 때, 서버 안에서 저장처리..
	2) page은 경우는 설정한 해당 페이지만 데이터 확인 할 수 있고.
	   request : 요청 처리한 페이지 범위 
	   	(<jsp:forward> request.getRequestDispatcher("페이지").forward()
	   session : 세션 범위내까지..페이지가 이동되더라도 확인
	   application : 같은 서버가 재기동하기 전까지...
	3) 세션스코프.setAttribute("key", value) 
	   세션스코프.getAttribute("key") : 둘다 서버에서 실행
	      
--%>
	<h2></h2>

	
</body>
</html>