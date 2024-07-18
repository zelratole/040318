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
		$("h2").click(function(){
			$(this).css("background","yellow")
			var arr = $("div>div").map(function(index, obj){
				if(index%2==0){
					$(obj).css("background",'orange')
				}
				return $(this).text().toUpperCase() // 대문자로 변경
			})
			var show=""
			$(arr).each(function(idx, str){
				show+=str+","
			})
			$("p").text(show)
		})
	});
</script>
</head>

<body>
<div class="jumbotron text-center">
  <h2>Map 처리(클릭!!)</h2>
  <div>a</div>
  <div>B</div>
  <div>c</div>
  <div>D</div>
  <p></p>
</div>
</body>
</html>