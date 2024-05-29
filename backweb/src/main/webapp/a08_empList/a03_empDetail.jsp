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
	.input-group-text{width:100%;background-color:linen;
		color:black;font-weight:bolder;}
	.input-group-prepend{width:20%;}
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
  <h2>사원정보상세(${param.empno})</h2>
</div>
<%-- 

backweb.a04_database.A04_EmpDao, backweb.vo.Emp  getEmp(int empno)
 --%>
<jsp:useBean id="dao" class="backweb.a04_database.A04_EmpDao"/>
<c:set var="emp" value="${dao.getEmp(param.empno)}"/> 
<div class="container">
	<form method="post">
	<%-- 사원번호 사원명 직책명 관리자번호 입사일(YYYY-MM-DD), 급여, 보너스, 부서번호  12:10~ --%>
	<div class="input-group mb-3">	
		<div class="input-group-prepend ">
			<span class="input-group-text  justify-content-center">사원번호</span>
		</div>
		<input type="number" name="empno" class="form-control" value="${emp.empno}" />	
		
		<div class="input-group-prepend ">
			<span class="input-group-text  justify-content-center">사원명</span>
		</div>
		<input type="text" name="ename" class="form-control" value="${emp.ename}" />			
	</div>	
	<div class="input-group mb-3">	
		<div class="input-group-prepend ">
			<span class="input-group-text  justify-content-center">직책명</span>
		</div>
		<input name="job" class="form-control" value="${emp.job}" />	
		<div class="input-group-prepend ">
			<span class="input-group-text  justify-content-center">관리자번호</span>
		</div>
		<input type="number" name="mgr" class="form-control" value="${emp.mgr}" />			
	</div>		
	<div class="input-group mb-3">	
		<div class="input-group-prepend ">
			<span class="input-group-text  justify-content-center">입사일</span>
		</div>
		<input type="date"  name="hiredateStr" class="form-control" 
				value='<fmt:formatDate value="${emp.hiredate}" pattern="yyyy-MM-dd"/>'  />	
		<div class="input-group-prepend ">
			<span class="input-group-text  justify-content-center">급여</span>
		</div>
		<input type="number" name="sal" class="form-control" value="${emp.sal}" />			
	</div>	
	<div class="input-group mb-3">	
		<div class="input-group-prepend ">
			<span class="input-group-text  justify-content-center">보너스</span>
		</div>
		<input type="number" name="comm" class="form-control" value="${emp.comm}" />	
		<div class="input-group-prepend ">
			<span class="input-group-text  justify-content-center">부서번호</span>
		</div>
		<input type="number" name="deptno"  class="form-control" value="${emp.deptno}" />			
	</div>			

	<div style="text-align:right;">
		<input type="button" class="btn btn-info" value="수정" id="uptBtn"/>
		<input type="button" class="btn btn-danger" value="삭제" id="delBtn"/>
		<input type="button" class="btn btn-success" onclick="location.href='a01_empList.jsp'" value="조회리스트" id="mainBtn"/>
	</div>	
	</form>		
</div>

</body>
</html>