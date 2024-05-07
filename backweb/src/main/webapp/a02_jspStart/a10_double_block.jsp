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
	<h2>이중 블럭 구문 처리</h2>
	<form>
		가격:<input type="text" name="price"/><br>
		<input type="submit" value="가격전송"/>
	</form>
	<h3>조건문</h3>
	<%
	String priceStr = request.getParameter("price");
	if(priceStr!=null){
		int price = Integer.parseInt(priceStr);
				
		if(price>=3000){
	%>
			<h3>3000이상!!</h3>
		<%
		}else{
		%>
			<h3>3000미만!!</h3>
		
		<%
		}
		%>
	
	<%
	}
	%>
	<h3>반복문</h3>
	<%
	int ranGugu = (int)(Math.random()*8+2);
	// 2~@@까지 출력(테이블에서.)
	
	%>
	<table>
		<%
		for(int grade=2;grade<=ranGugu;grade++){
		%>
		<tr><th colspan="9"><%=grade%>단</th></tr>
		<tr>
			<% 
			for(int cnt =1;cnt<=9;cnt++){
			%>
			<td><%=grade%> x <%=cnt%> = <%=grade*cnt%></td>
			<% 
			}
			%>
		</tr>	
		<%
		}
		%>
	</table>
	
	
	
</body>
</html>