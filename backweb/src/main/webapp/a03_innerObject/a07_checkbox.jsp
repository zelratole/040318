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
# checkbox는 요청값을 여러 형태로 사용된다.
특히, check한 내용만 요청값으로 전달되는 형식이 있을 반드시 활용하여야 하는 내용이다.
ex) 장바구니에서 최종 결재항목 변경할 때(결재항목, 제외항목 처리)..
1. 특징 
	기본 다중 요청값 처리와 동일한데, 단 check가 된 데이터만 배열로 전송 처리된다.
--%>
<h2>관심사 선택</h2>
<form>
	<input type="checkbox" name="interest" value="음악">음악<br>
	<input type="checkbox" name="interest" value="운동">운동<br>
	<input type="checkbox" name="interest" value="여행">여행<br>
	<input type="checkbox" name="interest" value="기타">기타<br>
	<input type="submit" value="선택"/>
</form>
<%
String []interests = request.getParameterValues("interest");

if(interests!=null){
	for(String interest:interests){
%>
<h3><%=interest%></h3>
<%
	}
}
%>
<%--
ex) 팀프로젝트 역할 선택 다중 선택(개발자, 화면디자이너, 화면단설계, 프로젝트 매니저, DB설계자)
 --%>
<h2>팀 프로젝트의 역할을 선택하세요(다중 선택가능)</h2>
<form>
	<input type="checkbox" name="role" value="개발자">개발자<br>
	<input type="checkbox" name="role" value="화면디자이너">화면디자이너<br>
	<input type="checkbox" name="role" value="화면단설계">화면단설계<br>
	<input type="checkbox" name="role" value="프로젝트 매니저">프로젝트 매니저<br>
	<input type="checkbox" name="role" value="DB설계자">DB설계자<br>
	<input type="submit" value="역할 선택!!"> 
</form>
<%
String roles[] = request.getParameterValues("role");
if(roles!=null){
%>
	<h2>이번 프로젝트 역할</h2>
<%	
	for(String role:roles){	
%>
	<h3><%=role %></h3>
 
<%
	}
}
%> 
<h2>콤보박스 다중 요청값 처리..</h2>
<h3>국가선택</h3>
<form>
	<label for="countries">국가선택:</label>
	<select name="countries" multiple="multiple" id="countries" size="3">
		<option value="USA">미국</option>
		<option value="UK">영국</option>
		<option value="France">프랑스</option>
		<option value="Germany">독일</option>
		<option value="South Korea">대한민국</option>
	</select>	
	<input type="submit" value="나라선택"/>
</form>
<%
String countries[] = request.getParameterValues("countries");
if(countries!=null){
	for(String country:countries){
%>
 	<h3><%=country %></h3>
<%
	}
}
%>
 

</body>
</html>