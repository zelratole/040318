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
  <h2>Connection pool을 활용한 Dept 검색</h2>

</div>
<%-- 
		
--%>
<div class="container">
	<form id="frm01" class="form"  method="post">
  	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	    <input placeholder="부서번호" name="deptno" value="${param.deptno}"  class="form-control mr-sm-2" />
	    <button class="btn btn-info" type="submit">Search</button>
 	</nav>
	</form>
   <%
   //     import="backweb.a04_database.*"  상단
   request.setAttribute("dao", new A03_DaoPool());
   %>	
   <c:set var="dept" value="${dao.getDeptJ(not empty param.deptno?param.deptno:0)}" />
   <%--
   1. not empty param.deptno?param.deptno:0 : 요청값이 deptno로 있을 때는 요청값을 처리하고,
   											  요청값이 deptno가 없을 떄는 0으로 처리
   2. dao.getDeptJ(부서번호요청) : 해당 dao 객체에서 0 또는 요청된 부서번호를 전달하여 Dept 객체를 리턴받는다.
   3. <c:set var="dept" value="메서드") : 위 결과로 dept객체가 리턴된 것을  dept이름으로 설정한다.
   4. ${dept.deptno} : dept객체의 getDeptno() 메서드를 el태그로 호출하여 화면에 출력해준다.											 
    --%>
   <table class="table table-hover table-striped">
   	<col width="33%">
   	<col width="33%">
   	<col width="34%">
    <thead>
      <tr class="table-success text-center">
        <th>번호</th>
        <th>부서명</th>
        <th>부서위치</th>
      </tr>
    </thead>	
    <tbody>
    	<tr><td>${dept.deptno}</td><td>${dept.dname}</td><td>${dept.loc}</td></tr>
    </tbody>
	</table>    
    
</div>
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">타이틀</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
		<form id="frm02" class="form"  method="post">
	     <div class="row">
	      <div class="col">
	        <input type="text" class="form-control" placeholder="사원명 입력" name="ename">
	      </div>
	      <div class="col">
	        <input type="text" class="form-control" placeholder="직책명 입력" name="job">
	      </div>
	     </div>
	    </form> 
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>
</body>
</html>