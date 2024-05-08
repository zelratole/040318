<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="backweb.vo.Member"
    import="java.util.ArrayList"
    %>
<%
ArrayList<Member> mlist = new ArrayList<Member>();
mlist.add(new Member("himan","홍길동","관리자",100000));
mlist.add(new Member("higirl","김미나","일반사용자",4000));
mlist.add(new Member("goodman","마길동","수퍼유저",10000));
mlist.add(new Member("ohman","오길동","일반사용자",5000));
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
회원정보리스트 처리하는 화면 구성
1. 기본 화면 구성( 화면설계/기본데이터 출력)
2. 단위 데이터 추출해서 class로 선언 Member
	id, name, role, point
3. import class, ArrayList
4. ArrayList 단위에 객체 생성과 할당.<%%> scriptlet 처리..
5. foreach구문으로 처리..
 --%>
	<h2>회원리스트</h2>
	<table>
		<tr><th>아이디</th><th>이름</th><th>등급</th><th>포인트</th></tr>
		<%
		for(Member m : mlist){
		%>
		<tr>
			<td><%=m.getId() %>
			<td><%=m.getName() %>
			<td><%=m.getRole() %>
			<td><%=m.getPoint() %></tr>
		<% 
		}
		%>
		<%--
		a14_forEachBooks.jsp
		class Book
			속성 도서명, 저자, 출판사, 가격(title, author, publisher, price)
			
		--%>
		
	</table>
</body>
</html>