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
여기 JSP 요청값과 세션 처리

### 문제 1
사용자가 HTML 폼을 통해 입력한 이름과 이메일을 받아 세션에 저장하는 JSP 페이지를 작성하시오. (POST 메서드 사용)

### 문제 2
로그인 폼에서 사용자 ID와 비밀번호를 입력 받아, 로그인 성공 시 세션에 사용자 ID를 저장하고, 실패 시 오류 메시지를 표시하는 JSP 페이지를 작성하시오. (정적 ID와 비밀번호 사용)

### 문제 3
세션에 저장된 사용자 ID를 이용하여 환영 메시지를 표시하는 JSP 페이지를 작성하시오. 세션에 사용자 ID가 없을 경우 로그인 페이지로 리다이렉트하시오.

### 문제 4
세션에 저장된 모든 데이터를 삭제하고 로그아웃 처리하는 JSP 페이지를 작성하시오. 로그아웃 후 로그인 페이지로 리다이렉트하시오.

### 문제 5
사용자가 HTML 폼을 통해 나이와 성별을 입력 받아 세션에 저장하고, 이를 다른 페이지에서 출력하는 JSP 페이지를 작성하시오.

### 문제 6
세션에 저장된 데이터를 JSON 형식으로 변환하여 클라이언트에 반환하는 JSP 페이지를 작성하시오.

### 문제 7
세션 타임아웃 시간을 10분으로 설정하고, 세션이 만료되었을 때 적절한 메시지를 표시하는 JSP 페이지를 작성하시오.

### 문제 8
세션을 사용하여 방문자 수를 카운트하는 JSP 페이지를 작성하시오. 방문할 때마다 세션에 저장된 카운트 값을 증가시키고, 이를 페이지에 표시하시오.

### 문제 9
세션에 저장된 사용자 정보를 수정하는 폼을 작성하고, 수정된 정보를 세션에 다시 저장하는 JSP 페이지를 작성하시오.

### 문제 10
로그인 시 사용자가 입력한 언어를 세션에 저장하고, 저장된 언어에 따라 환영 메시지를 다르게 표시하는 JSP 페이지를 작성하시오.

### 문제 1: 사용자가 HTML 폼을 통해 입력한 이름과 이메일을 받아 세션에 저장하는 JSP 페이지

#### form.jsp
```jsp
<!DOCTYPE html>
<html>
<head>
    <title>사용자 정보 입력</title>
</head>
<body>
    <form action="saveInfo.jsp" method="post">
        이름: <input type="text" name="name"><br>
        이메일: <input type="email" name="email"><br>
        <input type="submit" value="저장">
    </form>
</body>
</html>
```

#### saveInfo.jsp
```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession"%>
<!DOCTYPE html>
<html>
<head>
    <title>정보 저장</title>
</head>
<body>
<%
    String name = request.getParameter("name");
    String email = request.getParameter("email");

    HttpSession session = request.getSession();
    session.setAttribute("name", name);
    session.setAttribute("email", email);
%>
    <p>정보가 저장되었습니다.</p>
</body>
</html>
```

### 문제 2: 로그인 폼에서 사용자 ID와 비밀번호를 입력 받아, 로그인 성공 시 세션에 사용자 ID를 저장하고, 실패 시 오류 메시지를 표시하는 JSP 페이지

#### login.jsp
```jsp
<!DOCTYPE html>
<html>
<head>
    <title>로그인</title>
</head>
<body>
    <form action="loginProcess.jsp" method="post">
        사용자 ID: <input type="text" name="userID"><br>
        비밀번호: <input type="password" name="password"><br>
        <input type="submit" value="로그인">
    </form>
    <%
        if (request.getAttribute("errorMessage") != null) {
    %>
        <p style="color: red;"><%= request.getAttribute("errorMessage") %></p>
    <%
        }
    %>
</body>
</html>
```

