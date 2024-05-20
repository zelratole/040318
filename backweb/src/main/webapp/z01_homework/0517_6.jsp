<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="backweb.vo.Person"
    import="java.util.ArrayList"
    import="com.google.gson.Gson"
    %>
<%
// session에 json데이터 할당.
session.setAttribute("pObj", new Person("홍길동",25,"수원"));
Person p01 = (Person)session.getAttribute("pObj");
Gson gson = new Gson();
String json = gson.toJson(p01);// 객체로 된 내용을 json 문자열로 할당 처리..
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
### 문제 6: 세션에 저장된 데이터를 JSON 형식으로 변환하여 클라이언트에 반환하는 JSP 페이지
 --%>
<%--
1. json 형식1
 --%> 
{"name":"홍길동","age":25,"loc":"수원"}<br>
<%--
2. json 형식2
 --%>
[
 {"name":"홍길동","age":25,"loc":"수원"},
 {"name":"신길동","age":27,"loc":"안산"},
] 
<br>
<%--
3. json 출력
--%>
<h3><%=json%></h3>
<h4></h4>

</body>
<script type="text/javascript">
	// 문자열 json 데이터를 자바스트립트에서 객체로 변환
	var p01 = JSON.parse('<%=json%>');
	console.log(p01)
	var h4Obj = document.querySelector("h4")
	h4Obj.innerText="이름:"+p01.name+", 나이:"+p01.age+", 사는곳:"+p01.loc
	
	


</script>
</html>