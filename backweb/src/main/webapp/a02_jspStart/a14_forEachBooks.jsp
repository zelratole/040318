<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="backweb.vo.Book"
    import="java.util.ArrayList"
    %>
<%
ArrayList<Book> blist = new ArrayList<Book>();
blist.add(new Book("자바기초","자바맨","프로그램사",32000));
blist.add(new Book("자바스크립트시작","프런트우먼","프로그램사",28000));
blist.add(new Book("오라클데이터베이스(초급)","데이터베이스맨","오라클사",33000));
blist.add(new Book("html중급","프런트맨","프로그램사",27000));
blist.add(new Book("스프링기초","백앤드맨","프로그램사",33000));
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/backweb/a00_com/a01_common.css" >
<title>Insert title here</title>
</head>
<body>
	<h2>도서 목록</h2>
	<table>
		<col width="25%"><col width="25%"><col width="25%"><col width="25%">
		<tr>
			<th>도서명</th>
			<th>저자</th>
			<th>출판사</th>
			<th>가격</th>
		</tr>
		<%
		for(Book bk:blist){
		%>
		<tr>
			<td><%=bk.getTitle() %></td>
			<td><%=bk.getAuthor() %></td>
			<td><%=bk.getPublisher() %></td>
			<td><%=bk.getPrice() %></td>
		</tr>
		<%
		}
		%>
	</table>
</body>
</html>