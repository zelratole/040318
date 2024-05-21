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
# 요청값을 처리하는 el형식
1. ${param.요청키} : 단일데이터
2. ${paramValues.요청키[인덱스명]} : 다중데이터
--%>
	<h2>요청값 처리 el</h2>
	<h3>단일 데이터 : ${param.name}</h3>	
	<h3 style="background:${paramValues.colors[0]}">
		다중 데이터 : ${paramValues.colors[0]}</h3>	
	<h3 style="background:${paramValues.colors[1]}">
		다중 데이터 : ${paramValues.colors[1]}</h3>	
	<h3 style="background:${paramValues.colors[2]}">
		다중 데이터 : ${paramValues.colors[2]}</h3>
	<form>
		이름:<input type="text" name="name"/><br>
		색상1:<input type="color" name="colors"/><br>
		색상2:<input type="color" name="colors"/><br>
		색상3:<input type="color" name="colors"/><br>
		<input type="submit"/>
	</form>
<%--
ex) 요청값을 원의 반지름을 입력받아, el로 처리하여 면적을 출력하세요..~~
 --%>
 	<form>
 		원의 반지름:<input type="number" value="${param.radius==null?0:param.radius}" name="radius"/><br>
 		<input type="submit" value="면적계산">
 	</form>
 	<h2>원의 면적:${param.radius==null?0:param.radius*param.radius*3.14}</h2>
</body>
</html>