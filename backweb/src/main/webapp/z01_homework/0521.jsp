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
		$("h2").text("시작");
		
	})
</script>
</head>
<body>
<%--
# 개념 이해, 실습문제(개인별로 제출해주세요)
1. [토론] 웹프로그램밍에서 외부 프로그램을 선언하는 형식 3가지를 구분하여, 사용하는 장단점을 구분하여 토론해보세요.
2. [실습] <jsp:include> 형식을 포함하는 페이지와 포함된 페이지를 선언하고 데이터를 이름, 나이, 사는 곳을 전송하는 코드를 만드세요.
3. [실습] <%@ include file=""%> 형식으로 포함하는 페이지와 포함되는 페이지를 선언하고, 변수를 물건명, 가격, 갯수를 선언하고 공유
	되게 처리하세요.
4. [토론] el코드와 jsp의 script 비해 장점을 기술하세요
5. [실습] session 범위 el 코드를 객체 생성을 통해 할당한 후, 호출 하세요(VO-Calculator num01, num02)
            4칙연산자 결과 출력 처리.
6. [실습] request 범위로 Member객체를 선언하고, el로 로그인한 id, 포인트 출력,  himan//7777 로그인 성공 그외 로그인 실패
        를 3항 연산자로 출력되게 하세요
7. [개념] el을 이용해서 단일 데이터와 다중 데이터를 처리하는 기본 형식을 예제를 통해서 설명하세요
8. [토론] el태그의 요청값에 대한 처리 방식에 있어서 null, ""(공백), 숫자에 대한 처리 방식을 정리해보세요.
9. [실습] form에 삼각형의 밑면과 높이를 입력하는 form을 만들고, el로 요청값을 받아
            면적을 계산하여 100이 넘으면 big triangle, 그외는 small triangle 출력
10. [실습] jstl을 jsp에서 환경설정하는 방법을 기술 해보세요.
11. [개념] jstl로 변수를 선언하는 것과, 객체를 선언하고 el로 호출하는 기본 형식을 정리해보세요.
12. [플립러닝] java의 상속개념에 대하여 기본, overriding(재정의), polymorphism(다형성)가 무엇인지 왜 사용하는지 살펴보자
13. [플립러닝] Generic과 상속과의 관계를 살펴보고, 실무적으로 사용되는 경우를 파악해보자.
14. [플립러닝] List<Member> list = new ArrayList<Member>() 선언은 상속의 어떤 개념때문에 사용되는지 살펴보자.
15. [플립러닝] SQLInjection개념과 PreparedStatment 개념이 보안적으로 어떤 이점이 있는지 정리해보자.


## 1. [토론] 웹 프로그래밍에서 외부 프로그램을 선언하는 형식 3가지 구분 및 장단점
### 1.1 JSP Include Directive (`<%@ include file="..." %>`)
**장점**:
- 컴파일 시점에 포함: 서버가 JSP 페이지를 컴파일할 때 포함 파일을 삽입하므로, 한 번만 처리됨.
- 유지 보수 용이: 여러 JSP 페이지에서 동일한 내용을 쉽게 재사용할 수 있음.
**단점**:
- 수정 시 재컴파일 필요: 포함된 파일이 수정되면 모든 관련 JSP 페이지를 재컴파일해야 함.
- 성능 문제: 포함 파일이 클 경우, 컴파일 시간에 영향을 줄 수 있음.

### 1.2 JSP Include Action (`<jsp:include page="..." />`)
**장점**:
- 런타임에 포함: 요청 시점에 포함되어 최신 내용을 항상 반영.
- 동적 포함: 동적으로 다른 페이지나 데이터를 포함할 수 있어 유연성이 높음.
**단점**:
- 성능 저하: 요청 시마다 포함 파일을 처리하므로, 빈번한 호출 시 성능에 영향을 줄 수 있음.
- 복잡한 데이터 전송: 파라미터를 전송하는 방식이 상대적으로 복잡할 수 있음.

### 1.3 JavaScript 외부 파일 (`<script src="..."></script>`)
**장점**:
- 코드 분리: HTML과 JavaScript 코드를 분리하여 유지 보수성 향상.
- 캐싱: 브라우저가 외부 파일을 캐싱하여 로딩 속도 향상.
**단점**:
- 초기 로딩 지연: 외부 파일을 로드하는 동안 초기 로딩 시간이 길어질 수 있음.
- 종속성 관리: 여러 스크립트 간의 종속성을 관리하는 데 주의가 필요함.

## 2. [실습] `<jsp:include>` 형식을 포함하는 페이지와 포함된 페이지 선언 및 데이터 전송 코드

