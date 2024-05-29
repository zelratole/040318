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
  <h2>부서정보 등록!</h2>

</div>
<%-- 
A03_DaoPool.java에  deptInsert(Dept ins) 메서드 호출해서 등록 처리

// backweb.a04_database.A03_DaoPool // deptInsert getDeptList
// backweb.vo.Dept
1. 등록 처리
2. 등록된 내용 리스트
		
--%>
<jsp:useBean id="dao" class="backweb.a04_database.A03_DaoPool"/>
<jsp:useBean id="dept" class="backweb.vo.Dept"/>
<jsp:setProperty property="*" name="dept"/>
<c:if test="${not empty param.deptno}"> <%-- 요청값이 있을 때만 등록 처리 --%>
	<c:set var="insCnt" value="${dao.deptInsert(dept)}"/>
	<script type="text/javascript">
		// java프로그램 js로 처리 될 때 처리..
		var insCnt = ${insCnt}
		if(insCnt>0){
			alert("등록성공")
		}else{
			alert("등록실패")
		}
	</script> 
</c:if>

<div class="container">
	<form id="frm01" class="form"  method="post">
  	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	    <input placeholder="부서번호" name="deptno"  class="form-control mr-sm-2" />
	    <input placeholder="부서명" name="dname"  class="form-control mr-sm-2" />
	    <input placeholder="부서위치" name="loc"  class="form-control mr-sm-2" />
	    <button class="btn btn-info" type="submit">등록</button>
 	</nav>
	</form>
   <table class="table table-hover table-striped">
   	<col width="33%">
   	<col width="34%">
   	<col width="33%">
    <thead>   
      <tr class="table-success text-center">
        <th>부서번호</th>
        <th>부서명</th>
        <th>부서위치</th>
      </tr>
    </thead>	
    <tbody>
    	<c:forEach var="dept" items="${dao.getDeptList()}">
    		<tr><td>${dept.deptno}</td><td>${dept.dname}</td><td>${dept.loc }</td></tr>
    	</c:forEach>
    </tbody>
	</table>    
    
</div>
</body>
</html>