<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
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
  <h2>회원관리</h2>

</div>
<%-- 
		
--%>
<div class="container">
	<form id="frm01" class="form"  method="post">
  	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	    <input placeholder="아이디" name="id"  class="form-control mr-sm-2" />
	    <input placeholder="이름" name="name"  class="form-control mr-sm-2"/>
	    <input placeholder="권한" name="auth"  class="form-control mr-sm-2"/>
	    <button class="btn btn-info" type="submit">Search</button>
 	</nav>
	</form>
	<%--
		아이디:[   ] 이름:[    ], 권한:[    ] [검색]
		id, name, auth
		아이디 이름 권한 포인트
		id   name auth point	
	
	 --%>
   <table class="table table-hover table-striped">
   	<col width="25%">
   	<col width="25%">
   	<col width="25%">
   	<col width="25%">
    <thead>
      <tr class="table-success text-center">
        <th>아이디</th>
        <th>이름</th>
        <th>권한</th>
        <th>포인트</th>
      </tr>
    </thead>	
    <tbody>
    	<c:forEach var="mem" items="${memberList }">
    	<tr><td>${mem.id}</td><td>${mem.name}</td><td>${mem.auth}</td><td>${mem.point}</td></tr>
    	</c:forEach>

    </tbody>
	</table>    
    
</div>

</body>
</html>