<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="backweb.vo.Person"
    import="java.util.ArrayList"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/backweb/a00_com/a01_common.css" >
<title>Insert title here</title>
</head>
<body>
<%--
### 문제 5: 사용자가 HTML 폼을 통해 이름, 나이와 성별을 입력 받아 세션에 저장하고, 이를 다른 페이지에서 출력하는 JSP 페이지
	(누적 배열 처리)
	1) form 화면 구현
		name, age, loc
	2) 위 속성을 저장할 vo 객체 선언.		
	3) 위 요청값을 받아서 처리할 request객체 선언 및 요청값이 있을 때, VO객체
		에 할당 처리..
	4) List<Person> 형태의 session 설정 활용
		- 우선 초기에 있는지 여부 확인
			List<Person> plist = (List<Person>)session.getAttribute("plist");
			없을 때, session을 설정하고,
			있을 때는 해당 값을 불러온다.
		- 불러온 내용에 plist.add(p01); 요청값을 받아 할당할 객체를 넣는다.	
	5) 화면에 plist내용을 출력한다.
	6) 최종적으로 추가된 plist를 session에 다시 할당한다.
		session.setAttribute("plist", plist);
	
	
1. 요청값이 없는 초기화면..	
	1) form 화면, list가 출력되지 않는다.
2. [첫번째 입력시]form name, age, gender 입력..
	등록버튼을 클릭..
	1) 요청값은 있으나 ==> Person객체로 생성.. ==> session 객체를 list 할당.(1개 session  설정)
	2) session값은 없다.
3. [두번째 입력시]~~
	1) 요청값도 있고,
	2) session값도 있다.
		
	
 --%>
<%
String name = request.getParameter("name");
String ageStr = request.getParameter("age");
int age = 0; if(ageStr!=null) age = Integer.parseInt(ageStr);
String gender = request.getParameter("gender");
ArrayList<Person> plist = new ArrayList<Person>();
ArrayList<Person> sessPlist = (ArrayList<Person>)session.getAttribute("plist");
if(sessPlist!=null){
	// 세션값이 있을 때는 세션 List를 plist에 할당 한다.
	plist = sessPlist;
}
if(name!=null){
	Person p01 = new Person(name, age, gender, "");
	// 세션값이 있을 때는 기본 세션에서 더 추가가..
	// 세션값이 없을 때는 초기 1개 데이터 추가.
	plist.add(p01);	
	// 세션 저장 처리..
	session.setAttribute("plist",plist);
}
%> 
<h2>회원 등록 처리(session)</h2> 
<form>
	이름:<input type="text" name="name"/><br>
	나이:<input type="text" name="age"/><br>
	성별:<input type="text" name="gender"/><br>
	<input type="submit" value="등록"/><br>
</form> 
<h3>세션에 등록된 회원 정보 list</h3>
<table>
	<tr><th>이름</th><th>나이</th><th>성별</th></tr>
	<%
	for(Person p : plist){ 	
	%>
	<tr><td><%=p.getName()%></td><td><%=p.getAge()%></td><td><%=p.getGender()%></td></tr>
	<%
	}
	%>
</table>

</body>
</html>