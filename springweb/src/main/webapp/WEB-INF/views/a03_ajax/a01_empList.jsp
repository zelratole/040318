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
		$("form").on("keydown",function(event){
			/// 해당 이벤트가 event.keyCode는 13과 같은 event.key는 Enter키를
			// 입력시, 요청값을 서버에 전달하는 것을 
			if(event.key === "Enter"){
				// 방지 처리하는 기능 수행..
				event.preventDefault();
				return false;
			}
		})
		
		searchAjax()	
		$("#schBtn").click(function(){
			searchAjax()	
		})
		$("[name=ename], [name=job]").keyup(function(){
			if(event.keyCode==13){
				searchAjax()	
			}
		})
		
		function searchAjax(){
			$.ajax({
				url:"${path}/empListData2.do",
				method:"post",
				data:$("form").serialize(),
				dataType:"json",
				success:function(data){
					console.log(data)
					var empList = data.empList;
					var add="";
					$(empList).each(function(idx, emp){
						add+="<tr>"
						add+="<td>"+emp.empno+"</td>"
						add+="<td>"+emp.ename+"</td>"
						add+="<td>"+emp.job+"</td>"
						add+="<td>"+emp.sal.toLocaleString()+"</td>"
						add+="<td>"+emp.deptno+"</td>"
						add+="</tr>"
					})
					$("tbody").html(add)
				},
				error:function(err){
					console.log("에러발생")
					console.log(err)
				}
				
			})
			
		}
	});
</script>
</head>

<body>
<div class="jumbotron text-center">
  <h2>사원정보조회</h2>

</div>
<%-- 
		
--%>
<div class="container">
	<form id="frm01" class="form"  method="post">
  	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	    <input placeholder="사원명" name="ename" value=""  class="form-control mr-sm-2" />
	    <input placeholder="직책명" name="job" value="" class="form-control mr-sm-2"/>
	    <button id = "schBtn" class="btn btn-info" type="button">Search</button>
 	</nav>
	</form>
   <table class="table table-hover table-striped">
   	<col width="20%">
   	<col width="20%">
   	<col width="20%">
   	<col width="20%">
   	<col width="20%">
    <thead>
      <tr class="table-success text-center">
        <th>사원번호</th>
        <th>사원명</th>
        <th>직책명</th>
        <th>급여</th>
        <th>부서번호</th>
      </tr>
    </thead>	
    <tbody>

    </tbody>
	</table>    
</div>
</body>
</html>