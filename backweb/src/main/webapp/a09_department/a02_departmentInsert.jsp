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
<style type="text/css">
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
  <h2>부서정보등록</h2>

</div>
<%-- 
	private int department_id;
	private String department_name;
	private int manager_id;
	private int location_id;
	부서아이디, 부서명, 관리자아이디, 위치아이디
				
--%>
<jsp:useBean id="dao" class="backweb.a04_database.A05_DepartDao"/>
<jsp:useBean id="ins" class="backweb.vo.Department"/>
<jsp:setProperty property="*" name="ins"/>
<c:if test="${not empty param.department_id}">
	<c:set var="insCnt" value="${dao.insertDepartment(ins)}"/>
	<script type="text/javascript">
	    var insCnt = ${insCnt}
	    if( insCnt>0){
	    	if( confirm("등록성공\n메인화면 이동시 확인") ){
	    		location.href="a01_departmentList.jsp";
	    	}
	    }else{
	    	alert("등록되지 않음!");
	    }			
	</script>
</c:if>

<div class="container">
	<form method="post">
		<div class="input-group mb-3">	
			<div class="input-group-prepend ">
				<span class="input-group-text  justify-content-center">부서아이디</span>
			</div>
			<input type="number"  name="department_id" class="form-control" value="0" />	
		</div>	
		<div class="input-group mb-3">	
			<div class="input-group-prepend ">
				<span class="input-group-text  justify-content-center">부서명</span>
			</div>
			<input name="department_name" class="form-control" value="" />	
		</div>	
		<div class="input-group mb-3">	
			<div class="input-group-prepend ">
				<span class="input-group-text  justify-content-center">관리자아이디</span>
			</div>
			<input type="number" name="manager_id" class="form-control" value="0" />	
		</div>	
		<div class="input-group mb-3">	
			<div class="input-group-prepend ">
				<span class="input-group-text  justify-content-center">위치아이디</span>
			</div>
			<input type="number"  name="location_id" class="form-control" value="0" />	
		</div>
					
	 	<div style="text-align:right;">
			<input type="submit" class="btn btn-success" value="등록" id="insBtn"/>
			<input type="button" class="btn btn-info" onclick="location.href='a01_departmentList.jsp'" value="조회리스트" id="mainBtn"/>
		</div>	   
	</form>	
</div>

</body>
</html>