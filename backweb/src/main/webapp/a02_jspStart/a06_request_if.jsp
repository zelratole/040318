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
# 요청값에 대한 요청값처리
1. 화면 form의 입력값에 따른 결과 처리
	action의 속성이 없을 때는 현재 페이지를 로딩한다.
2. 예제 나이애 따른 성년 미성년 구분.
 --%>
	<h2>나이에 따른 성년/미성년 처리</h2> 
	<form>
		나이를 입력:<input type="text" name="age"/><br>
		<input type="submit" value="확인"/>
	</form>
	<%
	String ageStr = request.getParameter("age");
	// 요청값 null check : 물리적으로 같은 페이지이지만, 논리적으로 두개의 페이지가
	// 처리되기에 초기 페이지 즉 요청값이 없을 때와 요청값이 있을 때를 구분하여야 한다.
	// if(요청값!=null) : 요청값 있을 때, 즉 초기페이지에서 데이터를 입력하여 요청값을
	// 		전달했을 때를 의미한다.
	if(ageStr!=null){ 
		int age = Integer.parseInt(ageStr);
	%>
		<h2>입력한 나이:<%=age%>세</h2>
		<%
		if(age>=18){
		%>
			<h3>성년입니다</h3>
		
		<%
		}else{
		%>		
			<h3>미성년입니다</h3>
		<%}
		
		%>
	<%}%>
	<%-- ex) 입력한 점수에 따라 합격/불합격을 출력 하세요  
		a07_request_pass.jsp
	 --%>
</body>
</html>