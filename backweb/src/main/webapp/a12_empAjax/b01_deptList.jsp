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
		// form enter키 이벤트 방지..
		$("form").on("keydown",function(event){
			if(event.key === "Enter"){
				// 방지 처리하는 기능 수행..
				event.preventDefault();
				return false;
			}
		})	
		$("[name=dname],[name=loc]").keyup(function(event){
			if(event.key === "Enter"){
				ajaxSch()
			}
		})
		// 검색 버튼 클릭시..
		$("#schBtn").click(function(){
			ajaxSch()
		})
		ajaxSch()
		function ajaxSch(){
			$.ajax({
				url:"y01_deptList.jsp",
				data:$("form").serialize(),
				dataType:"json",
				success:function(deptList){
					var addHTML=""
					$(deptList).each(function(idx, dept){
						addHTML+="<tr>"
						addHTML+="<td>"+dept.deptno+"</td>"
						addHTML+="<td>"+dept.dname+"</td>"
						addHTML+="<td>"+dept.loc+"</td>"
						addHTML+="</tr>"
						
					})
					$("tbody").html(addHTML)
				},
				error:function(err){
					console.log(err)
				}
			})
		}		
		
	});
</script>
</head>

<body>
<div class="jumbotron text-center">
  <h2>부서정보리스트</h2>

</div>
<%-- 
# A07_DeptDao.java Dept.java 활용 부서정보 ajax 검색 처리		
--%>
<div class="container">
	<form id="frm01" class="form"  method="post">
  	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	    <input placeholder="부서명" name="dname"  class="form-control mr-sm-2" />
	    <input placeholder="부서위치" name="loc"  class="form-control mr-sm-2"/>
	    <button id="schBtn" class="btn btn-info" type="button">Search</button>
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
        <th>부서번호</th>
        <th>부서명</th>
        <th>부서위치</th>
      </tr>
    </thead>	
    <tbody>
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