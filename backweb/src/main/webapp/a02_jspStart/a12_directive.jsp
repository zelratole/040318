<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
# directive(디렉티브)
1. jsp 페이지에 상단에 설정 정보를 지정하는 부분
2. 디렉티브 구문
	<% 디렉티브  속성=속성값, ... %>
3. 디렉티브의 종류
	1) page : jsp페이지에 대한 정보를 지정, 문서의 타입, 출력 형식, 버퍼의
		크기, 에러페이지 등 대부분 페이지에 대한 정보 지정
		주요 속성
			contentType : jsp가 생성할 문서의 타입을 지정
			import : jsp 페이지에서 사용할 자바 클래스를 지정
			session : jsp 페이지가 세션을 사용할 지 여부 지정
			info : jsp페이지에 대한 설명을 입력
			errorPage : 에러가 발생할 때, 보여 줄 페이지 지정
			isErrorPage : 해당 페이지가 에러를 처리할 때 출력할 페이지인지 여부를 지정
	2) taglib : 사용할 태그 라이브러리를 지정
			보통 jsp에서 jstl을 설정한다.
	3) include : 다른 문서를 포함 할 때, 설정.
	
 --%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/backweb/a00_com/a01_common.css" >
<title>Insert title here</title>
</head>
<body>

</body>
</html>