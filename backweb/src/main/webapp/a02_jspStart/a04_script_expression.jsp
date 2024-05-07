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
# 요청값을 통한 데이터 전송과, 전송된 데이터를 처리하는 request객체,
이 request에 값에 따른 조건문과 반복문 처리..

1. 요청값에 따른 조건문 처리
2. 요청값에 따른 반복문 처리..
3. 요청값에 따른 조건/반복문 처리..


# 요청값에 따른 조건문 처리
1. form에 입력되는 데이터에 따라 여러가지 요청값을 서버에 전달하는 형식을 만들 수 있고,
	그 데이터에 따라서 조건문으로 처리할 수 있다.
2. 전달하는 데이터 type
	1) 일단, 모든 요청데이터는 문자열이다. 데이터를 입력하지 않고 요청하는 경우에 null로
		요청값이 전달된다.
	2) 이렇게 받는 문자열데이터를 숫자, boolean등 type을 바꾸어서 처리할 때가 있는데,
		일때, Integer.parseInt(), Double.parseDouble() 등을 활용한다.
	3) 물론 초기화면과 요청되는 데이터를 받는 페이지가 같을 때, 반드시 if(요청값!=null)
		전제 조건으로 하여야지 에러가 발생하지 않는다.
	ex) a05_calcuList.jsp
	    입장할 영화제목:[    ]
		입장할 인원수:[    ]
		입장료(1인당):[    ]
		[buy ticket]
		요청했을 때..
		구매한 영화 정보
		제목:@@@
		입장인원:@@@
		총비용:@@@
			
 --%>
 	<h2>숫자형 데이터 전송 처리</h2>
	<form>
		물건가격:<input type="text" name="price" value="0"/><br>
		물건갯수:<input type="text" name="cnt" value="0"/><br>
		<input type="submit"  value="서버에서 총계 계산"/><br>
	</form> 
	<%
	String priceStr = request.getParameter("price");
	String cntStr = request.getParameter("cnt");
	
	if(priceStr!=null){ // 초기 입력하지 않는 화면과 구분하기 위하여 처리
		int price = Integer.parseInt(priceStr); // 요청값는 문자열이기에 형변환 필요
		int cnt = Integer.parseInt(cntStr);
	%>
 		<h2>물건가격:<%=price %></h2>
 		<h2>물건갯수:<%=cnt %></h2>
 		<h2>총비용:<%=price*cnt %></h2><%-- 숫자형이기에 연산 가능. --%>
 	<%
 	}%>
</body>
</html>