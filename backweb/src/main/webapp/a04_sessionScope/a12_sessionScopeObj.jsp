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
<%--
# 객체 저장하기..
1. session scope 객체가져와서 저장하기..
2. 필요로 하는 객체 클래스 만들기
3. import 클래스 및 객체 생성
4. session.setAtribute("객체명", new XXXX(초기값 설정));
5. 객체 참조변수 = (클래스)session.getAttribute("객체명");
6. <%=참조변수.getXXX()%> 호출..
 --%>
<%
session.setAttribute("stu", new Student(1,"홍길동",70,80,90));

Student stu = (Student)session.getAttribute("stu");
%>   
<h2>session에 저장된 객체 호출</h2>
<h3><%=stu.getNo() %></h3> 
<h3><%=stu.getName() %></h3> 
<h3><%=stu.getKor() %></h3> 
<h3><%=stu.getEng() %></h3> 
<h3><%=stu.getMath() %></h3> 
<a href="a13_sessionObj.jsp">세션 객체 호출</a>
<%--
# a13_sessionObj.jsp
<%
Student stu = (Student)session.getAttribute("stu");
%>   
<h2>session에 저장된 객체 호출</h2>
<h3><%=stu.getNo() %></h3> 
<h3><%=stu.getName() %></h3> 
<h3><%=stu.getKor() %></h3> 
<h3><%=stu.getEng() %></h3> 
<h3><%=stu.getMath() %></h3> 

 --%>
</body>
</html>