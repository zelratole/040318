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
	.input-group-text{width:100%;background-color:linen;
		color:black;font-weight:bolder;}
	.input-group-prepend{width:20%;}
	#chatArea{
		width:80%;height:200px;overflow-y:auto;text-align:left;
		border:1px solid green;
	}
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
		if(msg!="")
			alert(msg)
	});
</script>
</head>

<body>
<div class="jumbotron text-center">
  <h2>메일발송!!</h2>

</div>
<%-- 
		
--%>
<div class="container">
	<form method="post">
	<div class="input-group mb-3">	
		<div class="input-group-prepend ">
			<span class="input-group-text  justify-content-center">제목</span>
		</div>
		<input name="title" class="form-control" placeholder="메일발송 제목 입력"/>	
	</div>	
	<div class="input-group mb-3">	
		<div class="input-group-prepend ">
			<span class="input-group-text  justify-content-center">수신자</span>
		</div>
		<input name="receiver" class="form-control" placeholder="수신자 메일 등록" />
	</div>	
	<div class="input-group mb-3">	
		<div class="input-group-prepend "> 
			<span class="input-group-text  justify-content-center">발신자</span>
		</div>
		<input name="sender" class="form-control" value="${mailaccount}" readonly/>
		<!-- SMTP 서버를 차용해서 사용하기에 등록된 smtp 서버 계정으로 발신자로 전송이 됨.. -->
	</div>	
	<div class="input-group mb-3">	
		<div class="input-group-prepend ">
			<span class="input-group-text  justify-content-center">내용</span>
		</div>
		<textarea name="content" rows="10" class="form-control" ></textarea>
	</div>		
	
	<div style="text-align:right;">
			<input type="submit" class="btn btn-primary" value="메일발송" />
	</div>	
	</form>		
</div>
</body>
</html>