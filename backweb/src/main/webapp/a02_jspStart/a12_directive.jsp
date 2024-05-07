<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="backweb.vo.Student"
    import="backweb.vo.Person"
    import="java.util.List"
    import="java.util.ArrayList"
    %>
<%
	List<Person> plist = new ArrayList<Person>();
	plist.add(new Person("마길동",25,"서울"));
	plist.add(new Person("오길동",27,"수원"));
	plist.add(new Person("신길동",28,"대전"));
	for(Person p:plist){
		// 단위 객체 : 배열
		System.out.print(p.getName()+"\t");
		System.out.print(p.getAge()+"\t");
		System.out.print(p.getLoc()+"\n");
	}

	Student st = new Student(1, "홍길동", 70,80,90);
%>    
<%--
	<body>
		<h2>번호:<%=st.getNo()%>
		<h2>이름:<%=st.getName()%>
		<h2>국어:<%=st.getKor()%>
		<h2>영어:<%=st.getEng()%>
		<h2>수학:<%=st.getMath()%>
	
	</body>


# directive(디렉티브)
1. jsp 페이지에 상단에 설정 정보를 지정하는 부분
2. 디렉티브 구문
	<% 디렉티브  속성=속성값, ... %>
3. 디렉티브의 종류
	1) page : jsp페이지에 대한 정보를 지정, 문서의 타입, 출력 형식, 버퍼의
		크기, 에러페이지 등 대부분 페이지에 대한 정보 지정
		주요 속성
			contentType : jsp가 생성할 문서의 타입을 지정
			import : jsp 페이지에서 사용할 자바 클래스를 지정
			session : jsp 페이지가 세션을 사용할 지 여부 지정
			info : jsp페이지에 대한 설명을 입력
			errorPage : 에러가 발생할 때, 보여 줄 페이지 지정
			isErrorPage : 해당 페이지가 에러를 처리할 때 출력할 페이지인지 여부를 지정
	2) taglib : 사용할 태그 라이브러리를 지정
			보통 jsp에서 jstl을 설정한다.
	3) include : 다른 문서를 포함 할 때, 설정.
	
 --%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/backweb/a00_com/a01_common.css" >
<title>Insert title here</title>
</head>
<body>
		<h2>번호:<%=st.getNo()%>
		<h2>이름:<%=st.getName()%>
		<h2>국어:<%=st.getKor()%>
		<h2>영어:<%=st.getEng()%>
		<h2>수학:<%=st.getMath()%>
		<%--
		ex) Person 클래스(이름, 나이, 사는곳)을 backweb.vo에서 만들고,
		import 한후 객체를 생성하면서 초기값 설정하고, 화면에 출력하세요..
			
		 --%>
		<h2>Person 객체들</h2>
		<table>
			<tr><th>이름</th><th>나이</th><th>사는곳</th></tr>
			<%
			for(Person p:plist){
			%>
			<tr>
				<td><%=p.getName() %></td>
				<td><%=p.getAge() %></td>
				<td><%=p.getLoc() %></td>
			</tr>	
			<% 
			}
			%>
		
		</table>		
		<%--
		ex) Product 클래스로 물건명, 가격, 갯수를 선언하고, 
		List<Product>로 여러개의 물건객체를 할당한 후, 테이블로 출력하세요..
		
		 --%> 
		 
		 
</body>
</html>