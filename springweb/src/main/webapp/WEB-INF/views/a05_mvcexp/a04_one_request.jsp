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
		var reqName = "${param.name}"
		if(reqName!="") alert("이름:"+reqName)
		
		$("#reqBtn").click(function(){
			//alert("# 이동 #")
			location.href="call104.do?name=김철수"
			
		})
		
		
	});
</script>
</head>

<body>
<div class="jumbotron text-center">
  <h2>하나의 요청값을 처리하는 방법</h2>
  <h2>이름 요청값:${param.name1}</h2>
  <h2>물건명 요청값:${param.prodName}</h2>
  <a href="${path}/call104.do?name=신길동">신길동 이름 전송</a><br>
  <a href="${path}/call105.do?prodName=수박">수박 물건명 전송</a>

</div>
<%-- 
1. 요청값을 get방식을 때, 처리하는 방식
	1) js 이벤트 요청값 전송 처리 : location.href="컨트롤러?요청키=요청값"
	2) a href를 통해서 요청값 전송 처리
		a href="컨트롤러?요청키=요청값
	3) form에서 method방식을 get으로 변경 후.
		name="요청키"  value="요청값" 입력후, submit로 처리..
		
			
--%>
<div class="container">
	<form id="frm01" class="form"  action="call104.do"   method="get">
  	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	    <input placeholder="이름" name="name"  class="form-control mr-sm-2" />
	    <button class="btn btn-info" type="submit">Search(요청값 form 전달)</button>
	    <button type="button" class="btn btn-success" id="reqBtn" >요청값 전달 버튼</button>
 	</nav>
	</form>

	<%--
	ex) call105.do?prodName=사과
	가 호출 될 수 있게 하단에 form으로 처리하세요...
	 --%>
	<h2>물건명 요청값:${param.prodName}</h2> 
	<form id="frm01" class="form" action="call105.do"  method="get">
  	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	    <input placeholder="물건명" name="prodName"  class="form-control mr-sm-2" />
	    <button class="btn btn-info" type="submit">Search(요청값 form 전달)</button>
 	</nav>
	</form>	
	
   <table class="table table-hover table-striped">
   	<col width="10%">
   	<col width="50%">
   	<col width="15%">
   	<col width="15%">
   	<col width="10%">
    <thead>
    
      <tr class="table-success text-center">
        <th>번호</th>
        <th>제목</th>
        <th>작성자</th>
        <th>작성일</th>
        <th>조회</th>
      </tr>
    </thead>	
    <tbody>
    	<tr><td></td><td></td><td></td><td></td><td></td></tr>
    	<tr><td></td><td></td><td></td><td></td><td></td></tr>
    	<tr><td></td><td></td><td></td><td></td><td></td></tr>
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