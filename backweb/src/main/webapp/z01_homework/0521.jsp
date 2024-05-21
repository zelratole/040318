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
# 개념 이해, 실습문제(개인별로 제출해주세요)
1. [토론] 웹프로그램밍에서 외부 프로그램을 선언하는 형식 3가지를 구분하여, 사용하는 장단점을 구분하여 토론해보세요.
2. [실습] <jsp:include> 형식을 포함하는 페이지와 포함된 페이지를 선언하고 데이터를 이름, 나이, 사는 곳을 전송하는 코드를 만드세요.
3. [실습] <%@ include file=""%> 형식으로 포함하는 페이지와 포함되는 페이지를 선언하고, 변수를 물건명, 가격, 갯수를 선언하고 공유
	되게 처리하세요.
4. [토론] el코드와 jsp의 script 비해 장점을 기술하세요
5. [실습] session 범위 el 코드를 객체 생성을 통해 할당한 후, 호출 하세요(VO-Calculator num01, num02)
            4칙연산자 결과 출력 처리.
6. [실습] request 범위로 Member객체를 선언하고, el로 로그인한 id, 포인트 출력,  himan//7777 로그인 성공 그외 로그인 실패
        를 3항 연산자로 출력되게 하세요
7. [개념] el을 이용해서 단일 데이터와 다중 데이터를 처리하는 기본 형식을 예제를 통해서 설명하세요
8. [토론] el태그의 요청값에 대한 처리 방식에 있어서 null, ""(공백), 숫자에 대한 처리 방식을 정리해보세요.
9. [실습] form에 삼각형의 밑면과 높이를 입력하는 form을 만들고, el로 요청값을 받아
            면적을 계산하여 100이 넘으면 big triangle, 그외는 small triangle 출력
10. [실습] jstl을 jsp에서 환경설정하는 방법을 기술 해보세요.
11. [개념] jstl로 변수를 선언하는 것과, 객체를 선언하고 el로 호출하는 기본 형식을 정리해보세요.
12. [플립러닝] java의 상속개념에 대하여 기본, overriding(재정의), polymorphism(다형성)가 무엇인지 왜 사용하는지 살펴보자
13. [플립러닝] Generic과 상속과의 관계를 살펴보고, 실무적으로 사용되는 경우를 파악해보자.
14. [플립러닝] List<Member> list = new ArrayList<Member>() 선언은 상속의 어떤 개념때문에 사용되는지 살펴보자.
15. [플립러닝] SQLInjection개념과 PreparedStatment 개념이 보안적으로 어떤 이점이 있는지 정리해보자.




# 다음의 각 내용에 대하여 개인별로 점검하시고, 내일 발전할 내용도 적어주세요.(조장님이 취합해서 전달)
1. 오늘 출결사항(전날결석, 9:00 지각/조퇴사유), 
   수업시간/프로젝트시간 수업시간 준수 및 교실밖 이동 자제 
   지각/결석시 사전에 연락 했는지? 
2. 수업에 긍정적인 마음으로 집중하였는가?
   1) 수업시간에 수업관련 없는 채팅이나 동영상 등 방해되는 내용을 접하지 않았는가?
   2) 수업시간에 효과적으로 집중을 하였는가?
3. 수업 진행 중, 어려웠던 내용과 해결해야할 과제.
4. 과제 진행 % 표기(5:20분에 따로 조별로 진행-어려웠던 부분포함)
   1조 
   홍길동  @@ % 진행 - 테이블구조변경 어려움
   
# 조별로 공통적으로 이해가 힘든 내용이나 어려운 내용 정리해서 전달해주세요.

# 수업관련 건의사항이 있으면 전달 부탁드립니다.


--%>
	<h2></h2>

	
</body>
</html>