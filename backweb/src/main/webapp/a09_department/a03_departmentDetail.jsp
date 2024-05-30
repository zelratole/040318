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
  <h2>부서정보상세(${param.department_id})</h2>
</div>
<jsp:useBean id="dao" class="backweb.a04_database.A05_DepartDao"/>
<c:set var="dept" value="${dao.getDepart(not empty param.department_id?param.department_id:0)}"/> 
<div class="container">
	<form method="post">
		<div class="input-group mb-3">	
			<div class="input-group-prepend ">
				<span class="input-group-text  justify-content-center">부서아이디</span>
			</div>
			<input type="number"  name="department_id"  value="${dept.department_id}" class="form-control" value="0" />	
		</div>	
		<div class="input-group mb-3">	
			<div class="input-group-prepend ">
				<span class="input-group-text  justify-content-center">부서명</span>
			</div>
			<input name="department_name" class="form-control" value="${dept.department_name}" />	
		</div>	
		<div class="input-group mb-3">	
			<div class="input-group-prepend ">
				<span class="input-group-text  justify-content-center">관리자아이디</span>
			</div>
			<input type="number" name="manager_id" class="form-control" value="${dept.manager_id}" />	
		</div>	
		<div class="input-group mb-3">	
			<div class="input-group-prepend ">
				<span class="input-group-text  justify-content-center">위치아이디</span>
			</div>
			<input type="number"  name="location_id" class="form-control" value="${dept.location_id}" />	
		</div>
					
	 	<div style="text-align:right;">
			<input type="button" class="btn btn-primary" value="수정" id="uptBtn"/>
			<input type="button" class="btn btn-danger" value="삭제" id="delBtn"/>

			<input type="button" class="btn btn-info" onclick="location.href='a01_departmentList.jsp'" value="조회리스트" id="mainBtn"/>
		</div>	   
	</form>	
</div>
</body>
</html>