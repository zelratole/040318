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
### JSP 서버와 클라이언트 간 요청 처리 관련 객관식 문제

1. JSP 페이지에서 클라이언트로부터 받은 요청 정보를 얻기 위해 사용하는 객체는 무엇입니까?
   - A) request
   - B) response
   - C) out
   - D) session
2. JSP 페이지에서 서버로부터 클라이언트에 전송 정보를 얻기 위해 사용하는 객체는 무엇입니까?
   - A) request
   - B) response
   - C) out
   - D) session


5. JSP에서 자바 코드를 작성할 때 사용하지 않는 태그는 무엇인가?
   - A) `<%! %>`
   - B) `<%= %>`
   - C) `<% %>`
   - D) `<# #>`


### JSP 스크립트 실습 연습문제

1. JSP 페이지에서 선언 태그를 사용하여 사용자 정의 함수를 작성하고, 그 함수를 호출하는 예제를 작성하세요.

2. JSP 페이지에서 사용자의 이름을 변수에 저장하고, 이를 출력하는 스크립트를 작성하세요.

3. JSP 페이지에서 사용자로부터 입력받은 나이를 변수에 저장하고, 이 나이가 성인인지 아닌지를 판별하여 출력하는 스크립트를 작성하세요.

3. JSP 페이지에서 서블릿으로 화면을 만들어서 결과를 받아 출력하게 처리하세요.

4. JSP 페이지에서 사용자로부터 입력받은 데이터를 이용하여 조건문을 사용해 특정 조건을 만족하는지 확인하고 결과를 출력하는 스크립트를 작성하세요.

5. **짝수/홀수 판별** - 임의로 숫자를 변수로 만들어 그 숫자가 짝수인지 홀수인지를 판별하여 출력하는 페이지를 만드세요.


아래는 JSP 페이지를 사용한 요청들에 대한 예제 코드들입니다.

### 1. 선언 태그를 사용하여 사용자 정의 함수 작성 및 호출

```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Custom Function Example</title>
</head>
<body>
<%!
    public int square(int x) {
        return x * x;
    }
%>
<%
    int result = square(5);
%>
<p>The square of 5 is: <%= result %></p>
</body>
</html>
```

### 2. 사용자의 이름을 변수에 저장하고 출력하기

```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Display Name</title>
</head>
<body>
<%
    String name = "John Doe";
%>
<p>Hello, <%= name %>!</p>
</body>
</html>
```

### 3. 사용자로부터 입력받은 나이를 저장하고 성인 여부 판별

```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Age Check</title>
</head>
<body>
<%
    String ageStr = request.getParameter("age");
    int age = Integer.parseInt(ageStr);
    String result = age >= 18 ? "성인입니다." : "미성년자입니다.";
%>
<form action="" method="get">
    나이: <input type="text" name="age" />
    <input type="submit" value="제출" />
</form>
<p><%= result %></p>
</body>
</html>
```

### 4. JSP에서 서블릿으로 데이터 전송 및 결과 출력

```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Servlet Response</title>
</head>
<body>
<form action="responseServlet" method="post">
    이름: <input type="text" name="name" />
    <input type="submit" value="전송" />
</form>
</body>
</html>
```
**responseServlet 서블릿 코드:**
```java
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    response.setContentType("text/html;charset=UTF-8");
    PrintWriter out = response.getWriter();
    String name = request.getParameter("name");
    out.println("<html><body>");
    out.println("<h1>Response from Servlet</h1>");
    out.println("<p>Received Name: " + name + "</p>");
    out.println("</body></html>");
}
```

### 5. 조건문을 사용해 입력 데이터에 따른 결과 출력

```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Condition Check</title>
</head>
<body>
<%
    String userInput = request.getParameter("data");
    String message = "default message";
    if (userInput != null && userInput.equals("hello")) {
        message = "Hello, world!";
    } else {
        message = "Try saying hello.";
    }
%>
<form action="" method="get">
    데이터: <input type="text" name="data" />
    <input type="submit" value="제출" />
</form>
<p><%= message %></p>
</body>
</html>
```

### 6. 짝수/홀수 판별

```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Even or Odd</title>
</head>
<body>
<%
    int number = 7; // 임의의 숫자
    String result = (number % 2 == 0) ? "짝수입니다." : "홀수입니다.";
%>
<p>Number <%= number %> is <%= result %>.</p>
</body>
</html>
```

이 예제들은 JSP 페이지에서 다양한 기능을 구현하는 방법을 보여줍니다.


### JSP 요청값과 서버 클라이언트 관련 토론 내용 문제

1. JSP 페이지에서 클라이언트로부터 전송된 데이터의 인코딩 문제를 어떻게 해결할 수 있을까요? 이에 대한 다양한 방법과 그 장단점을 논의해보세요.

2. 웹 서버 프로그램에서 서버와 클라이언트 처리 순서에 대하여 토론하고 정리해보세요

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

# 진행순서
1. 점검사항(~17:00)전달
2. 토론과제/개인과제 진행(~17:30)전달
   개인과제는 개별로 전달(1차로 전달 후)
3. 조별프로젝트형 과제 진행
  - 조별 일일 진행 내용 전달(~17:00)  
  

 --%>
</body>
</html>