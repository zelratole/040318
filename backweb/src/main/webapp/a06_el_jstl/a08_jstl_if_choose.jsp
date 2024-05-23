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
# jstl의 조건문 처리
1. 서버단 안에서 데이터에 따라서 다른 화면을 보이게 하거나,
	프로세스를 처리할 때, 활용한다.
2. 기본형식
	1) 단일 조건 처리..
		<c:if test="${조건식}">
			해당 조건식이 true일 때 처리할 화면/process
		</c:if>
	2) 다중 조건 처리
		jstl에서 if else문이 없고, choose when otherwise구문을 활용한다.
		<c:choose>
			<c:when test="${조건1}">
				조건1일 때, 처리할 내용..
			</c:when>
			<c:when test="${조건2}">
				조건2일 때, 처리할 내용..주의) if else if 문과 같이 위에 상단에 있는 조건 제외				
			</c:when>
			<c:otherwise>
				위 나열된 조건이 아닐 때, 처리할 내용.
			</c:otherwise>		
		</c:choose>	
--%>
	<h2>가입된 회원여부 확인</h2>
	<form>
		확인할 회원아이디:<input type="text" name="id"/><br>
		<input type="submit" value="확인"/>
	</form>
	<c:set  var="msg" value="등록 가능합니다."/>
	<c:if test="${param.id=='himan'}"> 
		<c:set  var="msg" value="등록된 회원입니다."/><%-- jstl은 모두 다 전역변수이다.(전역/지역변수 개념없음) --%>
	</c:if>
	<c:if test="${not empty param.id}">
		<%-- empty : null or ""을 둘중에 하나 해당할 때 처리해준다. --%>
		<%-- not empty : null 아니고 and ""이 아닐 때 --%>
		<h3>아이디 ${param.id} ${msg}</h3>
	</c:if>
	<%--
	ex) 구매할 물건의 가격과 갯수를 form으로 입력 받아서..
	구매금액과 함께..
	100000 미만일 때, 일반 고객입니다.  100000이상일 때는 MVP 고객입니다. 표시하세요..
	 --%>
	<h2>고객 등급 확인</h2>
	<form>
		구매할 물품 가격:<input type="number" name="price"/>원<br>
		구매할 물품 갯수:<input type="number" name="cnt"/>개<br>
		<input type="submit"/><br>
	</form>
	<c:set var="evalMsg" value="일반 고객입니다."/>
	<c:set var="tot" value="${param.price*param.cnt}" scope="page"/> 
	<%-- jstl변수는 scope를 항상 가지고 있다. default로 page--%>
	<c:if test="${tot>=100000}">
		<c:set var="evalMsg" value="MVP 고객입니다."/>
	</c:if>	 
	<c:if test="${not empty param.price}"><%-- 요청값이 입력 되었을 때.. --%>
		<h3>입력한 물건 총비용 ${tot}원, 고객등급:${evalMsg}</h3>
	</c:if>
	<%--
	ex) form에 나이를 입력받아  성년/미성년을 출력하세요..	
	 --%>
	<h2>나이에 따른 성년/미성년 구분</h2>
	<form>
		나이를 입력:<input type="number" name="age" size="2"/>세<br>
		<input type="submit"/>
	</form>
	<h3>입력한 나이:${param.age}</h3>
	<%--
	1. 기본 변수인 미성년자를 변수로 선언..
	2. 나이가 18이상일 때 성년자로 처리..
	 --%>
	<c:set var="ckAgeMsg" value="미성년자"/>
	<c:if test="${param.age>=18}">
		<c:set var="ckAgeMsg" value="성년자"/>
	</c:if>
	<%--
	1. 요청값이 있을 때만, 위 미성년자/성년자 표현..
		not empty param.age  : form에 데이터를 입력해서 확인하는 것과 입력하지 않거나/초기화면을 구분하기 위하여
		조건으로 처리한다.. null, "" 
	 --%>
	<c:if test="${not empty param.age}"> 
		<h3>${ckAgeMsg}</h3>
	</c:if>	
	
</body>
</html>