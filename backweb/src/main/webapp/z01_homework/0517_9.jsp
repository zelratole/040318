<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.Date"
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
    // 세션의 최대 유효 시간(초)
    int maxInactiveInterval = session.getMaxInactiveInterval();

    // 마지막으로 세션에 접근한 시간(밀리초)
    long lastAccessedTime = session.getLastAccessedTime();

    // 현재 시간(밀리초)
    long currentTime = System.currentTimeMillis();

    // 남은 시간 계산(초)
    int remainingTime = maxInactiveInterval - (int) ((currentTime - lastAccessedTime) / 1000);

    // 남은 시간을 0보다 작게 표시하지 않기
    if (remainingTime < 0) {
        remainingTime = 0;
    }
%>

    <h1>현재 세션의 남은 시간: <%= remainingTime %> 초</h1>
</body>
</html>

</body>
</html>