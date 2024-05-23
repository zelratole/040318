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
# 개념 이해, 실습문제
1. [개념] jstl의 반복문의 두가지 형식을 기본 예제와 함께 설명하세요
2. [실습] 1~100까지 5X20테이블로 출력하고, 해당 합산(1~100)을 최하단에 출력 처리하세요.
3. [개념] jstl의 varStatus 속성에 대하여 예제와 함께 설명하세요. 
4. [토론] java의 for구문과 jstl의 <c:forEach>구문의 유사점과 차이점에 대하여 정리해보세요.
5. [실습] 학생 6명의 점수를 임의의 점수(0~100)로 2x3테이블에 출력하세요
6. [실습] Student 클래스를 이용하여 객체형 배열로 학생번호 이름 국어 영어 수학 총점을 테이블로 출력하세요.

# 다음의 각 내용에 대하여 개인별로 점검하시고, 내일 발전할 내용도 적어주세요.(조장님이 취합해서 전달)
1. 오늘 출결사항(전날결석, 9:00 지각/조퇴사유), 
   수업시간/프로젝트시간 수업시간 준수 및 교실밖 이동 자제 
   지각/결석시 사전에 연락 했는지? 
2. 수업에 긍정적인 마음으로 집중하였는가?
   1) 수업시간에 수업관련 없는 채팅이나 동영상 등 방해되는 내용을 접하지 않았는가?
   2) 수업시간에 효과적으로 집중을 하였는가?
3. 수업 진행 중, 어려웠던 내용과 해결해야할 과제.

   
# 조별로 공통적으로 이해가 힘든 내용이나 어려운 내용 정리해서 전달해주세요.

# 수업관련 건의사항이 있으면 전달 부탁드립니다.




--%>
	<h2></h2>

	
</body>
</html>