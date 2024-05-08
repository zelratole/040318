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
회원정보리스트 처리하는 화면 구성
1. 기본 화면 구성( 화면설계/기본데이터 출력)
2. 단위 데이터 추출해서 class로 선언 Member
	id, name, role, point
3. import class, ArrayList
4. ArrayList 단위에 객체 생성과 할당.<%%> scriptlet 처리..
-----------------------------
5. foreach구문으로 처리..
 --%>
	<h2>회원리스트</h2>
	<table>
		<tr><th>아이디</th><th>이름</th><th>등급</th><th>포인트</th></tr>
		<tr><td>himan</td><td>홍길동</td><td>관리자</td><td>100000</td></tr>
		<tr><td>higirl</td><td>김미나</td><td>일반사용자</td><td>4000</td></tr>
		<tr><td>goodman</td><td>마길동</td><td>슈퍼사용자</td><td>10000</td></tr>
		<tr><td>ohman</td><td>오길동</td><td>일반사용자</td><td>5000</td></tr>
	</table>
</body>
</html>