#### loginProcess.jsp
```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession"%>
<%
    String userID = request.getParameter("userID");
    String password = request.getParameter("password");

    String validUserID = "admin";
    String validPassword = "1234";

    if (userID.equals(validUserID) && password.equals(validPassword)) {
        HttpSession session = request.getSession();
        session.setAttribute("userID", userID);
        response.sendRedirect("welcome.jsp");
    } else {
        request.setAttribute("errorMessage", "ID 또는 비밀번호가 잘못되었습니다.");
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }
%>
```

### 문제 3: 세션에 저장된 사용자 ID를 이용하여 환영 메시지를 표시하는 JSP 페이지. 세션에 사용자 ID가 없을 경우 로그인 페이지로 리다이렉트

#### welcome.jsp
```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession"%>
<%
    HttpSession session = request.getSession();
    String userID = (String) session.getAttribute("userID");

    if (userID == null) {
        response.sendRedirect("login.jsp");
    } else {
%>
    <p>환영합니다, <%= userID %>님!</p>
<%
    }
%>
```

### 문제 4: 세션에 저장된 모든 데이터를 삭제하고 로그아웃 처리하는 JSP 페이지. 로그아웃 후 로그인 페이지로 리다이렉트

#### logout.jsp
```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession"%>
<%
    HttpSession session = request.getSession();
    session.invalidate();
    response.sendRedirect("login.jsp");
%>
```

### 문제 5: 사용자가 HTML 폼을 통해 나이와 성별을 입력 받아 세션에 저장하고, 이를 다른 페이지에서 출력하는 JSP 페이지

#### ageGenderForm.jsp
```jsp
<!DOCTYPE html>
<html>
<head>
    <title>나이와 성별 입력</title>
</head>
<body>
    <form action="saveAgeGender.jsp" method="post">
        나이: <input type="number" name="age"><br>
        성별: 
        <select name="gender">
            <option value="male">남성</option>
            <option value="female">여성</option>
        </select><br>
        <input type="submit" value="저장">
    </form>
</body>
</html>
```

#### saveAgeGender.jsp
```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession"%>
<%
    int age = Integer.parseInt(request.getParameter("age"));
    String gender = request.getParameter("gender");

    HttpSession session = request.getSession();
    session.setAttribute("age", age);
    session.setAttribute("gender", gender);
%>
    <p>정보가 저장되었습니다. <a href="displayAgeGender.jsp">정보 보기</a></p>
```

#### displayAgeGender.jsp
```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession"%>
<%
    HttpSession session = request.getSession();
    Integer age = (Integer) session.getAttribute("age");
    String gender = (String) session.getAttribute("gender");

    if (age != null && gender != null) {
%>
    <p>나이: <%= age %></p>
    <p>성별: <%= gender %></p>
<%
    } else {
%>
    <p>정보가 없습니다.</p>
<%
    }
%>
```

### 문제 6: 세션에 저장된 데이터를 JSON 형식으로 변환하여 클라이언트에 반환하는 JSP 페이지

#### sessionDataToJson.jsp
```jsp
<%@ page language="java" contentType="application/json; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession"%>
<%@ page import="org.json.JSONObject"%>
<%
    HttpSession session = request.getSession();
    JSONObject json = new JSONObject();

    java.util.Enumeration<String> attributeNames = session.getAttributeNames();
    while (attributeNames.hasMoreElements()) {
        String attributeName = attributeNames.nextElement();
        Object attributeValue = session.getAttribute(attributeName);
        json.put(attributeName, attributeValue);
    }

    out.print(json.toString());
%>
```

### 문제 7: 세션 타임아웃 시간을 10분으로 설정하고, 세션이 만료되었을 때 적절한 메시지를 표시하는 JSP 페이지

#### setSessionTimeout.jsp
```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession"%>
<%
    HttpSession session = request.getSession();
    session.setMaxInactiveInterval(10 * 60); // 10분

    if (session.isNew()) {
        out.println("<p>세션이 시작되었습니다.</p>");
    } else if (session.getAttribute("userID") == null) {
        out.println("<p>세션이 만료되었습니다. 다시 로그인 해주세요.</p>");
    } else {
        out.println("<p>세션이 유지되고 있습니다.</p>");
    }
%>
```

