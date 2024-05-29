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
	
	});
</script>
</head>

<body>
<div class="jumbotron text-center">
  <h2>사원정보상세</h2>
</div>
<div class="container">
	<form method="post">
	<%-- 사원번호 사원명 직책명 관리자번호 입사일(YYYY-MM-DD), 급여, 보너스, 부서번호  12:10~ --%>
	<div class="input-group mb-3">	
		<div class="input-group-prepend ">
			<span class="input-group-text  justify-content-center">사원번호</span>
		</div>
		<input type="number" name="empno" class="form-control" value="0" />	
		
		<div class="input-group-prepend ">
			<span class="input-group-text  justify-content-center">사원명</span>
		</div>
		<input type="text" name="ename" class="form-control" value="" />			
	</div>	
	<div class="input-group mb-3">	
		<div class="input-group-prepend ">
			<span class="input-group-text  justify-content-center">직책명</span>
		</div>
		<input name="job" class="form-control" value="" />	
		<div class="input-group-prepend ">
			<span class="input-group-text  justify-content-center">관리자번호</span>
		</div>
		<input type="number" name="mgr" class="form-control" value="0" />			
	</div>		
	<div class="input-group mb-3">	
		<div class="input-group-prepend ">
			<span class="input-group-text  justify-content-center">입사일</span>
		</div>
		<input type="date"  name="hiredateStr" class="form-control" value="" />	
		<div class="input-group-prepend ">
			<span class="input-group-text  justify-content-center">급여</span>
		</div>
		<input type="number" name="sal" class="form-control" value="0" />			
	</div>	
	<div class="input-group mb-3">	
		<div class="input-group-prepend ">
			<span class="input-group-text  justify-content-center">보너스</span>
		</div>
		<input type="number" name="comm" class="form-control" value="0" />	
		<div class="input-group-prepend ">
			<span class="input-group-text  justify-content-center">부서번호</span>
		</div>
		<input type="number" name="deptno"  class="form-control" value="0" />			
	</div>			

	<div style="text-align:right;">
		<input type="submit" class="btn btn-success" value="등록" id="insBtn"/>
		<input type="button" class="btn btn-info" onclick="location.href='a01_empList.jsp'" value="조회리스트" id="mainBtn"/>
	</div>	
	</form>		
</div>

</body>
</html>