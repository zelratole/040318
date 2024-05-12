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
# sql #
1. **직원 조회**: 'CLERK' 직책을 가진 직원들의 이름과 급여를 조회하시오.
2. **연봉 비교**: 급여가 2000 이상인 직원들의 이름과 직책을 조회하시오.
3. **복수 조건 검색**: 직책이 'MANAGER' 이며, 부서 번호가 10인 직원들의 모든 정보를 조회하시오.
4. **범위 지정 검색**: 급여가 1500에서 3000 사이인 직원들의 이름과 급여를 조회하시오.
5. **Null 값 검색**: 커미션을 받지 않는 직원들의 이름과 직책을 조회하시오.
6. **복수 선택 검색**: 부서 번호가 10, 20, 30인 직원들의 이름과 부서 번호를 조회하시오.
7. **논리 연산 활용**: 급여가 1000 이상이며, 커미션을 받지 않는 직원들의 이름과 급여를 조회하시오.
8. **복잡한 논리 연산**: 직책이 'SALESMAN'이 아니면서, 부서 번호가 30이 아닌 직원들의 이름과 직책을 조회하시오.

# jsp #
1. **사용자 성별 입력 처리하기**: HTML 폼을 사용하여 사용자의 성별을 '남성' 또는 '여성'으로 선택받고, 이를 JSP 페이지에서 출력하도록 구현하시오.
2. **좋아하는 음료 선택하기**: 사용자가 좋아하는 음료를 선택할 수 있는 라디오 버튼을 포함한 폼을 만들고, 사용자가 선택한 음료를 출력하는 JSP 페이지를 작성하시오.
3. **피드백 메시지 제출**: 사용자로부터 자유롭게 피드백을 받을 수 있는 텍스트 에리어를 포함한 폼을 만들고, 제출된 피드백을 JSP 페이지에서 출력하시오.

### SQL 쿼리 예시
이 예시는 오라클 SQL을 사용하여 `emp` 테이블에서 요구되는 데이터를 조회하는 방법을 보여줍니다.

1. **직원 조회**
   ```sql
   SELECT ename, sal
   FROM emp
   WHERE job = 'CLERK';
   ```

2. **연봉 비교**
   ```sql
   SELECT ename, job
   FROM emp
   WHERE sal >= 2000;
   ```

3. **복수 조건 검색**
   ```sql
   SELECT *
   FROM emp
   WHERE job = 'MANAGER' AND deptno = 10;
   ```

4. **범위 지정 검색**
   ```sql
   SELECT ename, sal
   FROM emp
   WHERE sal BETWEEN 1500 AND 3000;
   ```

5. **Null 값 검색**
   ```sql
   SELECT ename, job
   FROM emp
   WHERE comm IS NULL;
   ```

6. **복수 선택 검색**
   ```sql
   SELECT ename, deptno
   FROM emp
   WHERE deptno IN (10, 20, 30);
   ```

7. **논리 연산 활용**
   ```sql
   SELECT ename, sal
   FROM emp
   WHERE sal >= 1000 AND comm IS NULL;
   ```

8. **복잡한 논리 연산**
   ```sql
   SELECT ename, job
   FROM emp
   WHERE job <> 'SALESMAN' AND deptno <> 30;
   ```

### JSP 페이지 구현 예시
이 예시는 사용자 입력을 처리하고 결과를 출력하는 JSP 페이지를 만드는 방법을 보여줍니다.

1. **사용자 성별 입력 처리하기**
   - HTML Form:
     ```html
     <form action="submitGender.jsp" method="post">
       <input type="radio" name="gender" value="Male" id="male">
       <label for="male">남성</label>
       <input type="radio" name="gender" value="Female" id="female">
       <label for="female">여성</label>
       <input type="submit" value="제출">
     </form>
     ```
   - JSP (`submitGender.jsp`):
     ```jsp
     <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
     <!DOCTYPE html>
     <html>
     <head>
     <title>성별 출력</title>
     </head>
     <body>
     <h1>선택한 성별: <%= request.getParameter("gender") %></h1>
     </body>
     </html>
     ```

2. **좋아하는 음료 선택하기**
   - HTML Form:
     ```html
     <form action="submitDrink.jsp" method="post">
       <input type="radio" name="drink" value="Coffee" id="coffee">
       <label for="coffee">커피</label>
       <input type="radio" name="drink" value="Tea" id="tea">
       <label for="tea">차</label>
       <input type="submit" value="제출">
     </form>
     ```
   - JSP (`submitDrink.jsp`):
     ```jsp
     <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
     <!DOCTYPE html>
     <html>
     <head>
     <title>음료 출력</title>
     </head>
     <body>
     <h1>선택한 음료: <%= request.getParameter("drink") %></h1>
     </body>
     </html>
     ```

3. **피드백 메시지 제출**
   - HTML Form:
     ```html
     <form action="submitFeedback.jsp" method="post">
       <textarea name="feedback" rows="4" cols="50"></textarea>
       <input type="submit" value="제출">
     </form>
     ```
   - JSP (`submitFeedback.jsp`):
     ```jsp
     <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
     <!DOCTYPE html>
     <html>
     <head>
     <title>피드백 출력</title>
     </head>
     <body>
     <h1>받은 피드백: <%= request.getParameter

("feedback") %></h1>
     </body>
     </html>
     ```

이러한 예시를 통해 실제 개발 환경에서 사용자 입력을 처리하고 결과를 웹 페이지로 출력하는 기본적인 방법을 이해할 수 있습니다.

# 일일 점검사항과 함께 전달 부탁드립니다.

 --%>
</body>
</html>