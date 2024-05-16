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
### JSP Session Scope 실습 문제

1. **간단한 사용자 인사말**
   - **문제**: 사용자가 자신의 이름을 입력하면, 이를 세션에 저장하고 다음 페이지에서 사용자 이름을 인사말과 함께 표시하세요.
   - **요구사항**:
     - 이름 입력 페이지 (`inputName.jsp`): 사용자로부터 이름을 입력받음
     - 인사말 표시 페이지 (`greetUser.jsp`): 세션에 저장된 이름을 불러와 인사말 표시

2. **세션을 이용한 방문자 수 카운트**
   - **문제**: 사용자가 페이지에 방문할 때마다 방문 횟수를 세션에 저장하고 이를 표시하세요.
   - **요구사항**:
     - 방문자 수 카운트 페이지 (`visitCount.jsp`): 세션을 이용해 방문 횟수를 기록하고 표시

3. **사용자 언어 선택**
   - **문제**: 사용자가 언어를 선택하면, 이를 세션에 저장하고 다음 페이지에서 선택된 언어를 사용하여 메시지를 표시하세요.
   - **요구사항**:
     - 언어 선택 페이지 (`selectLanguage.jsp`): 사용자가 언어를 선택
     - 메시지 표시 페이지 (`displayMessage.jsp`): 세션에 저장된 언어에 따라 메시지 표시

### JSP Session Scope 실습 문제

#### 문제 1: 간단한 사용자 인사말

**문제**: 사용자가 자신의 이름을 입력하면, 이를 세션에 저장하고 다음 페이지에서 사용자 이름을 인사말과 함께 표시하세요.

**요구사항**:

- **이름 입력 페이지 (`inputName.jsp`)**:
  - 사용자로부터 이름을 입력받는 폼을 작성합니다.
  - 입력받은 이름을 세션에 저장합니다.

- **인사말 표시 페이지 (`greetUser.jsp`)**:
  - 세션에서 저장된 이름을 불러와서 사용자에게 인사말을 표시합니다.

**inputName.jsp**:
```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Input Name</title>
</head>
<body>
    <h1>Enter your name</h1>
    <form action="greetUser.jsp" method="post">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name">
        <input type="submit" value="Submit">
    </form>
</body>
</html>
```

**greetUser.jsp**:
```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,javax.servlet.*,javax.servlet.http.*" %>
<%
    String name = request.getParameter("name");
    if (name != null && !name.isEmpty()) {
        session.setAttribute("userName", name);
    } else {
        name = (String) session.getAttribute("userName");
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>Greeting</title>
</head>
<body>
    <h1>Hello, <%= name %>!</h1>
</body>
</html>
```

#### 문제 2: 세션을 이용한 방문자 수 카운트

**문제**: 사용자가 페이지에 방문할 때마다 방문 횟수를 세션에 저장하고 이를 표시하세요.

**요구사항**:

- **방문자 수 카운트 페이지 (`visitCount.jsp`)**:
  - 세션을 이용해 방문 횟수를 기록하고 표시합니다.

**visitCount.jsp**:
```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,javax.servlet.*,javax.servlet.http.*" %>
<%
    Integer visitCount = (Integer) session.getAttribute("visitCount");
    if (visitCount == null) {
        visitCount = 0;
    }
    visitCount++;
    session.setAttribute("visitCount", visitCount);
%>
<!DOCTYPE html>
<html>
<head>
    <title>Visit Count</title>
</head>
<body>
    <h1>You have visited this page <%= visitCount %> times.</h1>
</body>
</html>
```

#### 문제 3: 사용자 언어 선택

**문제**: 사용자가 언어를 선택하면, 이를 세션에 저장하고 다음 페이지에서 선택된 언어를 사용하여 메시지를 표시하세요.

**요구사항**:

- **언어 선택 페이지 (`selectLanguage.jsp`)**:
  - 사용자가 언어를 선택합니다.
  - 선택한 언어를 세션에 저장합니다.

- **메시지 표시 페이지 (`displayMessage.jsp`)**:
  - 세션에 저장된 언어에 따라 메시지를 표시합니다.

