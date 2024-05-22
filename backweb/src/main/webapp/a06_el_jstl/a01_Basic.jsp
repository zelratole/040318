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
# Expression Language
1. jsp에서 사용가능 한 새로운 스크립트 언어
	jsp프로그램은 그동안 scriptlet<%%>, expression<%=%>, declare<%! %> 형태로 
	사용하였는데, 변수 설정과 session scope라는 처리를 하다보면 많은 에러에 대한
	처리를 하여야 하는 것을 볼 수 있다.
2. 이에 대하여 보다 변수 설정을 조금은 자유롭게 하고(형변환문제 해결, null값에 대한 처리 
	오류 해결 등), scope에 대한 설정을 포함되어 치리할 때, 사용하는 형식으로 
	발전하게 되었다. 
3. 이러한 처리를 할 수 있게 한, 언어 형식이 el 태그 이다.
4. el 코드의 처리
	1) jsp에서 만든 el코드는 jsp의 script도 마챦가지이지만,
		java의 servlet코드로 변환되고, 내부적으로 el 모듈에 정의된 내용으로
		java코드로 변환되어, java+html 코드가 결국 html로 만들어져서 화면단에
		전송되어 처리된다.
	2) 기존 script 코드의 복잡성과 예외에 대한 처리를 간편하게 el 모듈에서 처리되어
		화면을 호출함으로 효율적인 코드를 처리하게 된다.
5. el의 사용과 기본 코드
	1) el코드는 일단, jsp에 사용하는 변수를 session scope 범위로 저장된 상태에서
		에서 호출되는 것을 기본으로 한다. 즉, scope+변수로 처리가 된다는 말이다.
	2) 그렇게 저장된 내용을 호출할 때, el 태그를 이용하여 호출 하여 사용된다.
	3) 예를 들어 	
		pageContext.setAttribute("name","홍길동") 이라고 저장되었다면
		pageContext.setAttribute("num01",25) 이라고 저장되었다면
		pageContext.setAttribute("num02",30) 이라고 저장되었다면
		기본 코드 : pageContext.getAttribute("name") 라고 호출해야 하고,
			이 데이터가 없을 때에 대한 처리또한 하여야지 null, nullpointerexception
			가 발생하거나, 만약 숫자형이라면 형변환 하여야 하지만,
		el 코드 : ${name}으로 간단하게 호출 될 뿐아니라, 변수가 없으면 공백으로
			처리 되고(없는 변수 ${age} 호출하더라도 에러 발생하지 않음) 
			만약 숫자형이면 자동 형변환이 되어. ${num01+num02} 형식으로
			바로 처리가 된다.
	4) 처리형식
		- 전제 조건 : scope별로 데이터를 할당한 경우
			request.setAttribute("변수명",데이터)
			request.setAttribute("참조변수명",new 객체(초기값 설정))
		- 기본 변수 : ${변수명}
		- 객체 변수 : ${변수명.property명}   
					ex) setName(set property로 name) getName(get property로 name)
					주의) property명은 필드명이 아니다.
6. el의 주요 기능
	1) jsp의 4가지 기본 객체의 범위에 따라 영역의 속성과 함께 변수로 지정
		변수/객체 + session scope 범위로 설정한 내용을
		${변수}, ${참조변수.property}로 호출 하여 처리할 수 있다.
		물론, 위 변수가 없을 때에라도 null이더라도 에러 발생하지 않고 공백으로 처리된다
	2) 집합 객체에 대한 접근 방법 제공
		${list.get(0)} 형식으로 접근 처리 가능
		${arr[0]} 형식으로 접근 처리 가능
	3) 수치 연산, 관계 연산, 논리 연산 제공
		${pt>=70} : true/false 처리
		${pt>=70?'합격':'불합격'} : 3항연산자 처리
		?그럼  조건문 반복문 처리는 기본 script로 처리되는가??  또다시 script 셰계로??
	4) 자바 클래스의 메서드 호출 기능을 property 개념으로 처리
		${p01.name} ==> 내부적으로 p01.getName()메서드 호출					
--%>
	<h2>el태그 활용</h2>
<% 
// scope에 따른 기본 변수 선언..: 실무에서는 이런 변수는 MVC패턴에서 C 즉, controller에서 선언되어 처리된다.
pageContext.setAttribute("name", "홍길동");
request.setAttribute("age", 25);
session.setAttribute("loc", "서울");
application.setAttribute("pname", "오렌지");
%>
	<h3>이름:${name}</h3>
	<h3>나이:${age}</h3>
	<h3>사는곳:${loc}</h3>
	<h3>물건:${pname}</h3>
	<h2>scope 범위 명시</h2>
	<h3>이름:${pageScope.name}</h3>
	<h3>나이:${requestScope.age}</h3>
	<h3>사는곳:${sessionScope.loc}</h3>
	<h3>물건:${applicationScope.pname}</h3>
	
	<%--
	<jsp:forward page="a02_el_scope.jsp"/> 
	: request범위 확인하고 싶은 분들.. 확인한 후, 다시 주석 처리하세요..
	 --%> 
	<a href="a02_el_scope.jsp">el로 선언된 scope 내용 확인하고 싶죠? 그럼 클릭^^!!</a>
	<%--
	# a02_el_scope.jsp
	<h2>el scope 확인</h2>
	<h3>이름:${name}</h3>
	<h3>나이:${age}</h3>
	<h3>사는곳:${loc}</h3>
	<h3>물건:${pname}</h3>	
	
ex) a03_el_music.jsp
		좋아하는 음악 정보(타이틀, 가수명, 발매연도) 페이지, 세션, 어플리케이션 설정 및 출력.
	a04_el_scope.jsp
		위 내용 el로 출력..			
	
	 --%>
	

	
</body>
</html>