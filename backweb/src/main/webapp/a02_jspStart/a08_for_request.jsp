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
# 요청값에 따른 반복문 처리
1. 요청데이터를 반복문의 구성요소로 설정하여 반복하는 데이터를 처리할 때 사용한다.
2. 예시
	시작값(1)으로 해서 마지막값을 입력하여 합산한 최종값을 출력 처리해보자. 

 --%>
 	<h2>1부터 누적 합산할 최종값을 입력하세요</h2>
	<form>
		입력할 수:<input type="text" name="endVal" value="1"/><br>
		<input type="submit" value="누적합산 값 확인"/>
	</form>
	<%
	String endValStr = request.getParameter("endVal");
	if(endValStr!=null){
		int endVal = Integer.parseInt(endValStr);
		int tot = 0;
		for(int cnt=1;cnt<=endVal;cnt++){
			tot+=cnt;
	%> 
			<%=cnt%>,
		<%
		}
		%>
		<br>
		합산한 최종값:<%=tot%>
		
	<%}%>
	
</body>
</html>