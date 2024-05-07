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
ex1) 이중 for문을 활용해서 3x3 테이블을 만드세요
ex2) 요청값으로 행:[   ], 열:[  ]을 입력받아  해당 테이블을 만드세요..
 --%>
<%
for(int row=1;row<=3;row++){
	for(int col=1;col<=3;col++){
		
	}	
}
%> 
<h2>테이블 만들기</h2>
<table>
	<%
	// 행!!
	for(int row=1;row<=3;row++){
	%>
		<tr>
		<%
		for(int col=1;col<=3;col++){
		%>
		<td><%=row%>행, <%=col%>열</td>
		<%
		}
		%>
		
		</tr>
	<%
	}
	%>
</table>
<h2>테이블만들기2(행/열)</h2>
<form>
	행:<input type="text" name="rows" size="2"/><br>
	열:<input type="text" name="cols" size="2"/><br>
	<input type="submit" value="테이블 생성"/>
</form>
<%
String rowsStr = request.getParameter("rows");
String colsStr = request.getParameter("cols");
if(rowsStr!=null){
	int rows = Integer.parseInt(rowsStr);
	int cols = Integer.parseInt(colsStr);
%>
<table>
	<%
	// 행!!
	for(int row=1;row<=rows;row++){
	%>
		<tr>
		<%
		for(int col=1;col<=cols;col++){
		%>
		<td><%=row%>행, <%=col%>열</td>
		<%
		}
		%>
		
		</tr>
	<%
	}
	%>
</table>


<%
}
%>

 
 
</body>
</html>