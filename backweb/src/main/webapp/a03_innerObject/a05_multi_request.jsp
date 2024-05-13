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
# 다중요청값 처리.
1. 요청key는 하나이고, 여러개의 데이터를 요청값으로 전송할 때를 말한다.
2. form 형식
	1) input type="text" name="요청키1" value="값1"
	   input type="text" name="요청키1" value="값2"
 --%>
 	<h2>다중 요청처리1</h2>
 	<h3>구매한 물건을 입력하세요.</h3>
	<form>
		물건1:<input type="text" name="product"/><br>
		물건2:<input type="text" name="product"/><br>
		물건3:<input type="text" name="product"/><br>
		물건4:<input type="text" name="product"/><br>
		물건5:<input type="text" name="product"/><br>
		<input type="submit" value="구매"/>
	</form>	
	<%
	String products[] = request.getParameterValues("product");
	if(products!=null){
		for(String product:products){	
	%>
		<h3><%=product%></h3>	
	<%
		}
	}
	%>
	<%--
	ex1) 좋아하는 색상(여러 개 입력) 출력
		1단계) 색상명 출력만
		2단계) 색테이블(h3)로 색상과 함께 출력	
	ex2) 과목별 점수를 입력받아 출력(동일한 요청key points)사용
		총점과 평균을 출력(2단계)
		Integer.parseInt() 활용..
	 --%>
	<h2>좋아하는 색상을 3가지 입력하세요</h2>
	<form>
		색상1:<input type="text" name="color"/><br>
		색상2:<input type="text" name="color"/><br>
		색상3:<input type="text" name="color"/><br>
		<input type="submit"/><br>
	</form>
	<%
	String [] colors = request.getParameterValues("color");
	if(colors!=null){
		for(String color:colors){
	%>
	<h3><%=color%></h3>
	<%	}
	}
	%>
	<%--
	ex) 좋아하는 음식 3가지를 입력하고 출력하세요....
	 --%>
	<h2>좋아하는 음식 3가지</h2>
	<form>
		음식1:<input type="text" name="food"/><br>
		음식2:<input type="text" name="food"/><br>
		음식3:<input type="text" name="food"/><br>
		<input type="submit" value="음식입력"/>
	</form>	 
	<%
	String foods[] = request.getParameterValues("food");
	if(foods!=null){
		for(int idx=0;idx<foods.length;idx++){
	%>
		<h3><%=idx+1%>) <%=foods[idx] %></h3>
	<%
		}
	}
	%>
	<h2>좋아하는 색상을 3가지 입력하세요(색테이블-영문입력시)</h2>
	<form>
		색상1:<input type="text" name="color"/><br>
		색상2:<input type="text" name="color"/><br>
		색상3:<input type="text" name="color"/><br>
		<input type="submit"/><br>
	</form>
	<%
	String colors2[]  = request.getParameterValues("color");
	if(colors2!=null){
		for(String color:colors2){
	%>
	<h3 style="background:<%=color%>;"><%=color%></h3>
	<%	}
	}
	%>
	<%
	String subjects[] = {"국어","영어","수학"};
	%>	
	<h2>과목별로 점수를 입력하세요</h2>
	<form>
	<%
	for(String sub:subjects){
	%>
		<%=sub%>:<input type="text" name="point" value="0"/><br>
	<%
	}
	%>
	<input type="submit" value="점수입력(통계처리)"/>
	</form>
	<%
	String []points = request.getParameterValues("point");
	if(points!=null){
		int tot = 0;
		for(int idx=0;idx<points.length;idx++){
			tot += Integer.parseInt(points[idx]);
		%>
			<h2><%=idx+1%>) <%=subjects[idx]%>:<%=points[idx]%></h2>
		<%
		}
		%>
		<h2>총점:<%=tot %>점, 평균:<%=tot/points.length%>점</h2>
	<%
	}
	%>
	
	
		
		 
</body>
</html>