**selectLanguage.jsp**:
```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Select Language</title>
</head>
<body>
    <h1>Select your language</h1>
    <form action="displayMessage.jsp" method="post">
        <label for="language">Language:</label>
        <select id="language" name="language">
            <option value="English">English</option>
            <option value="Spanish">Spanish</option>
            <option value="French">French</option>
        </select>
        <input type="submit" value="Submit">
    </form>
</body>
</html>
```

**displayMessage.jsp**:
```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,javax.servlet.*,javax.servlet.http.*" %>
<%
    String language = request.getParameter("language");
    if (language != null && !language.isEmpty()) {
        session.setAttribute("language", language);
    } else {
        language = (String) session.getAttribute("language");
    }

    String message = "";
    if ("Spanish".equals(language)) {
        message = "Hola, bienvenido!";
    } else if ("French".equals(language)) {
        message = "Bonjour, bienvenue!";
    } else {
        message = "Hello, welcome!";
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>Display Message</title>
</head>
<body>
    <h1><%= message %></h1>
</body>
</html>
```


### Oracle SQL 테이블 구조 만들기 문제

1. **사용자 테이블**
   - **테이블명**: `users`
   - **컬럼**:
     - `user_id` (NUMBER)
     - `username` (VARCHAR2(50))
     - `password` (VARCHAR2(50))
CREATE TABLE users (
    user_id NUMBER,
    username VARCHAR2(50),
    password VARCHAR2(50)
);

2. **도서 테이블**
   - **테이블명**: `books`
   - **컬럼**:
     - `book_id` (NUMBER)
     - `title` (VARCHAR2(100))
     - `author` (VARCHAR2(50))
CREATE TABLE books (
    book_id NUMBER,
    title VARCHAR2(100),
    author VARCHAR2(50)
);

3. **주문 테이블**
   - **테이블명**: `orders`
   - **컬럼**:
     - `order_id` (NUMBER)
     - `user_id` (NUMBER)
     - `order_date` (DATE)
CREATE TABLE orders (
    order_id NUMBER,
    user_id NUMBER,
    order_date DATE
);

### 조원들과 토론할 예제

1. **세션과 쿠키의 차이점**
   - **문제**: 세션과 쿠키의 차이점과 각 방식의 장단점에 대해 토론하세요.
   - **토론 주제**: 세션과 쿠키의 저장 위치, 보안성, 데이터 유지 기간 등

2. **효율적인 데이터베이스 테이블 설계**
   - **문제**: 효율적인 데이터베이스 테이블 설계를 위한 주요 고려사항에 대해 토론하세요.
   - **토론 주제**: 데이터 타입 선택,

3. **웹 애플리케이션의 상태 관리 방법**
   - **문제**: 웹 애플리케이션에서 상태를 관리하는 다양한 방법들에 대해 토론하세요.
   - **토론 주제**: 세션, 쿠키, 로컬 스토리지, 각 방법의 용도와 적합한 사용 시나리오
   

### 조원들과 토론할 예제

#### 1. 세션과 쿠키의 차이점

**문제**: 세션과 쿠키의 차이점과 각 방식의 장단점에 대해 토론하세요.

**토론 주제**:
- **저장 위치**:
  - **세션**: 서버 측에 저장됩니다. 세션 ID가 클라이언트의 쿠키에 저장되어 세션을 식별합니다.
  - **쿠키**: 클라이언트(사용자)의 브라우저에 저장됩니다.

- **보안성**:
  - **세션**: 보안성이 높습니다. 중요한 데이터가 서버에 저장되므로 클라이언트 측에서 접근할 수 없습니다.
  - **쿠키**: 보안성이 낮습니다. 클라이언트 측에 저장되므로 쉽게 접근할 수 있으며, 민감한 정보가 포함될 경우 보안 이슈가 발생할 수 있습니다.

- **데이터 유지 기간**:
  - **세션**: 브라우저를 닫으면 세션이 종료됩니다. 서버에서 설정한 시간 동안 유지됩니다.
  - **쿠키**: 설정된 만료 기간까지 유지됩니다. 만료 기간을 설정하지 않으면 브라우저를 닫을 때까지 유지됩니다.

