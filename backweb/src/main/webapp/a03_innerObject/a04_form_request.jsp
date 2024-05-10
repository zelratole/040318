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
# 다중행 입력 textarea
1. 요청데이터를 여러 행에 걸쳐서 입력할 때 사용!!
 --%>
	<h2>일기쓰기</h2>
	<form>
		<p>오늘의 일기를 작성해 주세요</p>
		<input type="date" name="date01"/>
		<textarea name="diaryEntry" rows="10" cols="50"></textarea><br>
		<input type="submit" value="일기저장"/>
	</form>
	
	<%
	String diaryEntry=request.getParameter("diaryEntry");
	String date01=request.getParameter("date01");
	if(diaryEntry!=null){
	%>
	<div><h3><%=date01%>/저장된 일기</h3><%=diaryEntry%></div>
	<%
	}
	%>
	<%--
	ex) 이름:[    ] 
	    방명록:
	    
	    [작성]
		이름과 방명록을 작성해보세요..~~
			
	 --%>
    <h1>방명록에 글 남기기</h1>
    <form>
        이름: <input type="text" name="name" required><br>
        메시지:<br>
        <textarea name="message" rows="4" cols="50" required></textarea><br>
        <input type="submit" value="글 남기기">
    </form>
    <%
    String name = request.getParameter("name");
    String message = request.getParameter("message");
    if(message!=null){
    %>
    <div>
    	<h2>방명록</h2>
    	<h3>이름:<%= name%></h3>
    	<p><%=message %></p>
    </div>
    <%
    }%>
    
    
    	 
</body>
</html>