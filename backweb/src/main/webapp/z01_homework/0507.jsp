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
**실습문제**


### 실습 문제 1: 날짜 정보를 요청하여 처리하기
- 사용자로부터 날짜를 입력받아, 그 날짜가 주말인지 평일인지를 판단하여 결과를 출력하는 웹 페이지를 작성하세요.
- HTML 폼을 사용하여 날짜를 입력 받고, 서버 사이드 스크립트(JSP)를 사용하여 날짜를 처리합니다.

### 실습 문제 2: 사용자 퀴즈 게임
- 간단한 퀴즈 형식의 게임을 만듭니다. 사용자에게 다섯 가지 간단한 질문을 하고, 각 질문에 대한 답을 입력 받습니다.
- 사용자가 모든 답을 제출하면, 서버에서 답을 평가하여 사용자에게 점수를 알려주는 페이지를 만듭니다.

### 실습 문제 3: 이미지 갤러리 필터링
- 여러 이미지 중 사용자가 선택한 카테고리에 따라 표시되는 이미지를 필터링하는 웹 페이지를 작성하세요.
- 예를 들어, 사용자가 '자연', '도시', '사람' 중 하나를 선택하면 해당 카테고리의 이미지만 표시되게 합니다.
- JavaScript와 CSS를 활용하여 클라이언트 사이드에서 동적으로 이미지를 필터링합니다.

### 실습 문제 4: 동적으로 변하는 배경색
- 사용자가 웹 페이지에 입력하는 색상 이름(또는 색상 코드)에 따라 페이지의 배경색이 변경되는 기능을 구현하세요.
- HTML 입력 필드를 사용하여 사용자로부터 색상을 입력 받고, JavaScript를 사용하여 페이지의 배경색을 변경합니다.

5. `getRequestURI()` 메소드와 `getContextPath()` 메소드의 차이를 코드 예제를 통해 설명하시오.
6. 서버의 이름과 포트 번호를 출력하는 JSP 페이지를 작성하시오.
7. JSP 페이지를 이용하여, 사용자가 입력한 값에 따라 서로 다른 HTML 테이블 구조를 동적으로 생성하는 코드를 작성하시오.
8. 세션 객체와 요청 객체를 사용하여 사용자의 세션 ID와 현재 요청의 IP 주소를 출력하는 JSP 페이지를 만드시오.
9. 리스트 객체에 여러 개인의 정보를 저장하고, 요청에 따라 이 정보를 HTML 형식으로 출력하는 JSP 페이지를 작성하시오.

위에서 제시된 JSP 실습 문제들에 대한 풀이를 제공하겠습니다. 각 문제는 실제 JSP 페이지 코드와 함께 설명됩니다.

### 실습 문제 1: 날짜 정보를 요청하여 처리하기

1. **HTML 폼과 JSP 처리**:
   ```jsp
   <%@ page import="java.text.SimpleDateFormat, java.util.Calendar, java.util.Date" %>
   <!DOCTYPE html>
   <html>
   <head>
       <title>Weekday or Weekend Checker</title>
   </head>
   <body>
       <h1>날짜 입력</h1>
       <form action="DateChecker.jsp" method="post">
           날짜 (yyyy-MM-dd): <input type="text" name="date">
           <input type="submit" value="Submit">
       </form>
       <%
           String dateString = request.getParameter("date");
           if (dateString != null) {
           	    int date = Integer.parseInt(dateString.substring(7,9));
           	   if(data%7==0 || data%7==6){ 
                out.println("<p>" + dateString + "는 주말입니다.</p>");
               } else {
                   out.println("<p>" + dateString + "는 평일입니다.</p>");
               }
           }
       %>
   </body>
   </html>
   ```

### 실습 문제 2: 사용자 퀴즈 게임

1. **HTML 폼과 JSP 처리**:
   ```jsp
   <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
   <!DOCTYPE html>
   <html>
   <head>
       <title>Simple Quiz Game</title>
   </head>
   <body>
       <h1>간단한 퀴즈</h1>
       <form action="QuizGame.jsp" method="post">
           1. 세계에서 가장 높은 산은? <input type="text" name="q1"><br>
           2. 태양계에서 가장 큰 행성은? <input type="text" name="q2"><br>
           3. 사과는 어느 계절의 과일인가요? <input type="text" name="q3"><br>
           4. 커피의 원산지는? <input type="text" name="q4"><br>
           5. 2021년 올림픽은 어디에서 열렸나요? <input type="text" name="q5"><br>
           <input type="submit" value="Submit">
       </form>
       <%
           String[] answers = {"에베레스트", "목성", "가을", "에티오피아", "도쿄"};
           int score = 0;

           if (request.getParameter("q1") != null) {
               for (int i = 1; i <= answers.length; i++) {
                   if (request.getParameter("q" + i).equals(answers[i-1])) {
                       score++;
                   }
               }
               out.println("<p>당신의 점수는 " + score + " / 5 입니다.</p>");
           }
       %>
   </body>
   </html>
   ```

### 실습 문제 3: 이미지 갤러리 필터링

1. **HTML과 JavaScript 처리**:
   - 이 문제는 클라이언트 사이드에서 처리하는 것이 적절하므로, 주로 HTML과 JavaScript를 사용합니다.
   - 간단한 이미지 갤러리와 카테고리에 따라 필터링하는 기능을 구현합니다.

### 실습 문제 4: 동적으로 변하는 배경색

1. **HTML과 JavaScript 처리**:
   ```html
   <!DOCTYPE html>
   <html>
   <head>
       <title>Change Background Color</title>
       <script>
           function changeBackgroundColor() {
               document.getElementById("form").submit();
               
           }
       </script>
   </head>
   <%
   String color=request.getParameter("color");
   if(color==null) color="") 
   %>
   <body style="background:<%=color%>" >
       <h1>배경색 변경</h1>
       <form>
       <input type="color" name="color" onchange="changeBackgroundColor()">
       </form>
   </body>
   </html>
   ```



**조별 토론 과제**

1. 웹 개발에서 `request` 객체의 중요성에 대해 토론하고, 다양한 웹 개발 상황에서 이 객체를 어떻게 활용할 수 있는지 사례를 공유하시오.
2. 웹 애플리케이션에서 클라이언트와 서버 간 데이터 전송 방법에 대하여 request, response객체로 설명하세요

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