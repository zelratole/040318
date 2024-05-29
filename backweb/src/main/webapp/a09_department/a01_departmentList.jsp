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
  <h2>부서정보관리</h2>

</div>
<%-- 
backweb.a04_database.A05_DepartDao  backweb.vo.Department  getDepartmentList(),insertDepartment


	private int department_id;
	private String department_name;
	private int manager_id;
	private int location_id;
	부서아이디, 부서명, 관리자아이디, 위치아이디		
--%>
<jsp:useBean id="dao" class="backweb.a04_database.A05_DepartDao"/>
<div class="container">
	<form id="frm01" class="form"  method="post">
  	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	    <input placeholder="부서명" name="department_name" value="${param.department_name}" class="form-control mr-sm-2" />
	    <button class="btn btn-info" type="submit">Search</button>
	    <button class="btn btn-success" onclick="location.href='a02_departmentInsert.jsp'"	 type="button">등록</button>
 	</nav>
	</form>
   <table class="table table-hover table-striped">
   	<col width="25%">
   	<col width="25%">
   	<col width="25%">
   	<col width="25%">
    <thead>
    
      <tr class="table-success text-center">
        <th>부서아이디</th>
        <th>부서명</th>
        <th>관리자아이디</th>
        <th>위치아이디</th>
      </tr>
    </thead>	
    <tbody>
    	<c:forEach var="d" items="${dao.getDepartmentList(param.department_name)}">
    	<tr><td>${d.department_id }</td><td>${d.department_name }</td>
    		<td>${d.manager_id }</td><td>${d.location_id }</td></tr>
    	</c:forEach>
    </tbody>
	</table>    
</div>



</body>
</html>