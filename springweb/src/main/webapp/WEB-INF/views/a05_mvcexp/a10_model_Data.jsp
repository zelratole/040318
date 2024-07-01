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
		var name = "${name}"
		alert(name)
	});
</script>
</head>

<body>
<div class="jumbotron text-center">
  <h2>모델데이터</h2>
  <c:forEach var="pt" items="${points}">
  <h3>${pt}</h3>
  </c:forEach>
  <h3>번호:${stu.no}</h3>
  <h3>이름:${stu.name}</h3>
  <h3>과목1점수:${stu.subject1}</h3>
</div>
<div class="container">
   <table class="table table-hover table-striped">
    <thead>
      <tr class="table-success text-center">
        <th>번호</th>
        <th>이름</th>
        <th>과목1</th>
      </tr>
    </thead>	<%--// stList no name subject1 --%>
    <tbody>
    	<c:forEach var="st" items="${stList}">
    	<tr><td>${st.no}</td><td>${st.name }</td><td>${st.subject1 }</td></tr>
    	</c:forEach>
    </tbody>
	</table>    
    
</div>
</body>
</html>