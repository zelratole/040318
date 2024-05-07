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
	<%-- ex) 입력한 점수에 따라 합격/불합격을 출력 하세요  
		a07_request_pass.jsp
	 --%>
	<h2>점수에 따른 합격/불합격여부 확인</h2>
	<form>
		점수를 입력:<input type="text" name="point" value="0"/><br>
		<input type="submit"/>
	</form>
	<%
	String pointStr = request.getParameter("point");
	if(pointStr!=null){
		int point = Integer.parseInt(pointStr);
		
	%>
		<h2>입력한 점수:<%=point%></h2>
		<%
		if(point>=70){
		%>
			<h2>합격</h2>	 
		<%
		}else{
		%>
			<h2>불합격</h2>
		<%
		}%>
	<%
	}%>
</body>
</html>