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

### Oracle SQL 테이블 구조 만들기 문제

1. **사용자 테이블**
   - **테이블명**: `users`
   - **컬럼**:
     - `user_id` (NUMBER)
     - `username` (VARCHAR2(50))
     - `password` (VARCHAR2(50))

2. **도서 테이블**
   - **테이블명**: `books`
   - **컬럼**:
     - `book_id` (NUMBER)
     - `title` (VARCHAR2(100))
     - `author` (VARCHAR2(50))

3. **주문 테이블**
   - **테이블명**: `orders`
   - **컬럼**:
     - `order_id` (NUMBER)
     - `user_id` (NUMBER)
     - `order_date` (DATE)

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
   
   
 --%>

</body>
</html>