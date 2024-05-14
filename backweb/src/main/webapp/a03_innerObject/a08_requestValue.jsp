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
http://localhost:7080/backweb/a03_innerObject/a08_requestValue.jsp?name=홍길동&age=30&pname=사과&price=2000




1. 요청값 url에서의 pattern과 그 결과가 화면에서 어떤 코드를 처리했을 때 출력이 되는지 확인/토론
ex) url pname물건명 데이터 할당, price가격 데이터 할당하고, 화면에 물건명과 가격이 출력되게 처리..
2. url 페이지 : a08_requestValue.jsp 
   데이터 전송 : ?name=홍길동&age=30&pname=사과&price=2000
==> method get방식으로 페이지와 데이터를 전송하는 것이다.

	
	 --%>
	<h2>단일 요청값</h2>
	<a href="a08_requestValue.jsp?name=마길동&age=20&pname=오렌지&price=1500">
		페이지와 요청값 전달..</a>
	<h3><%=request.getParameter("name")%></h3>
	<h3><%=request.getParameter("age")%></h3>
	<h3><%=request.getParameter("pname")%></h3>
	<h3><%=request.getParameter("price")%></h3>
	<h2>form 단일 요청값</h2>
	<form>
		이름:<input type="text" name="name"/><br>
		나이:<input type="text" name="age"/><br>
		물건명:<input type="text" name="pname"/><br>
		가격:<input type="text" name="price"/><br>
		<input type="submit"/>
	</form>
	<h2>form 단일 요청값(다른 페이지에 전송)</h2>
	<%--
	action 속성값이 없으면 현재 페이지에 요청값을 전달. action값이 있으면
	해당 페이지에 요청값을 전달..
	 --%>
	<form action="a09_requestData.jsp">
		이름:<input type="text" name="name"/><br>
		나이:<input type="text" name="age"/><br>
		물건명:<input type="text" name="pname"/><br>
		가격:<input type="text" name="price"/><br>
		<input type="submit"/>
	</form>	
	
	<%--
	form에 어떤 속성값이 위 요청값을 전달하는 url를 만들어 주는지 확인,[조원들과 개념 확인 완료]
	ex) age과 pname, price로 전송할 수 있게끔 form 요소를 추가하고 출력하세요..
	
	ex)
	a10_requestData.jsp에
		회원아이디(memberId)
		회원명(mname)
		회원포인트(mpoint)를 form으로 만들어서 전송하여
		그 결과를 확인하게 하세요.
		<h1>요청값을 받는 페이지</h1>
		<h2><%=request.getParameter("memberId")%></h2>
		<h2><%=request.getParameter("mname")%></h2>
		<h2><%=request.getParameter("mpoint")%></h2>
	 --%>
	<h2>회원 전송(a10_requestData.jsp)</h2> 
	<form action="a10_requestData.jsp">
		회원아이디:<input type="text" name="memberId"/><br>
		회원명:<input type="text" name="mname"/><br>
		회원포인트:<input type="text" name="mpoint"/><br>
		<input type="submit"/><br>
	</form> 
	<h2 onclick="sendData()">데이터를  js에 의해 전송(아래 항목을 입력하고 클릭하세요)</h2>
	회원아이디:<input type="text" id="memId"/><br>
	회원명:<input type="text" id="mnam"/><br>
	회원포인트:<input type="text" id="mpt"/><br>
	<script type="text/javascript">
	function sendData(){
		var memIdVal = document.querySelector("#memId").value;
		var mnamVal = document.querySelector("#mnam").value;
		var mptVal = document.querySelector("#mpt").value;
		// 전송 규칙을 갖추고 javascript에서 지원하는 페이지 이동 객체(location.href)로 속성값을 지정하여 전송 처리..
		location.href="a10_requestData.jsp?memberId="+memIdVal+"&mname="+mnamVal+"&mpoint="+mptVal;
		
	}
	
	</script>
	 
	 
	
</body>
</html>