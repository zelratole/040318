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
		var msg = "${msg}"
		if(msg!="") alert(msg)
	});
</script>
</head>

<body>
<div class="jumbotron text-center">
  <h2>파일업로드연습</h2>
</div>
<%-- 
		
--%>
<div class="container">
	<form id="frm01" class="form"  enctype="multipart/form-data" method="post">
  	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	    <input type="file" name="report" placeholder="파일선택" class="form-control mr-sm-2" />
	    <button class="btn btn-info" type="submit">업로드</button>
 	</nav>
	</form>
   <table class="table table-hover table-striped">
   	<col width="20%">
   	<col width="80%">
    <thead>
    
      <tr class="table-success text-center">
        <th>번호</th>
        <th>파일명</th>
      </tr>
    </thead>	
    <tbody>
    	<c:forEach var="fname" items="${flist}" varStatus="sts">
    	<tr ondblclick="download('${fname}')"><td>${sts.count }</td><td>${fname }</td></tr>
    	</c:forEach>
    </tbody>
	</table>    
    <script>
    	function download(fname){
    		if(confirm(fname+" 다운로드 하시겠습니까2?")){
    			location.href="download.do?fname="+fname
    		}
    	}
    
    </script>
    
</div>
</body>
</html>