### 포함하는 페이지 (main.jsp)
```jsp
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>
    <title>Include Example</title>
</head>
<body>
    <jsp:include page="included.jsp">
        <jsp:param name="name" value="John Doe" />
        <jsp:param name="age" value="25" />
        <jsp:param name="location" value="New York" />
    </jsp:include>
</body>
</html>
```

### 포함된 페이지 (included.jsp)
```jsp
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>
    <title>Included Page</title>
</head>
<body>
    <p>Name: ${param.name}</p>
    <p>Age: ${param.age}</p>
    <p>Location: ${param.location}</p>
</body>
</html>
```

## 3. [실습] `<%@ include file="" %>` 형식으로 포함하는 페이지와 포함되는 페이지 선언 및 변수 공유

### 포함하는 페이지 (main.jsp)
```jsp
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ include file="included.jsp" %>
<html>
<head>
    <title>Include Directive Example</title>
</head>
<body>
    <p>물건명: ${itemName}</p>
    <p>가격: ${itemPrice}</p>
    <p>갯수: ${itemCount}</p>
</body>
</html>
```

### 포함된 페이지 (included.jsp)
```jsp
<%! String itemName = "Laptop"; %>
<%! int itemPrice = 1000; %>
<%! int itemCount = 2; %>
```

## 4. [토론] EL 코드와 JSP 스크립트의 장점 비교

### EL (Expression Language)
**

**장점**:
- **간결함**: JSP 스크립트보다 코드가 간결하고 읽기 쉽습니다.
- **표현식 평가**: 객체의 속성에 쉽게 접근하고 표현식을 평가할 수 있습니다.
- **태그 라이브러리 통합**: JSTL 및 기타 태그 라이브러리와 잘 통합됩니다.
- **안전성**: 스크립트 코드는 자바 코드 주입 문제를 야기할 수 있지만, EL은 그렇지 않습니다.

### JSP 스크립트
**장점**:
- **유연성**: 복잡한 로직을 구현할 수 있는 유연성이 있습니다.
- **강력한 기능**: 모든 자바 기능을 사용할 수 있습니다.
- **디버깅 용이**: 자바 디버깅 도구를 사용할 수 있습니다.

## 5. [실습] 세션 범위 EL 코드 - VO 객체 생성 및 할당, 호출

### VO 클래스 (Calculator.java)
```java
public class Calculator {
    private int num01;
    private int num02;

    // getters and setters
    public int getNum01() {
        return num01;
    }

    public void setNum01(int num01) {
        this.num01 = num01;
    }

    public int getNum02() {
        return num02;
    }

    public void setNum02(int num02) {
        this.num02 = num02;
    }

    public int add() {
        return num01 + num02;
    }

    public int subtract() {
        return num01 - num02;
    }

    public int multiply() {
        return num01 * num02;
    }

    public int divide() {
        return num01 / num02;
    }
}
```

### 세션 범위 EL 코드 (session.jsp)
```jsp
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%
    Calculator calculator = new Calculator();
    calculator.setNum01(10);
    calculator.setNum02(5);
    session.setAttribute("calculator", calculator);
%>
<html>
<head>
    <title>Session Scope EL Example</title>
</head>
<body>
    <p>Addition: ${sessionScope.calculator.add()}</p>
    <p>Subtraction: ${sessionScope.calculator.subtract()}</p>
    <p>Multiplication: ${sessionScope.calculator.multiply()}</p>
    <p>Division: ${sessionScope.calculator.divide()}</p>
</body>
</html>
```

## 6. [실습] Request 범위로 Member 객체 선언 및 EL로 로그인한 ID, 포인트 출력

### Member 클래스 (Member.java)
```java
public class Member {
    private String id;
    private int points;

    // getters and setters
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public int getPoints() {
        return points;
    }

    public void setPoints(int points) {
        this.points = points;
    }
}
```

### 로그인 처리 JSP (login.jsp)
```jsp
<%@ page contentType="text/html; charset=UTF-8" language="java" %>

<html>
<head>
    <title>Login Result</title>
</head>
<body>
	<h2>로그인</h2>
	<form>
		id:<input type="text" name="id"/><br>
		pwd:<input type="text" name="pwd"/><br>
		<input type="submit" value="로그인"/><br>
	</form>
	
    <p>ID: ${param.id}</p>
    <p>Points: ${param.pwd}</p>
    <p>${param.id == 'himan' && param.pwd=='7777' ? '로그인 성공' : '로그인 실패'}</p>
</body>
</html>
```

## 7. [개념] EL을 이용한 단일 데이터 및 다중 데이터 처리 예제

### 단일 데이터
```jsp
<%-- 단일 데이터 설정 --%>
<%
    String singleData = "Hello World!";
    request.setAttribute("singleData", singleData);
%>
<p>${requestScope.singleData}</p>
```

