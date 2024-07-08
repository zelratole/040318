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
		
		
		$("#callBtn").click(function(){
			$.ajax({
				url:"data01.do",
				dataType:"json",
				success:function(result){
					// data.모델명  : d.addAttribute("data", new Person())
					var person = result.data
					// tbody의 td 중에서 1번째.. 2번째, 3번째에 데이터 할당 처리..
					$("tbody td").eq(0).text(person.name)
					$("tbody td").eq(1).text(person.age)
					$("tbody td").eq(2).text(person.loc)
					// <tr><td></td><td></td><td></td></tr>
				},
				error:function(err){
					console.log(err)
				}
				
			})
			
		})

		$("#callBtnReq").click(function(){
			$.ajax({
				url:"data03.do",
				data:"name="+$("[name=name]").val(),
				dataType:"json",
				success:function(result){
					// data.모델명  : d.addAttribute("person", new Person())
					var person = result.person
					// tbody의 td 중에서 1번째.. 2번째, 3번째에 데이터 할당 처리..
					var addHTML="<tr><td>"+person.name+"</td><td>"+
						person.age+"</td><td>"+person.loc+"</td></tr>"
					$("tbody").append(addHTML)
				},
				error:function(err){
					console.log(err)
				}
				
			})	
		})
		
		
	});
</script>
</head>

<body>
<div class="jumbotron text-center">
  <h2>ajax를 위한 form 처리</h2>

</div>
<%-- 
		
--%>
<div class="container">
	<form id="frm01" class="form"  method="post">
  	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	    <input placeholder="사원명" name="name"  class="form-control mr-sm-2" />
	    <button id="callBtn" class="btn btn-info" type="button">Person 호출</button>
	    <button id="callBtnReq" class="btn btn-info" type="button">Person 호출(요청)</button>
	    <button class="btn btn-success" 
	    	data-toggle="modal" data-target="#exampleModalCenter"
	        type="button">등록</button>
 	</nav>
	</form>
   <table class="table table-hover table-striped">
   	<col width="33%">
   	<col width="34%">
   	<col width="33%">
    <thead>
      <tr class="table-success text-center">
        <th>이름</th>
        <th>나이</th>
        <th>사는곳</th>
      </tr>
    </thead>	
    <tbody>
    	<tr><td></td><td></td><td></td></tr>
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