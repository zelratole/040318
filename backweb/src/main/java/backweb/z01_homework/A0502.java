package backweb.z01_homework;

public class A0502 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/*
### JSP Form 요청값 처리 실습문제

1. **기본 정보 입력 폼 생성 및 처리**
   - HTML 폼을 사용하여 사용자의 이름, 이메일, 나이를 입력받는 JSP 페이지를 만드세요.
   - 제출 버튼을 클릭하면 입력된 정보를 다음 페이지에서 "안녕하세요, [이름]님, 당신의 이메일은 [이메일]이고 나이는 [나이]입니다." 형식으로 출력하세요.

2. **설문조사 폼 만들기**
   - 사용자의 의견을 묻는 설문조사 폼을 JSP로 만드세요. 질문은 최소 3개 이상 포함되어야 합니다.
   - 각 질문에 대한 답변을 체크박스로 선택할 수 있도록 하고, 폼을 제출하면 사용자가 선택한 답변을 모두 결과 페이지에서 출력하세요.

3. **회원 가입 및 인증 처리**
   - 사용자 ID와 비밀번호, 이름, 포인트를 입력받는 회원가입 폼을 만드세요.

4. **파일 업로드 폼 만들기**
   - 사용자가 이미지 파일을 업로드할 수 있는 폼을 만드세요.
   - 파일을 서버에 저장한 후, 저장된 파일의 이름과 함께 업로드 성공 메시지를 출력하세요.

5. **다중 항목 선택 및 처리**
   - 여러 가지 취미(영화 감상, 독서, 운동 등) 중에서 선택할 수 있는 체크박스를 포함한 폼을 만드세요.
   - 폼을 제출하면 선택된 모든 취미를 콤마로 구분하여 출력하는 페이지를 만드세요.

### Servlet 처리 실습문제

1. **서블릿을 사용한 간단하게 call05.do로 자기 소개서 화면 만드세요**
   - 결과는 HTML 페이지로 출력되어야 합니다.
 데이터를 처리하고 서버 측 로직을 구현하는 실습을 통해 웹 개발의 전반적인 이해를 높일 수 있습니다.

여기에는 JSP와 서블릿을 사용하여 각 실습 문제에 대한 기본적인 구현 방법을 제시합니다. 간결함을 위해 코드의 상세한 부분은 생략하고 주요 아이디어와 접근 방식을 중심으로 설명합니다.

### JSP Form 요청값 처리 실습문제 코드 예제

#### 1. 기본 정보 입력 폼 생성 및 처리

**inputForm.jsp**
```jsp
<html>
<head><title>Information Form</title></head>
<body>
<form action="processForm.jsp" method="post">
    이름: <input type="text" name="name"><br>
    이메일: <input type="text" name="email"><br>
    나이: <input type="text" name="age"><br>
    <input type="submit" value="제출">
</form>
</body>
</html>
```

**processForm.jsp**
```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head><title>Form Output</title></head>
<body>
<%
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    int age = Integer.parseInt(request.getParameter("age"));
%>
안녕하세요, <%=name%>님, 당신의 이메일은 <%=email%>이고 나이는 <%=age%>입니다.
</body>
</html>
```

#### 2. 설문조사 폼 만들기

**surveyForm.jsp**
```jsp
<html>
<head><title>Survey Form</title></head>
<body>
<form action="processSurvey.jsp" method="post">
    <p>좋아하는 음식은 무엇인가요? <input type="checkbox" name="food" value="피자">피자
    <input type="checkbox" name="food" value="파스타">파스타</p>
    <p>여가 활동은 무엇을 좋아하나요? <input type="checkbox" name="hobby" value="독서">독서
    <input type="checkbox" name="hobby" value="운동">운동</p>
    <input type="submit" value="제출">
</form>
</body>
</html>
```

**processSurvey.jsp**
```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head><title>Survey Results</title></head>
<body>
<%
    String[] foods = request.getParameterValues("food");
    String[] hobbies = request.getParameterValues("hobby");
%>
당신이 선택한 음식: <%= String.join(", ", foods) %><br>
당신이 선택한 여가 활동: <%= String.join(", ", hobbies) %>
</body>
</html>
```

### Servlet 처리 실습문제 코드 예제

#### 1. 간단한 자기 소개서

**MyInfoServlet.java**
```java
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class MyInfoServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<html><head><title>Self Introduction</title></head><body>");
        out.println("<h1>Welcome to My Info Page</h1>");
        out.println("<p>This is a simple servlet example.</p>");
        out.println("</body></html>");
    }
}
```

**web.xml 설정**
```xml
<web-app>
    <servlet>
        <servlet-name>myInfoServlet</servlet-name>
        <servlet-class>MyInfoServlet</servlet-class>
    </servlet>
    <servlet-mapping>
        <servlet-name>myInfoServlet</servlet-name>
        <url-pattern>/call05.do</url-pattern>
    </servlet-mapping>
</web-app>
```


 
### 토론 과제

1. **웹 폼을 통한 데이터 수집 시 발생할 수 있는 보안 위협은 무엇이며, 이를 방지하기 위한 대책은 무엇인가?**

2. **JSP와 Servlet을 사용하는 각기 다른 시나리오는 무엇이며, 각 기술의 장단점은 무엇인가?**

3. **HTTP 프로토콜의 비상태성을 극복하기 위한 세션과 쿠키의 사용 방법과 그 한계는 무엇인가?**

토론 과제 및 실습 문제에 대한 '정답'을 제시하는 것은 그 성격상 적절하지 않을 수 있습니다. 이러한 유형의 과제들은 학생들로 하여금 지식을 적용하고, 문제를 분석하는 방식을 향상시키기 위해 설계되었습니다. 그러나 토론 주제에 대한 일반적인 해설과 방향성을 제공할 수 있습니다.

### 토론 과제 해설

1. **웹 폼을 통한 데이터 수집 시 발생할 수 있는 보안 위협은 무엇이며, 이를 방지하기 위한 대책은 무엇인가?**
   - **보안 위협 예시**: SQL 인젝션, 크로스 사이트 스크립팅(XSS), 크로스 사이트 요청 위조(CSRF) 등
   - **대책**: 입력 데이터 검증 및 적절한 필터링, 사용자 세션 관리 강화, 보안 토큰 활용 등

2. **JSP와 Servlet을 사용하는 각기 다른 시나리오는 무엇이며, 각 기술의 장단점은 무엇인가?**
   - **JSP**: 주로 뷰(view)와 사용자 인터페이스 구성에 적합. JSP는 HTML 내에 Java 코드를 쉽게 삽입할 수 있게 해 줌.
   - **Servlet**: 주로 컨트롤러(controller) 및 백엔드 로직 처리에 사용. 세션 관리, 요청 및 응답 처리 등 복잡한 데이터 처리에 강점.
   - **장단점**: JSP는 쉬운 페이지 작성 가능, Servlet은 데이터 처리 및 세션 관리에 더 강력.

3. **HTTP 프로토콜의 비상태성을 극복하기 위한 세션과 쿠키의 사용 방법과 그 한계는 무엇인가?**
   - **사용 방법**: 사용자의 상태 정보를 서버에 저장하고, 사용자의 브라우저에는 이를 식별할 수 있는 쿠키를 저장.
   - **한계**: 쿠키 도용 및 세션 하이재킹의 위험, 사용자의 브라우저 설정에 따라 쿠키 사용이 제한될 수 있음.

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
  

 */
	}

}
