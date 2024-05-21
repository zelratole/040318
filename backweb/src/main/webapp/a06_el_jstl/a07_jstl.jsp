<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="backweb.vo.*"   
    %>
<%-- jstl 기본 설정 --%>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%-- 공통 변수 : 프로젝트 경로 설정 --%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<%-- post방식일때 요청값을 한글로 처리해주는 jstl --%>
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
# jstl 처리
1. 환경 설정
	1) jstl을 위한 @@.jar 파일 설정 :
			webapp\WEB-INF\lib\jstl-1.2.jar
	2) taglib directive 선언  core/fmt
2. 기본 데이터 선언
	1) <c:set var="변수명" value="데이터" scope="세션스코프"/>
		scope범위:page|request|session|application 범위로 변수 선언.
	2) <c:set var="객체명" value="<%=new 객체명()%>" scope="세션스코프"/>	
		객체 선언.
	- 호출 ${변수명}, ${객체명.property명}
3. 조건문
4. 반복문
5. 여러가지 형식(날짜/숫자 데이터)
	
	
	
	
	
	
	
--%>
	<c:set var="name" value="홍길동"/>
	<h2>jstl 설정 성공? ${name}</h2>
	<%--
	ex1) 가격/갯수를 위 c:set 변수로 할당하여 출력
	ex2) Person객체를 위 코드를 보고 c:set 변수로 할당하여 출력
	
	 --%>
	<c:set var="price" value="3000"/>	 
	<c:set var="cnt" value="5"/>
	<h2>가격:${price}, 갯수:${cnt}, 총계:${price*cnt}</h2>
	<c:set var="p01" value='<%=new Person("홍길동",25,"서울") %>' 
		scope="session"/>
	<h3>이름:${p01.name}</h3>	 
	<h3>나이:${p01.age}</h3>	 
	<h3>사는곳:${p01.loc}</h3>	 

	
</body>
</html>