- **장점**:
  - **세션**: 데이터의 보안성이 높고, 클라이언트에서 민감한 정보를 저장하지 않습니다.
  - **쿠키**: 간단한 데이터를 저장하는 데 유용하며, 클라이언트와 서버 간에 쉽게 데이터 전달이 가능합니다.

- **단점**:
  - **세션**: 서버의 자원을 소비합니다. 많은 사용자가 동시에 접속할 경우 서버의 부담이 증가할 수 있습니다.
  - **쿠키**: 데이터의 보안성이 낮으며, 클라이언트 측에서 조작될 가능성이 있습니다.

#### 2. 효율적인 데이터베이스 테이블 설계

**문제**: 효율적인 데이터베이스 테이블 설계를 위한 주요 고려사항에 대해 토론하세요.

**토론 주제**:
- **데이터 타입 선택**:
  - 적절한 데이터 타입을 선택하여 저장 공간을 최적화하고 성능을 향상시킵니다.
  - 예를 들어, 전화번호를 저장할 때 숫자로만 구성된 필드는 CHAR 또는 VARCHAR 대신 NUMBER를 사용할 수 있습니다.

- **인덱스 사용**:
  - 인덱스를 통해 검색 성능을 향상시킬 수 있습니다.
  - 자주 조회되는 컬럼에 인덱스를 설정하면 검색 속도가 빨라집니다.
  - 그러나 인덱스가 많아지면 삽입, 업데이트, 삭제 작업의 성능이 저하될 수 있으므로 균형을 맞춰야 합니다.

- **정규화**:
  - 데이터의 중복을 최소화하고, 데이터 무결성을 유지합니다.
  - 정규화를 통해 테이블 구조를 최적화하되, 지나치게 많은 조인이 발생하지 않도록 유의해야 합니다.

- **데이터 무결성**:
  - 제약 조건(Primary Key, Foreign Key, Unique, Check 등)을 설정하여 데이터의 무결성을 유지합니다.
  - 제약 조건을 통해 데이터 입력 시 유효성을 검사합니다.

- **확장성**:
  - 미래의 데이터 증가를 고려하여 테이블 설계를 합니다.
  - 필요한 경우 테이블을 쉽게 확장할 수 있도록 설계합니다.

#### 3. 웹 애플리케이션의 상태 관리 방법

**문제**: 웹 애플리케이션에서 상태를 관리하는 다양한 방법들에 대해 토론하세요.

**토론 주제**:
- **세션**:
  - 서버 측에서 사용자 상태를 관리합니다.
  - 로그인 상태, 장바구니 정보 등 사용자별 데이터를 관리하는 데 유용합니다.
  - 브라우저를 닫으면 세션이 종료되므로 민감한 정보를 안전하게 관리할 수 있습니다.

- **쿠키**:
  - 클라이언트 측에서 상태를 관리합니다.
  - 사용자 설정, 로그인 상태 등을 간단히 유지하는 데 유용합니다.
  - 만료 기간을 설정하여 지속적인 상태 관리를 할 수 있습니다.

- **로컬 스토리지**:
  - 클라이언트 측 브라우저에 데이터를 저장합니다.
  - 세션 스토리지와 달리 브라우저를 닫아도 데이터가 유지됩니다.
  - 큰 용량의 데이터를 저장할 수 있으며, 자바스크립트를 통해 쉽게 접근할 수 있습니다.

- **각 방법의 용도와 적합한 사용 시나리오**:
  - **세션**: 보안이 중요한 데이터나 사용자별 상태를 관리할 때 사용합니다. 예를 들어, 로그인 정보, 사용자 설정 등을 관리할 때 적합합니다.
  - **쿠키**: 사용자 추적이나 간단한 설정 정보를 저장할 때 사용합니다. 예를 들어, "Remember Me" 기능, 사용자 선호도 등을 저장할 때 적합합니다.
  - **로컬 스토리지**: 브라우저를 닫아도 유지되어야 하는 데이터를 저장할 때 사용합니다. 예를 들어, 사용자 인터페이스 설정, 오프라인 데이터 저장 등을 관리할 때 적합합니다.
  
  
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