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
	<h2>form와 요청값이 같이 있는 처리</h2>
	<form> <%-- action 속성이 없으면 요청한 페이지 즉, 현재 페이지에 요청값을 전송한다 
	a07_form_request.jsp?id=himan2
	ex) a08_buyProd.jsp
		구매할물건:[    ]
		[구매]
		
		물건명:@@@
	--%>
		회원아이디:<input type="text" name="id"/><br>
		<input type="submit" value="등록"/>
	</form>
	<%--
	
	 --%>
	<%
	// 전송한 id를 다시 요청값으로 호출 한다.
	// 주의) 초기 페이지에는 id값이 없다는 것을 생각하여야 한다.
	String id = request.getParameter("id");
	if(id!=null){
	%>
	<h3>요청된 id:<%=id%></h3>
	<%}%>
</body>
</html>