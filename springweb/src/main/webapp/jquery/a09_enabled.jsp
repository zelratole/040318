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
		
		$("form").submit(function(event){
			event.preventDefault(); // submit자동 처리 되는 옵션 방지 처리..(기본 이벤트 방지 역할..)
		})
		// ==> 이후에 submit()를 처리할려면 이벤트 핸들러 메서드 정의 $("form").submit() 직접적으로 처리
		//   처리 통해서 한다.
		// type="button"에 대한 가상클래스 선언 :button
		// <input type="button", <button > 태그는 모두 다 공통 css로 설정 가능..
		$(":button").css("border","3px red solid")
		// 비활성화 버트늘 눌렀을 때 처리 내용
		$("#disable").click(function(){
			// 활성화된 내용을 비활성화로 변경..
			$("input[type=text]:enabled").removeAttr("enabled") //  enabled 속성값 삭제..
			// 주의) 특정 속성을 변경시 기존 속성값을 삭제 후, 신규속성값 설정..
			$("input[type=text]:enabled").attr("disabled","disabled") //  enabled 속성값 삭제..
		})
		$("#enable").click(function(){
			// 활성화를 클릭시, 비활성화된 내용을 활성화 처리
			$("input[type=text]:disabled").removeAttr("disabled") //  enabled 속성값 삭제..
			// 주의) 특정 속성을 변경시 기존 속성값을 삭제 후, 신규속성값 설정..
			$("input[type=text]:disabled").attr("enabled","enabled") //  enabled 속성값 삭제..
		})
	});
	
</script>
</head>

<body>
<div class="jumbotron text-center">
  <h2>form요소 객체 활성/비활성화 처리</h2>
  <form>
  	<fieldset>
  		<input type="text" id="first">
  		<input type="text" id="second" disabled="disabled">
  		<input type="button"  id="enable" value="활성화">
  		<button  id="disable">비활성화</button>
  		<%--
  		# 주의
  		<button  id="disable">disable</button>
  		button 태그의 형태는 default type ? submit 이기에 그냥 이벤트 핸들러 메서드를
  		연결처리하면 바로 전송이 되어 처리가 원하는데로 되지 않는 경우가 많다.
  		왜냐하면? 서버로 전송된 이후 화면에서 처리되기 때문이다.
  		기능 이벤트 처리시는 반드시 type="button"으로 설정하여야 한다..
  		
  		 --%>
  		
  	</fieldset>
  </form>
</div>
<%-- 
# show/hide와 enabled/disabled의 차이
1. hide()시에 단순히, 보이지 않을 뿐이지, 요청객체로서 의미를 가지기에
	요청값이 전달 된다.
2. 하지만 disabled된 요청객체는 자체의 기능이 비활성화되 것이기에 
	요청객체로서 요청값 전달이 되지 않는다.(주의)
		
--%>
<div class="container">
	<form id="frm01" class="form"  method="post">
  	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	    <input placeholder="제목" name=""  class="form-control mr-sm-2" />
	    <input placeholder="내용" name=""  class="form-control mr-sm-2"/>
	    <button class="btn btn-info" type="submit">Search</button>
	    <button class="btn btn-success" 
	    	data-toggle="modal" data-target="#exampleModalCenter"
	        type="button">등록</button>
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