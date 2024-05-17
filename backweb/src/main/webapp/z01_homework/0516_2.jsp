<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Display Message</title>
</head>
<body>
    <%
    String language = (String) session.getAttribute("language");
    String message = "";
    if (language == null) {
       language = "english";
    }
    
    switch (language) {
        case "english":
            message = "Hello, welcome!";
            break;
        case "korean":
            message = "안녕하세요, 환영합니다!";
            break;
        case "japenise":
            message = "こんにちは!";
            break;
        default:
            message = "Hello, welcome!";
     }
 
    %>
    <h2>메시지(세션에 있는 언어로 표현)</h2>
    <p><%=message %></p>
    
    <p><a href="0516_1.jsp">언어 변경</a></p>
</body>
</html>