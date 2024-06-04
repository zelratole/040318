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
		$("[name=department_name]").keyup(function(){
			$.ajax({
				url:"z12_JSONdata.jsp",
				data:"department_name="+$(this).val(), 
				// $(this).val() 해당 이벤트 일어나는 value 전송
				dataType:"json", 
				// 내부적으로 json문자열을 객체로 변환처리 속성 var jArry = JSON.parse(data)
				success:function(jArry){
					//console.log(data);
					//var jArry = JSON.parse(data)  // json문자열을 json객체로 변환하는 과정..
					console.log(jArry)
					var addHTML = ""; // 화면에 json데이터를 html태그를 입력하 출력하기 위해 변수 선언.. 
					// for(Emp emp:empList){ emp.getEname()  }
					// for(Depart depart:jArry){ emp.getEname()  }
					$(jArry).each(function(idx, depart){ // $(배열).each(function(index번호, 단위 객체){})
						//console.log(idx)
						console.log(depart)
						addHTML+="<tr>"
						addHTML+="<td>"+depart.department_id+"</td>"
						addHTML+="<td>"+depart.department_name+"</td>"
						addHTML+="<td>"+depart.manager_id+"</td>"
						addHTML+="<td>"+depart.location_id+"</td>"
						addHTML+="</tr>"
					})
					$("tbody").html(addHTML)
				}
			})
		})
	});
</script>
</head>

<body>
<div class="jumbotron text-center">
  <h2>부서정보 데이터! 나오세요!!</h2>
</div>
<div class="container">
  	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	    <input placeholder="부서명입력" name="department_name"  class="form-control mr-sm-2" />
 	</nav>
   <table class="table table-hover table-striped">
   	<col width="25%">
   	<col width="25%">
   	<col width="25%">
   	<col width="25%">
    <thead>
      <tr class="table-success text-center">
        <th>부서아이디</th>
        <th>부서명</th>
        <th>관리자</th>
        <th>위치아이디</th>
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