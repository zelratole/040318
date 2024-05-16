<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "backweb.vo.Student"    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/backweb/a00_com/a01_common.css" >
<title>Insert title here</title>
</head>
<body>
<%
Student stu = (Student)session.getAttribute("stu");
%>   
<h2>session에 저장된 객체 호출</h2>
<h3><%=stu.getNo() %></h3> 
<h3><%=stu.getName() %></h3> 
<h3><%=stu.getKor() %></h3> 
<h3><%=stu.getEng() %></h3> 
<h3><%=stu.getMath() %></h3> 

</body>
</html>