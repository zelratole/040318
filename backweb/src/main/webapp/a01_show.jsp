<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="backweb.a02_object.vo.Product"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
Product pro = new Product("사과",3000,2);
%>
<body>
<h2>물품정보</h2>
<table border>
	<tr><th>물건명</th><th>가격</th><th>갯수</th></tr>
	<tr>
		<td><%=pro.getName() %></td>
		<td><%=pro.getPrice() %></td>
		<td><%=pro.getCnt() %></td></tr>
</table>

</body>
</html>