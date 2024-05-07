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
2. 예제 나이애 따른 성년 미성년 구분.
 --%>
	<h2>나이에 따른 성년/미성년 처리</h2> 
	<form>
		나이를 입력:<input type="text" name="age"/><br>
		<input type="submit" value="확인"/>
	</form>
	<%
	String ageStr = request.getParameter("age");
	
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