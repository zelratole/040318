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
  <h2>파일리스트</h2>

</div>
<%-- 
		
--%>
<div class="container">
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
    		if(confirm(fname+" 다운로드 하시겠습니까?")){
    			location.href="downLoad.do?fname="+fname
    		}
    	}
    
    </script>
</div>

</body>
</html>