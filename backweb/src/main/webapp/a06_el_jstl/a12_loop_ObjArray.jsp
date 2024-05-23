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
		//$("h2").text("시작");
		
	})
</script>
</head>
<body>
<%--
# 객체배열
1. 객체단위로 List형 배열을 처리하는 것을 말한다..
2. 실무적으로 DB에서 가져오는 데이터를 이러한 형태의 List형 객체 배열이다.
3. 처리순서
	1) list형의 단위 객체 만들기
		데이터베이스의 하나의 단위 데이터에 맞는 클래스 선언
	2) 객체형으로 request.setAttribute()로 설정..
	3) forEach구문으로 처리..
	
--%>
<%
List<Dept> dlist = new ArrayList<Dept>();
dlist.add(new Dept(10,"인사","서울"));
dlist.add(new Dept(20,"기획","수원"));
dlist.add(new Dept(30,"회계","부산"));
dlist.add(new Dept(40,"총무","광주"));
request.setAttribute("dlist", dlist);
%>
	<h2>객체형 배열</h2>
	<table>
		<tr><th>번호</th><th>부서명</th><th>부서위치</th></tr>
	
		<c:forEach var="dept" items="${dlist}">
		<tr><td>${dept.deptno}</td><td>${dept.dname }</td><td>${dept.loc}</td></tr>
		</c:forEach>
	</table>
<%--
ex) Product로 객체형배열을 선언하고, 테이블로 출력하세요..
 --%>	
<%
List<Product> plist = new ArrayList<Product>();
plist.add(new Product("사과",3000,2));
plist.add(new Product("바나나",4000,3));
plist.add(new Product("딸기",15000,4));
request.setAttribute("plist", plist);
%> 
	<h2>구매물건 리스트</h2>
	<table>
		<tr><th>물품</th><th>가격</th><th>갯수</th></tr>
	
		<c:forEach var="prod" items="${plist}">
		<tr><td>${prod.name}</td><td>${prod.price }</td><td>${prod.cnt}</td></tr>
		</c:forEach>
	</table> 
</body>
</html>