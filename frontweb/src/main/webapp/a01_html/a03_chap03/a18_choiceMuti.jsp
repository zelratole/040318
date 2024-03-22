<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>선택한 음악</h2>
	<h3>음악1:${paramValues.favMusics[0]}</h3>
	<h3>음악2:${paramValues.favMusics[1]}</h3>
	<h3>음악3:${paramValues.favMusics[2]}</h3>
	<h3>음악4:${paramValues.favMusics[3]}</h3>
	<h3>음악5:${paramValues.favMusics[4]}</h3>
</body>
</html>
<!-- 
# 요청데이터의 단일 데이터와 다중데이터 처리
1. 단일 데이터
	1) name="속성값"
		name 속성값이 화면에 하나만 있을 때, 일반적
		name="속성값"이 다중으로 있더라도 하나만 선택해야하는 type="radio"의
		경우는 단일 데이터 전송이라고 할 수 있다.
	2) 전송된 데이터 처리 코드(서버단에서 처리)
		${param.key} 형식으로 데이터를 받을 수 있다.	
2. 다중 데이터	
	1) name="속성값"
		name 속성값이 여러개인 경우를 말한다.
		type="checkbox" 인경우는 check가 된 데이터만 받는다.
		type="text" 인 경우는 모든 데이터를 받는다.
	2) 위와 같은 형태의 form 태그인 경우는 다중으로 데이터를 받아서 처리하는데
		일반적으로 배열로 데이터를 받아서 처리할 수 있다.
		${paramValues.name속성값[0]}
		${paramValues.name속성값[1]}
		${paramValues.name속성값[2]}
		${paramValues.name속성값[3]}
		...
		갯수만큰..
		
		
				

 -->







