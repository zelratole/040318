<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 
html 주석문(코드로 로딩은 된다), 코드 처리 주석에 한계
 -->
<%--
jsp에서 사용하는 주석문, 코드 처리 주석을 완벽하게 하여,
특수구문 등 모든 주석이 가능하고, 화면에 보지 않게 처리 된다.

--%>

<% // scriptlet : 자바 코드가 들어가는 부분
// ?id=himan&pwd=7777
String id = request.getParameter("id");
String pwd = request.getParameter("pwd");
String result = "로그인 실패";
if(id.equals("himan") && pwd.equals("7777")){
	 result = "로그인 성공";
}
%>
<%--  
<%
%> : scriptlet 주로 자바코드를 사용하고 활용할 때, 사용된다.
 --%>
	<h2>로그인 결과:<%=result %></h2> 
	<%-- <%=변수%> : expression 출력시 주로 사용 
	
ex) a03_form.jsp 등록할 회원명:[   ][등록] ==> a04_registerMember.jsp
											 등록된 회원은 @@@ 입니다. 출력처리.
											 	
	--%>

</body>
</html>