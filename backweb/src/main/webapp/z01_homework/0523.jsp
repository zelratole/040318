<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="backweb.vo.*"   
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<fmt:requestEncoding value="utf-8"/>       
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${path}/a00_com/a01_common.css" >
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.7.1.js" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function(){
		//$("h2").text("시작");
		
	})
</script>
</head>
<body>
<%--
# 개념 이해, 실습문제
1. [개념] jstl의 반복문의 두가지 형식을 기본 예제와 함께 설명하세요
2. [실습] 1~100까지 5X20테이블로 출력하고, 해당 합산(1~100)을 최하단에 출력 처리하세요.
3. [개념] jstl의 varStatus 속성에 대하여 예제와 함께 설명하세요. 
4. [토론] java의 for구문과 jstl의 <c:forEach>구문의 유사점과 차이점에 대하여 정리해보세요.
5. [실습] 학생 6명의 점수를 임의의 점수(0~100)로 2x3테이블에 출력하세요
6. [실습] Student 클래스를 이용하여 객체형 배열로 학생번호 이름 국어 영어 수학 총점을 테이블로 출력하세요.

### 1. [개념] JSTL의 반복문의 두 가지 형식을 기본 예제와 함께 설명하세요

JSTL (JavaServer Pages Standard Tag Library)에서는 반복문을 사용할 수 있는 두 가지 형식을 제공합니다: `<c:forEach>`와 `<c:forTokens>`.

#### `<c:forEach>`
`<c:forEach>`는 컬렉션이나 배열, 혹은 범위의 각 요소를 순회할 때 사용합니다.

**예제:**
```jsp
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<body>
    <h2>Using <c:forEach> to iterate over a list</h2>
    <c:set var="numbers" value="${[1, 2, 3, 4, 5]}" />
    <ul>
        <c:forEach var="number" items="${numbers}">
            <li>${number}</li>
        </c:forEach>
    </ul>
</body>
</html>
```


### 2. [실습] 1~100까지 5X20테이블로 출력하고, 해당 합산(1~100)을 최하단에 출력 처리하세요

```jsp
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<body>
    <h2>1 to 100 in a 5x20 table with sum</h2>
    <table border="1">
        <c:set var="sum" value="0" />
        <c:forEach var="i" begin="1" end="100">
            <c:if test="${i % 5 == 1}">
                <tr>
            </c:if>
            <td>${i}</td>
            <c:set var="sum" value="${sum + i}" />
            <c:if test="${i % 5 == 0}">
                </tr>
            </c:if>
        </c:forEach>
    </table>
    <h3>Total Sum: ${sum}</h3>
</body>
</html>
```

### 3. [개념] JSTL의 varStatus 속성에 대하여 예제와 함께 설명하세요

`<c:forEach>` 태그의 `varStatus` 속성은 루프의 상태를 저장하는 변수를 지정할 때 사용됩니다. 이 변수를 통해 현재 반복 횟수, 처음인지 마지막인지 등의 정보를 얻을 수 있습니다.

**예제:**
```jsp
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<body>
    <h2>Using varStatus in <c:forEach></h2>
    <c:set var="names" value="${['John', 'Jane', 'Doe']}" />
    <ul>
        <c:forEach var="name" items="${names}" varStatus="status">
            <li>
                ${status.count}. ${name} 
                <c:if test="${status.first}">(First)</c:if>
                <c:if test="${status.last}">(Last)</c:if>
            </li>
        </c:forEach>
    </ul>
</body>
</html>
```

### 4. [토론] Java의 for구문과 JSTL의 <c:forEach>구문의 유사점과 차이점에 대하여 정리해보세요

#### 유사점:
1. **목적**: 둘 다 반복 처리를 위해 사용됩니다.
2. **범위 지정**: 반복 범위를 지정할 수 있습니다.
3. **반복 요소**: 컬렉션이나 배열의 각 요소를 순회할 수 있습니다.

#### 차이점:
1. **문법 및 사용 환경**: Java의 `for` 구문은 Java 코드 내에서 사용되며, JSTL의 `<c:forEach>` 구문은 JSP 페이지 내에서 사용됩니다.
2. **태그 속성**: `<c:forEach>`는 태그 속성을 통해 반복을 제어합니다 (`items`, `var`, `begin`, `end`, `step` 등). Java의 `for` 구문은 초기화, 조건, 증감식을 사용합니다.
3. **상태 정보 제공**: `<c:forEach>`는 `varStatus` 속성을 통해 반복 상태 정보를 제공합니다. Java의 `for` 구문은 직접 변수를 사용해 상태를 관리해야 합니다.
4. **서버사이드 렌더링**: `<c:forEach>`는 JSP 페이지가 서버에서 렌더링될 때 실행됩니다. Java의 `for` 구문은 일반적으로 애플리케이션 로직 내에서 실행됩니다.

### 5. [실습] 학생 6명의 점수를 임의의 점수(0~100)로 2x3테이블에 출력하세요

```jsp
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<body>
    <h2>2x3 table of student scores</h2>
    <table border="1">
        <c:set var="scores" value="${[78, 85, 92, 67, 74, 88]}" />
        <c:forEach var="score" items="${scores}" varStatus="status">
            <c:if test="${status.index % 3 == 0}">
                <tr>
            </c:if>
            <td>Student ${status.index + 1}: ${score}</td>
            <c:if test="${status.index % 3 == 2}">
                </tr>
            </c:if>
        </c:forEach>
    </table>
</body>
</html>
```

### 6. [실습] Student 클래스를 이용하여 객체형 배열로 학생번호 이름 국어 영어 수학 총점을 테이블로 출력하세요

```java
// Student.java
public class Student {
    private int id;
    private String name;
    private int korean;
    private int english;
    private int math;
    private int total;

    public Student(int id, String name, int korean, int english, int math) {
        this.id = id;
        this.name = name;
        this.korean = korean;
        this.english = english;
        this.math = math;
        this.total = korean + english + math;
    }

    // Getters
    public int getId() { return id; }
    public String getName() { return name; }
    public int getKorean() { return korean; }
    public int getEnglish() { return english; }
    public int getMath() { return math; }
    public int getTotal() { return total; }
}
```

```jsp
<%@ page import="java.util.List, java.util.ArrayList, Student" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    List<Student> students = new ArrayList<>();
    students.add(new Student(1, "John", 90, 80, 70));
    students.add(new Student(2, "Jane", 85, 75, 95));
    students.add(new Student(3, "Tom", 78, 88, 84));
    students.add(new Student(4, "Lucy", 92, 81, 77));
    students.add(new Student(5, "Mark", 76, 95, 89));
    students.add(new Student(6, "Emma", 88, 82, 91));

    request.setAttribute("students", students);
%>
<html>
<body>
    <h2>Student Scores Table</h2>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Korean</th>
            <th>English</th>
            <th>Math</th>
            <th>Total</th>
        </tr>
        <c:forEach var="student" items="${students}">
            <tr>
                <td>${student.id}</td>
                <td>${student.name}</td>
                <td>${student.korean}</td>
                <td>${student.english}</td>
                <td>${student.math}</td>
                <td>${student.total}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
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
	<h2></h2>

	
</body>
</html>