### 다중 데이터 (List)
```jsp
<%-- 다중 데이터 설정 --%>
<%
    List<String> dataList = Arrays.asList("Data1", "Data2", "Data3");
    request.setAttribute("dataList", dataList);
%>
<ul>
     <li>${dataList[0]}</li>
     <li>${dataList[1]}</li>
     <li>${dataList[2]}</li>
</ul>
```

## 8. [토론] EL 태그의 요청값 처리 방식 (null, "", 숫자)

### null
- **처리 방식**: EL은 null 값을 빈 문자열로 처리합니다.
- **예제**: `${nullVar}`는 빈 문자열로 출력됩니다.

### ""
- **처리 방식**: 빈 문자열은 그대로 빈 문자열로 처리됩니다.
- **예제**: `${emptyString}`는 빈 문자열로 출력됩니다.

### 숫자
- **처리 방식**: 숫자는 그대로 출력됩니다.
- **예제**: `${numVar}`는 숫자 값으로 출력됩니다.

## 9. [실습] 삼각형 면적 계산 및 EL로 출력

### Form 페이지 (triangleForm.jsp)
```jsp
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>
    <title>Triangle Area</title>
</head>
<body>
    <form action="triangleResult.jsp" method="post">
        밑면: <input type="text" name="base" /><br />
        높이: <input type="text" name="height" /><br />
        <input type="submit" value="계산" />
    </form>
</body>
</html>
```

### 결과 페이지 (triangleResult.jsp)
```jsp
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%
    double base = Double.parseDouble(request.getParameter("base"));
    double height = Double.parseDouble(request.getParameter("height"));
    double area = (base * height) / 2;
    request.setAttribute("area", area);
%>
<html>
<head>
    <title>Triangle Area Result</title>
</head>
<body>
    <p>Area: ${requestScope.area}</p>
    <p>${requestScope.area > 100 ? 'big triangle' : 'small triangle'}</p>
</body>
</html>
```

## 10. [실습] JSTL 환경설정 방법

### 웹 애플리케이션 설정 (web.xml)
backweb\src\main\webapp\WEB-INF\lib\jstl-1.2.jar

### JSP 페이지 설정
```jsp
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
```

## 11. [개념] JSTL로 변수 선언 및 EL 호출 기본 형식

### 변수 선언
```jsp
<c:set var="myVar" value="Hello, JSTL!" />
<p>${myVar}</p>
```

### 객체 선언 및 호출
```jsp
<%-- 객체 선언 --%>
<%
    Person person = new Person();
    person.setName("John Doe");
    request.setAttribute("person", person);
%>

<%-- EL로 객체 호출 --%>
<p>Name: ${requestScope.person.name}</p>
```

## 12. [플립러닝] Java의 상속 개념 (기본, Overriding, Polymorphism)

### 기본
- **개념**: 클래스 간에 속성과 메서드를 상속하여 코드 재사용성을 높임.
- **예제**: `class Child extends Parent { ... }`

### Overriding (재정의)
- **개념**: 상위 클래스의 메서드를 하위 클래스에서 재정의하여 특정 동작을 변경.
- **예제**:
    ```java
    @Override
    public void methodName() { ... }
    ```

### Polymorphism (다형성)
- **개념**: 여러 데이터 타입을 하나의 통일된 인터페이스로 다룰 수 있는 특성.
- **예제**:
    ```java
    Parent obj = new Child();
    obj.methodName();  // Child 클래스의 메서드 호출
    ```

## 13. [플립러닝] Generic과 상속 관계 및 실무 사용 예

### 관계
- **개념**: 제네릭은 클래스나 메서드가 다루는 데이터 타입을 일반화하여 코드의 재사용성을 높임.
- **예제**:
    ```java
    class Box<T> {
        private T value;
        public T getValue() { return value; }
        public void setValue(T value) { this.value = value; }
    }
    ```

### 실무 예
- **사용 예**: 데이터 구조 (예: 리스트, 맵

) 및 데이터 접근 객체(DAO)에서 많이 사용됨.

## 14. [플립러닝] `List<Member> list = new ArrayList<Member>()` 선언의 상속 개념

- **개념**: 다형성을 활용하여 인터페이스(List)로 객체를 선언하고, 구체적인 구현체(ArrayList)를 할당.
- **장점**: 코드의 유연성과 확장성을 높임.

## 15. [플립러닝] SQL Injection 개념 및 PreparedStatement의 보안 이점

### SQL Injection
- **개념**: 사용자가 입력한 데이터를 통해 SQL 쿼리를 조작하여 데이터베이스에 악의적인 명령을 실행.

### PreparedStatement의 보안 이점
- **보안**: 입력 데이터와 SQL 쿼리를 분리하여 SQL Injection을 방지.
- **성능**: 쿼리를 미리 컴파일하여 실행 속도를 향상.

