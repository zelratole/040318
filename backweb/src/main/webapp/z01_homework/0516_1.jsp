<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Select Language</title>
</head>
<body>
    <h2>언어 선택</h2>
    <form method="post" >
        <label for="language">언어 선택:</label>
        <select name="language" id="language">
            <option value="english">English</option>
            <option value="korean">한국어</option>
            <option value="japenise">日本語</option>
        </select>
        <button type="submit">확인</button>
    </form>
    <%
    request.setCharacterEncoding("utf-8");    
    String name = request.getParameter("language");
    if(name!=null){
    	session.setAttribute("language",name);
    %>
    <h2>언어 session 처리 완료!!</h2>
    <h3 onclick="location.href='0516_2.jsp'">세션처리 확인하러가기! gogo!!</h3>
    <%
    }else{
    %>
    <h2>언어를 선택해서 전송해주세요!</h2>
    <%
    }
    %>
</body>
</html>
