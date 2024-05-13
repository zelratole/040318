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
jsp
1. **동적 폼 데이터 처리**
   - 세 개의 텍스트 필드(`input type="text"`)가 있고 모두 같은 `name="userInput"`을 가질 때, 이 세 입력 값 모두를 배열로 받아서 각각의 값을 대문자로 변환하여 출력하시오.

2. **체크박스 기반 취미 선택**
   - 사용자에게 취미를 선택하게 하는 여러 체크박스(`input type="checkbox"`)를 제공하시오. 체크박스는 취미로 "독서", "영화 감상", "등산", "요리" 등을 포함해야 하며, 선택된 취미들을 배열로 받아서 선택한 취미 모두를 쉼표로 구분하여 출력하시오.

3. **다중 선택 드롭다운 목록**
   - 학생에게 선호하는 과목을 선택하게 하는 `select multiple` 드롭다운을 제공하시오. 가능한 선택지로 "수학", "과학", "역사", "예술"을 포함하고, 선택된 과목들을 배열로 받아서 각 과목을 별도의 문단으로 출력하시오.

4. **다중 입력 폼 제출**
   - 사용자로부터 세 가지 다른 정보를 받는 폼을 만드시오: 사용자의 이름(`input type="text"`), 사용자의 이메일(`input type="text"`), 그리고 사용자가 원하는 서비스 종류를 선택할 수 있는 여러 체크박스(`input type="checkbox"`). 입력된 모든 데이터를 배열로 받아 각 정보를 리스트 형식으로 출력하시오.

5. **통합 데이터 처리**
   - 사용자에게 세 가지 다른 유형의 데이터를 입력받을 수 있는 폼을 제공하시오: 이름(`input type="text"`), 관심있는 기술(`input type="checkbox"` 여러 개), 그리고 자격증(`select multiple`). 입력받은 모든 데이터를 배열로 처리하여, 이름은 대문자로, 선택된 기술과 자격증은 각각의 리스트로 출력하시오.


아래는 각 연습 문제에 대한 JSP 페이지 구현을 위한 상세 설명입니다. 이 연습은 HTML 폼 데이터를 JSP 페이지로 전송하고 처리하는 방법을 다룹니다.

### 1. 동적 폼 데이터 처리
**문제:** 세 개의 텍스트 필드(`input type="text"`)가 있고 모두 같은 `name="userInput"`을 가질 때, 이 세 입력 값 모두를 배열로 받아서 각각의 값을 대문자로 변환하여 출력하시오.

```html
<form action="processInputs.jsp" method="post">
    <input type="text" name="userInput">
    <input type="text" name="userInput">
    <input type="text" name="userInput">
    <input type="submit" value="Submit">
</form>
```

```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Input Processing</title>
</head>
<body>
    <% 
        String[] inputs = request.getParameterValues("userInput");
        if (inputs != null) {
            for (String input : inputs) {
                out.println("Input in uppercase: " + input.toUpperCase() + "<br>");
            }
        }
    %>
</body>
</html>
```

### 2. 체크박스 기반 취미 선택
**문제:** 사용자에게 취미를 선택하게 하는 여러 체크박스(`input type="checkbox"`)를 제공하시오. 체크박스는 취미로 "독서", "영화 감상", "등산", "요리" 등을 포함해야 하며, 선택된 취미들을 배열로 받아서 선택한 취미 모두를 쉼표로 구분하여 출력하시오.

```html
<form action="processHobbies.jsp" method="post">
    <input type="checkbox" name="hobby" value="독서"> 독서
    <input type="checkbox" name="hobby" value="영화 감상"> 영화 감상
    <input type="checkbox" name="hobby" value="등산"> 등산
    <input type="checkbox" name="hobby" value="요리"> 요리
    <input type="submit" value="Submit">
</form>
```

```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Hobby Processing</title>
</head>
<body>
    <% 
        String[] hobbies = request.getParameterValues("hobby");
        if (hobbies != null) {
            out.print("Selected hobbies: ");
            for (int i = 0; i < hobbies.length; i++) {
                out.print(hobbies[i]);
                if (i < hobbies.length - 1) {
                    out.print(", ");
                }
            }
        }
    %>
</body>
</html>
```

### 3. 다중 선택 드롭다운 목록
**문제:** 학생에게 선호하는 과목을 선택하게 하는 `select multiple` 드롭다운을 제공하시오. 가능한 선택지로 "수학", "과학", "역사", "예술"을 포함하고, 선택된 과목들을 배열로 받아서 각 과목을 별도의 문단으로 출력하시오.

```html
<form action="processSubjects.jsp" method="post">
    <select name="subject" multiple size="4">
        <option value="수학">수학</option>
        <option value="과학">과학</option
        <option value="역사">역사</option>
        <option value="예술">예술</option>
    </select>
    <input type="submit" value="Submit">
</form>
```

```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Subject Processing</title>
</head>
<body>
    <% 
        String[] subjects = request.getParameterValues("subject");
        if (subjects != null) {
            for (

String subject : subjects) {
                out.println("<p>Selected subject: " + subject + "</p>");
            }
        }
    %>
</body>
</html>
```
아래에는 JSP 페이지를 통해 사용자로부터 여러 입력 정보를 받고, 이를 처리하여 출력하는 두 가지 예시를 제공합니다. 이 예시들은 문제 4와 5에 해당합니다.

