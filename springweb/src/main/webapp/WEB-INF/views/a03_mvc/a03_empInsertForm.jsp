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
	.input-group-text{width:100%;background-color:linen;
		color:black;font-weight:bolder;}
	.input-group-prepend{width:20%;}
</style>
<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/bootstrap.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function(){
		// enter키 입력시 form submit 처리 방지.
		$("form").on("keydown", function(event) {
			/// 해당 이벤트가 event.keyCode는 13과 같은 event.key는 Enter키를
			// 입력시, 요청값을 서버에 전달하는 것을 
			if (event.key === "Enter") {
				// 방지 처리하는 기능 수행..
				event.preventDefault();
				return false;
			}
		})
		$("form").on(
			{"submit":function(){
					// 유효성 check 처리..(공백/데이터 형식 등..) 아래와 같이 check 되었을 때, submit되게 처리..
					if($("#empCk").val()=="N"){
						alert("사원번호 유효성을 check하여야 합니다.")
						return false;
					}
				}
			
		})
		
		
		// // empnoDupck.do  ckDupEmp
		$("[name=empno]").keyup(function(){
			if(event.keyCode==13){
				$.ajax({
					url:"empnoDupck.do",
					data:"empno="+$(this).val(),
					dataType:"json",
					success:function(data){
						if(data.ckDupEmp > 0){
							alert("중복 등록된 사원번호가 있습니다.")
							$("[name=empno]").val("").focus()
						}else{
							alert("해당번호로 등록가능합니다")
							$("#empCk").val("Y"); // 사원번호 readonly로 처리..
							$("[name=empno]").prop("readonly",true); // 사원번호 readonly로 처리..
						}				
					},
					error:function(err){
						consol.log(err)
					}
				})
			}
			
		})
	});
	var result = "${result}"
	if(result!=""){
		alert(result)  // 등록 성공 alert()로딩 : 모델 데이터를 받아서..
	}
	
	
</script>
</head>

<body>
<div class="jumbotron text-center">
  <h2>사원정보등록</h2>

</div>
<div class="container">
	<form method="post" action="empInsert100.do"> <!-- 등록시 controller호출.. -->
	<div class="input-group mb-3">	
		<div class="input-group-prepend ">
			<span class="input-group-text  justify-content-center">사원번호</span>
		</div>
		<input type="number" name="empno" class="form-control" value="" />	
		<input type="hidden" id="empCk" value="N"/>
	</div>	
	<div class="input-group mb-3">	
		<div class="input-group-prepend ">
			<span class="input-group-text  justify-content-center">사원명</span>
		</div>
		<input name="ename" class="form-control" value="" />	
				
	</div>	
	<div class="input-group mb-3">	
		<div class="input-group-prepend">
			<span class="input-group-text  justify-content-center">직책명</span>
		</div>
		<input name="job" class="form-control" value="" />	
	</div>	
	<div class="input-group mb-3">	
		<div class="input-group-prepend">
			<span class="input-group-text  justify-content-center">관리자번호</span>
		</div>
		<input type="number" name="mgr" class="form-control" value="" />	
	</div>	
	<div class="input-group mb-3">	
		<div class="input-group-prepend ">
			<span class="input-group-text  justify-content-center">입사일</span>
		</div>
		<input type="date" name="hiredateStr" class="form-control" value="" />	
	</div>	
	<div class="input-group mb-3">	
		<div class="input-group-prepend ">
			<span class="input-group-text  justify-content-center">급여</span>
		</div>
		<input type="number"  name="sal" class="form-control" value="" />	
	</div>		
	<div class="input-group mb-3">	
		<div class="input-group-prepend ">
			<span class="input-group-text  justify-content-center">보너스</span>
		</div>
		<input type="number"  name="comm" class="form-control" value="" />	
	</div>	
	<div class="input-group mb-3">	
		<div class="input-group-prepend ">
			<span class="input-group-text  justify-content-center">부서번호</span>
		</div>
	    <select name="deptno"  class="form-control mr-sm-2">
	    		<option value="0">부서선택</option>
	    	<c:forEach var="dept" items="${depts}">
	    		<option value="${dept.deptno}">${dept.dname}[${dept.deptno}]</option>
	    	</c:forEach>
	    </select>
		
	</div>						
	<div style="text-align:right;">
			<input type="button" class="btn btn-success" value="등록" id="regBtn"/>
			<input type="button" class="btn btn-secondary" value="입력초기화" id="initBtn" />
			<input type="button" class="btn btn-primary" value="메인화면으로" id="mainBtn"/>
	</div>	
	</form>	
	<script type="text/javascript">

		$("#initBtn").click(function(){
			 location.reload();
		})	
		$("#regBtn").click(function(){
			if(confirm("등록하시겠습니까?")){
				$("form").submit()
			}
		})
		$("#mainBtn").click(function(){
			location.href="empList100.do"
		})
	
	</script>
</div>	
</body>
</html>