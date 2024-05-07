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
	<h2>물건구매</h2>
	<form>
	
	물건명:<input  type="text" name="pname"/><br>
	갯수:<input  type="text" name="pcnt"/><br>
	<input  type="submit" value="구매"/><br>
	</form>
	<%
	String pname = request.getParameter("pname");
	String pcnt = request.getParameter("pcnt");
	if(pname!=null){
	%>
		<h2>구매정보</h2>
		<h3>물건명:<%=pname %></h3>
		<h3>갯수:<%=pcnt %></h3>
	<%
	}
	%>

</body>
</html>