### 4. 다중 입력 폼 제출

**HTML 폼:**
```html
<form action="processMultipleInputs.jsp" method="post">
    <label for="name">이름:</label>
    <input type="text" name="name" id="name"><br>
    <label for="email">이메일:</label>
    <input type="text" name="email" id="email"><br>
    <label>원하는 서비스 종류 선택:</label>
    <input type="checkbox" name="service" value="Web Development"> 웹 개발
    <input type="checkbox" name="service" value="Digital Marketing"> 디지털 마케팅
    <input type="checkbox" name="service" value="Graphic Design"> 그래픽 디자인<br>
    <input type="submit" value="Submit">
</form>
```

**JSP 페이지 (`processMultipleInputs.jsp`):**
```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Multiple Input Processing</title>
</head>
<body>
    <h2>User Details:</h2>
    <p>Name: <%= request.getParameter("name") %></p>
    <p>Email: <%= request.getParameter("email") %></p>
    <h3>Selected Services:</h3>
    <ul>
        <% 
            String[] services = request.getParameterValues("service");
            if (services != null) {
                for (String service : services) {
                    out.println("<li>" + service + "</li>");
                }
            }
        %>
    </ul>
</body>
</html>
```

### 5. 통합 데이터 처리

**HTML 폼:**
```html
<form action="processComprehensiveData.jsp" method="post">
    <label for="name">이름:</label>
    <input type="text" name="name" id="name"><br>
    <label>관심있는 기술:</label>
    <input type="checkbox" name="technology" value="Java"> Java
    <input type="checkbox" name="technology" value="Python"> Python
    <input type="checkbox" name="technology" value="JavaScript"> JavaScript<br>
    <label for="certification">자격증:</label>
    <select multiple size="3" name="certification">
        <option value="Certified Java Developer">Certified Java Developer</option>
        <option value="Certified Python Programmer">Certified Python Programmer</option>
        <option value="Certified Web Designer">Certified Web Designer</option>
    </select><br>
    <input type="submit" value="Submit">
</form>
```

**JSP 페이지 (`processComprehensiveData.jsp`):**
```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Comprehensive Data Processing</title>
</head>
<body>
    <h2>User Profile:</h2>
    <p>Name: <%= request.getParameter("name").toUpperCase() %></p>
    <h3>Technologies Interested In:</h3>
    <ul>
        <% 
            String[] technologies = request.getParameterValues("technology");
            if (technologies != null) {
                for (String tech : technologies) {
                    out.println("<li>" + tech + "</li>");
                }
            }
        %>
    </ul>
    <h3>Certifications:</h3>
    <ul>
        <% 
            String[] certifications = request.getParameterValues("certification");
            if (certifications != null) {
                for (String cert : certifications) {
                    out.println("<li>" + cert + "</li>");
                }
            }
        %>
    </ul>
</body>
</html>
```

이 코드 예시들은 사용자로부터 여러 형태의 데이터를 받아 처리하고, 그 결과를 웹 페이지에 출력하는 방법을 보여줍니다. 이를 통해 HTML과 JSP를 활용한 웹 개발 기초를 익힐 수 있습니다.


오라클 SQL

### LIKE 키워드 검색 연습 문제
1. `ename` 컬럼에서 이름에 'A'가 포함되는 모든 직원의 이름을 조회하시오.
2. `job` 컬럼에서 'MAN'으로 시작하는 직책을 가진 모든 직원의 이름과 직책을 조회하시오.
3. `deptno` 컬럼에서 '10'으로 끝나는 부서 번호를 가진 직원들의 모든 정보를 조회하시오.
4. `ename`에서 두 번째 글자가 'L'인 모든 직원의 이름과 급여를 조회하시오.
5. `job`에서 글자 수가 5개이며, 중간 글자가 'A'인 직책을 가진 직원들의 이름을 조회하시오.

### 데이터 정렬 처리 연습 문제
6. `emp` 테이블에서 모든 직원을 급여(sal) 기준으로 오름차순으로 정렬하여 조회하시오.
7. `emp` 테이블에서 직원들을 부서 번호(deptno)별로 내림차순, 그리고 이름(ename)별로 오름차순으로 정렬하여 조회하시오.
8. `emp` 테이블에서 매니저 ID(mgr)와 급여(sal)를 기준으로 먼저 매니저 ID는 오름차순, 급여는 내림차순으로 정렬하여 조회하시오.
9. `emp` 테이블에서 직원들을 입사 날짜(hiredate)의 최근 순으로 정렬하여 조회하시오.
10. `emp` 테이블에서 직책(job)을 알파벳 순으로 정렬하고, 같은 직책 내에서는 급여(sal)를 내림차순으로 정렬하여 조회하시오.


# 토론문제
1. 데이터 검색에서 와일드카드를 사용하는 LIKE 문의 효율성에 대해 토론하시오. 어떤 상황에서 LIKE 검색이 비효율적일 수 있으며, 그러한 경우에 대해 어떻게 최적화할 수 있는지 논의하시오.
2. 데이터베이스에서의 정렬 처리(ORDER BY)가 결과에 미치는 영향에 대해 토론하시오. 대용량 데이터 처리에 있어서 정렬 기능의 사용이 성능에 미치는 영향을 어떻게 관리하고 최적화할 수 있는지 살펴보시오.


 --%>
</body>
</html>