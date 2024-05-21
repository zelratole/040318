<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="backweb.vo.*"   
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/backweb/a00_com/a01_common.css" >
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.7.1.js" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function(){
		//$("h2").text("시작");
		
	})
</script>
</head>
<body>
<%--
# 객체로 el설정 처리
1. 4가지 scope형식으로 객체 데이터 처리
2. el로 getXXX()메서드인 get property를 호출 하여 처리 할 수 있다.
--%>
<%
request.setAttribute("bk01", new Book("jsp 중급으로","홍자바","아이티서적",29000));
%>
	<h2>객체로 el설정 처리</h2>
	<h3>도서명:${bk01.title}</h3><%-- get property로  bk01.getTitle() 호출 --%>
	<h3>작가:${bk01.author}</h3>
	<h3>출판사:${bk01.publisher}</h3>
	<h3>가격:${bk01.price}</h3>

	
</body>
</html>