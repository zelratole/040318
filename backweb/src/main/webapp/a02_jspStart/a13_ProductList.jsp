<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="backweb.vo.*"
    import="java.util.*"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/backweb/a00_com/a01_common.css" >
<title>Insert title here</title>
</head>
<body>
		<%--
		ex) Product 클래스로 물건명, 가격, 갯수를 선언하고, 
		List<Product>로 여러개의 물건객체를 할당한 후, 테이블로 출력하세요..
		
		 --%> 
<%
List<Product> plist =new ArrayList<Product>();
plist.add(new Product("사과",2000,2));
plist.add(new Product("바나나",4000,3));
plist.add(new Product("오렌지",300,5));
%>
<h2>구매 물품 리스트</h2>		 
<table>
	<tr><th>물건명</th><th>가격</th><th>갯수</th></tr>
	<%
	for(Product pro:plist){
	%>
	<tr><td><%=pro.getName() %></td>
		<td><%=pro.getPrice() %></td>
		<td><%=pro.getCnt() %></td></tr>
	<% 
	}
	%>

</table>
</body>
</html>