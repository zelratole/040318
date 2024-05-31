<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="backweb.vo.*" 
    import="backweb.a04_database.*" 
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>
<%--


 --%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/a00_com/bootstrap.min.css" >
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css" >
<style>
	td{text-align:center;}
</style>
<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/bootstrap.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#btn01").click(function(){
			var num01Val = $("[name=num01]").val()
			var num02Val = $("[name=num02]").val()
			$.ajax({
				url:"z07_data.jsp",
				data:"num01="+num01Val+"&num02="+num02Val, 
				// num01=25&num02=30 				 # id=himan&pwd=7777    id[   ] pwd [  ] [로그인]
				// ==>1) ${param.num01} ${param.num02} 2) <jsp:useBean id="" class="@@@.Calculator" >
				
				
			})
		})
	});
</script>
</head>

<body>
<div class="jumbotron text-center">
  <h2>타이틀</h2>

</div>
<%-- 
# 사원 정보에
1. 사원명이나 직책명을 입력했을 때, 
	key in시 바로 서버에서 데이터를 가져와서 처리하는 내용 : 비동기적 처리.
2. 사원번호/회원아이디입력 후, 등록 여부 클릭시, 서버에 비동기적으로 학인해서
	등록여부를 알려주는 처리..
3. json데이터 차트 표현하기..	
# 단계별로
1. 요청값 서버에 넘긴 데이터 확인
2. 서버에 있는 데이터로 만들어진 화면 가져오기..
3. 서버에 있는 데이터로 만들어진 json데이터 가져오기..
4. 요청값으로 해당 요청값에 의해 검색된 json 데이터 가져오기..
--%>
<div class="container">
	<form id="frm01" class="form"  method="post">
  	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	    <input placeholder="첫번째 숫자" name="num01"  class="form-control mr-sm-2" />
	    <input placeholder="두번째 숫자" name="num02"  class="form-control mr-sm-2"/>
	    <button id="btn01" class="btn btn-info" type="button">합산</button>
 	</nav>
	</form>
   <table class="table table-hover table-striped">
    <thead>
      <tr class="table-success text-center">
        <th id="show">연산결과표현</th>
      </tr>
    </thead>
   </table>   
</div>
</body>
</html>