### 예제
```java
String sql = "SELECT * FROM users WHERE username = ? AND password = ?";
PreparedStatement pstmt = connection.prepareStatement(sql);
pstmt.setString(1, username);
pstmt.setString(2, password);
ResultSet rs = pstmt.executeQuery();
```



# 다음의 각 내용에 대하여 개인별로 점검하시고, 내일 발전할 내용도 적어주세요.(조장님이 취합해서 전달)
1. 오늘 출결사항(전날결석, 9:00 지각/조퇴사유), 
   수업시간/프로젝트시간 수업시간 준수 및 교실밖 이동 자제 
   지각/결석시 사전에 연락 했는지? 
2. 수업에 긍정적인 마음으로 집중하였는가?
   1) 수업시간에 수업관련 없는 채팅이나 동영상 등 방해되는 내용을 접하지 않았는가?
   2) 수업시간에 효과적으로 집중을 하였는가?
3. 수업 진행 중, 어려웠던 내용과 해결해야할 과제.
4. 과제 진행 % 표기(5:20분에 따로 조별로 진행-어려웠던 부분포함)
   1조 
   홍길동  @@ % 진행 - 테이블구조변경 어려움
   
# 조별로 공통적으로 이해가 힘든 내용이나 어려운 내용 정리해서 전달해주세요.

# 수업관련 건의사항이 있으면 전달 부탁드립니다.




플립러닝(Flipped Learning) 또는 플립드 클래스룸(Flipped Classroom)은 전통적인 교수법과는 반대로 수업의 순서를 뒤집는 혁신적인 학습 방법입니다. 이 방법에서는 학생들이 교실 밖에서 새로운 내용을 학습하고, 교실 안에서는 그 내용을 기반으로 심화된 학습을 진행하게 됩니다. 주요 특징과 장점은 다음과 같습니다:

1. **사전 학습**: 학생들은 교실에 오기 전에 교사들이 제공한 학습 자료(동영상 강의, 읽을거리, 문제 등)를 활용해 새로운 내용을 먼저 학습합니다.
2. **교실 내 활동**: 교실에서는 학생들이 사전 학습한 내용을 바탕으로 토론, 프로젝트, 문제 해결 등의 활동을 통해 더 깊이 있는 이해를 도모합니다. 교사는 이 과정에서 학생들을 개별적으로 지도하고, 학습에 필요한 지원을 제공합니다.
3. **교사의 역할 변화**: 전통적인 교실에서 교사가 정보를 전달하는 역할을 했다면, 플립러닝에서는 학생들이 주도적으로 학습할 수 있도록 도와주는 역할을 합니다. 교사는 학생들이 학습 자료를 이해하고, 어려움을 극복할 수 있도록 지도합니다.
4. **학습의 개인화**: 학생들은 자신의 속도에 맞추어 사전 학습을 진행할 수 있으며, 교실에서는 자신이 이해하지 못한 부분을 교사와 동료 학생들과 상호작용하며 해결할 수 있습니다.
5. **활발한 참여**: 교실 활동을 통해 학생들이 적극적으로 학습에 참여할 수 있으며, 이는 학습 동기와 성취감을 높이는 데 기여합니다.

### 플립러닝의 장점
- **효율적인 시간 활용**: 교실 시간을 보다 효율적으로 사용하여 학생들이 심화 학습과 응용 학습에 집중할 수 있습니다.
- **학생 중심 학습**: 학생들이 학습의 주체가 되어 자기 주도적 학습 능력을 키울 수 있습니다.
- **맞춤형 지도**: 교사는 학생 개개인의 학습 상황을 더 잘 파악하고 맞춤형 지도를 제공할 수 있습니다.
- **협력 학습 강화**: 학생들 간의 협력과 상호작용을 통해 학습 효과를 극대화할 수 있습니다.

### 플립러닝의 도입 고려 사항
- **준비 시간**: 사전 학습 자료를 준비하는 데 시간이 많이 소요될 수 있습니다.
- **기술적 준비**: 동영상 강의 등 디지털 콘텐츠를 제공하기 위해 필요한 기술적 준비가 필요합니다.
- **학생의 책임감**: 학생들이 사전 학습을 성실히 수행해야 교실 활동이 효과적으로 이루어질 수 있습니다.
- **평가 방법**: 전통적인 평가 방법 외에 새로운 학습 평가 방법을 도입할 필요가 있습니다.

플립러닝은 학생들의 적극적인 참여와 교사와의 상호작용을 통해 학습 효과를 극대화할 수 있는 방법으로, 전 세계 많은 교육기관에서 점차 채택하고 있는 추세입니다.


--%>
	<h2></h2>

	
</body>
</html>