### 문제 8: 세션을 사용하여 방문자 수를 카운트하는 JSP 페이지

#### visitCounter.jsp
```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession"%>
<%
    HttpSession session = request.getSession();
    Integer visitCount = (Integer) session.getAttribute("visitCount");

    if (visitCount == null) {
        visitCount = 1;
    } else {
        visitCount++;
    }

    session.setAttribute("visitCount", visitCount);
%>
    <p>방문 횟수: <%= visitCount %></p>
```

### 문제 9: 세션에 저장된 사용자 정보를 수정하는 폼을 작성하고, 수정된 정보를 세션에 다시 저장하는 JSP 페이지

#### editUserInfoForm.jsp
```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession"%>
<%
    HttpSession session = request.getSession();
    String name = (String) session.getAttribute("name");
    String email = (String) session.getAttribute("email");
%>
<!DOCTYPE html>
<html>
<head>
    <title>사용자 정보 수정</title>
</head>
<body>
    <form action="editUserInfo.jsp" method="post">
        이름: <input type="text" name="name" value="<%= name %>"><br>
        이메일: <input type="

email" name="email" value="<%= email %>"><br>
        <input type="submit" value="수정">
    </form>
</body>
</html>
```

#### editUserInfo.jsp
```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession"%>
<%
    String name = request.getParameter("name");
    String email = request.getParameter("email");

    HttpSession session = request.getSession();
    session.setAttribute("name", name);
    session.setAttribute("email", email);
%>
    <p>정보가 수정되었습니다.</p>
    <p>이름: <%= name %></p>
    <p>이메일: <%= email %></p>
```

### 문제 10: 로그인 시 사용자가 입력한 언어를 세션에 저장하고, 저장된 언어에 따라 환영 메시지를 다르게 표시하는 JSP 페이지

#### languageSelectionForm.jsp
```jsp
<!DOCTYPE html>
<html>
<head>
    <title>언어 선택</title>
</head>
<body>
    <form action="setLanguage.jsp" method="post">
        언어:
        <select name="language">
            <option value="ko">한국어</option>
            <option value="en">English</option>
        </select><br>
        <input type="submit" value="저장">
    </form>
</body>
</html>
```

#### setLanguage.jsp
```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession"%>
<%
    String language = request.getParameter("language");

    HttpSession session = request.getSession();
    session.setAttribute("language", language);

    response.sendRedirect("welcomeLanguage.jsp");
%>
```

#### welcomeLanguage.jsp
```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession"%>
<%
    HttpSession session = request.getSession();
    String language = (String) session.getAttribute("language");

    if (language == null) {
        response.sendRedirect("languageSelectionForm.jsp");
    } else {
        String welcomeMessage = "";
        if ("ko".equals(language)) {
            welcomeMessage = "환영합니다!";
        } else if ("en".equals(language)) {
            welcomeMessage = "Welcome!";
        }
%>
    <p><%= welcomeMessage %></p>
<%
    }
%>
```


# 다음의 각 내용에 대하여 개인별로 점검하시고, 내일 발전할 내용도 적어주세요.(조장님이 취합해서 전달)
1. 오늘 출결사항(전날결석, 9:00 지각/조퇴사유), 
   수업시간/프로젝트시간 수업시간 준수 및 교실밖 이동 자제 
   지각/결석시 사전에 연락 했는지? 
2. 수업에 긍정적인 마음으로 집중하였는가?
   	1) 수업시간에 수업관련 없는 채팅이나 동영상 등 방해되는 내용을 접하지 않았는가?
   	2) 수업시간에 효과적으로 집중을 하였는가?
3. 수업 진행 중, 어려웠던 내용과 해결해야할 과제.

# 조별로 공통적으로 이해가 힘든 내용이나 어려운 내용 정리해서 전달해주세요.

# 수업관련 건의사항이 있으면 전달 부탁드립니다.

 --%>
</body>
</html>