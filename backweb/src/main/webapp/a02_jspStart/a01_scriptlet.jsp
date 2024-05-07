<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/backweb/a00_com/a01_common.css" >
<link>
</head>
<body>
	<h1 align="center">jsp 시작 해볼까요</h1>
<%--
# jsp의 주석 처리 : 주석은 서버단에서 처리되기에 브라우저를 통해 전달되지 않는다.
 --%>	
<!-- 
# html 주석 처리 : 브라우저단에서 처리되는 부분이라 서버를 통해 브라우저에 전달된다..
 --> 
<%--
# jsp의 스크립트
1. jsp에서 자바코드가 들어가는 구분경계라고 할 수 있는 부분이 jsp 스크립트라고 할 수 있다.
2. 즉, java 코드와 html 코드를 구분하는 처리를 말한다.
3. 아래와 같이 3가지 영역을 나누어서 java코드와 html 코드들을 혼합해서 사용된다.
4. 종류
	1) 선언부(declaration)
		<%!
		
		%>
		사이에 들어가는 변수/상수/메서드는 선언부에 선언된 것으로
		java로 클래스로 비유하면 calss 바로 밑에 선언된 부분이다.(필드, 생성자, 메서드)
	2) scriptlet
		스크립트이 조각이라는 말로, 실제 실행되는 자바코드가 들어가는 부분이다.
		<%
		%>
		자바로 비유하면 main()선언된 부분으로 선언, 로직처리 등 화면을 위해 모든 기반되는
		처리를 하는 코드를 말한다.
	3) expression(표현식) 
		화면구성 <%=자바변수%>
		html 태그 중간 중간에 자바변수를 통해 출력할 내용이 있을 때, 사용된다.
 --%>
<%!
	// 선언부
	String name="사과";
	int getAge(){
		return 25;
	}
	class Person{
		private String name;
		private int age;
		Person(String name, int age){
			this.name = name;
			this.age = age;
		}
		
	}
%> 

<%
	Person p01 = new Person("홍길동",25);
	// scriptlet
	String adult = getAge()>=18?"성인":"미성년";
	for(int cnt=1;cnt<=10;cnt++){
%>
	<h2><%=cnt %>번째 반복문 수행..</h2>		
<%} %>
	<h2><%=p01.name %></h2>
	<h2><%=p01.age %></h2>
	
 	<h2>선언부 호출:<%=name %></h2> <!-- 출력 처리.. -->
 	<h2>선언부 호출:<%=getAge() %></h2>
 	<h2>스클릿틀릿 호출:<%=adult %></h2>
  
</body>
</html>