<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*" import="backweb.vo.*"
	import="backweb.a04_database.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<fmt:requestEncoding value="utf-8" />
<!DOCTYPE html>
<%--


 --%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/a00_com/bootstrap.min.css">
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css">
<style>
td {
	text-align: center;
}
</style>
<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/bootstrap.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script
	src="https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api"
	type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("form").on("keydown", function(event) {
			/// 해당 이벤트가 event.keyCode는 13과 같은 event.key는 Enter키를
			// 입력시, 요청값을 서버에 전달하는 것을 
			if (event.key === "Enter") {
				// 방지 처리하는 기능 수행..
				event.preventDefault();
				return false;
			}
		})

		searchAjax()
		$("#schBtn").click(function() {
			searchAjax()
		})
		$("#frm01 [name=ename], #frm01 [name=job]").keyup(function() {
			if (event.keyCode == 13) {
				searchAjax()
			}
		})
		$("#mdBtn").click(function(){
			$("#frm02 [name=empno]").prop('readonly', false); 
			$("#mdTitle").text("사원정보등록")
			$("#uptBtn, #delBtn").hide()
			$("#regBtn").show()
			$("#frm02")[0].reset()

		});
		


		$("#regBtn").click(function(){
			if(confirm("등록하시겠습니까?")){
				$.ajax({
					url:"${path}/empInsert.do",
					method:"get",
					data:$("#frm02").serialize(),
					dataType:"json",
					success:function(data){
						alert(data.result);
						searchAjax()
						$("#frm02")[0].reset()
					},
					error:function(err){
						console.log(err)
					}
					
				})
			}
		})
		$("#uptBtn").click(function(){
			if(confirm("수정하시겠습니까?")){
				$.ajax({
					url:"${path}/updateEmp.do",
					method:"get",
					data:$("#frm02").serialize(),
					dataType:"json",
					success:function(data){
						alert(data.result);
						searchAjax()
					},
					error:function(err){
						console.log(err)
					}
				})
			}
		})		
		$("#delBtn").click(function(){
			if(confirm("삭제하시겠습니까?")){
				$.ajax({
					url:"${path}/deleteEmp.do?",
					method:"get",
					data:"empno="+$("#frm02 [name=empno]").val(),
					dataType:"json",
					success:function(data){
						alert(data.result);
						searchAjax()
						$("#clsBtn").click()
					},
					error:function(err){
						console.log(err)
					}
					
				})
			}
		})				
		
		
	});
	function detail(empno){
		$("#mdBtn").click(); // 모달창 로딩
		$("#frm02 [name=empno]").prop('readonly', true); 
		$("#mdTitle").text("사원정보상세")
		$("#uptBtn, #delBtn").show() // 기능버튼 보이기 처리/보이지 않게 처리
		$("#regBtn").hide()		
		$.ajax({
			url:"getEmp.do",
			method:"get",
			data:"empno="+empno,
			dataType:"json",
			success:function(data){
				var emp = data.emp
				$("#frm02 [name=empno]").val(emp.empno)
				$("#frm02 [name=ename]").val(emp.ename)
				$("#frm02 [name=job]").val(emp.job)
				$("#frm02 [name=mgr]").val(emp.mgr)
				// emp.hiredate : 1971/1/1  1/1000초 데이터..
				$("#frm02 [name=hiredateStr]").val(fmtDate( new Date(emp.hiredate) ))
				$("#frm02 [name=sal]").val(emp.sal)
				$("#frm02 [name=comm]").val(emp.comm)
				$("#frm02 [name=deptno]").val(emp.deptno)
			},
			error:function(err){
				console.log(err)
			}
			
		})
		
	}	
	function fmtDate(date) {
	    var year = date.getFullYear();
	    var month = String(date.getMonth() + 1).padStart(2, '0'); // 월은 0부터 시작하므로 1을 더함
	    var day = String(date.getDate()).padStart(2, '0');
	    
	    return year + '-' + month + '-' + day;
	}
	function searchAjax() {
		$.ajax({
			url : "${path}/empListData2.do",
			method : "post",
			data : $("#frm01").serialize(),
			dataType : "json",
			success : function(data) {
				console.log(data)
				var empList = data.empList;
				var add = "";
				$(empList).each(function(idx, emp) {
					add += "<tr ondblclick='detail("+emp.empno+")'>"
					add += "<td>" + emp.empno + "</td>"
					add += "<td>" + emp.ename + "</td>"
					add += "<td>" + emp.job + "</td>"
					add += "<td>" + emp.sal.toLocaleString() + "</td>"
					add += "<td>" + emp.deptno + "</td>"
					add += "</tr>"
				})
				$("tbody").html(add)
			},
			error : function(err) {
				console.log("에러발생")
				console.log(err)
			}

		})

	}	
	
</script>
</head>

<body>
	<div class="jumbotron text-center">
		<h2>사원정보조회</h2>

	</div>
	<%-- 
		
--%>
	<div class="container">
		<form id="frm01" class="form" method="post">
			<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
				<input placeholder="사원명" name="ename" value=""
					class="form-control mr-sm-2" /> <input placeholder="직책명"
					name="job" value="" class="form-control mr-sm-2" />
				<button id="schBtn" class="btn btn-info" type="button">Search</button>
				<button id="mdBtn" class="btn btn-success" data-toggle="modal"
					data-target="#exampleModalCenter" type="button">등록</button>
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

	<div class="modal fade" id="exampleModalCenter" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalCenterTitle"
		aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header"> 
					<h5 class="modal-title" id="mdTitle">사원정보등록</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form id="frm02" class="form" method="post">
						<div class="row">
							<div class="col">
								<input type="number" readOnly class="form-control" placeholder="사원번호 입력"
									name="empno">
							</div>						
							<div class="col">
								<input type="date" class="form-control" placeholder="입사일 입력(yyyy-mm-dd)"
									name="hiredateStr">
							</div>
						</div>	
											
						<div class="row">
							<div class="col">
								<input type="text" class="form-control" placeholder="사원명 입력"
									name="ename">
							</div>
							<div class="col">
								<input type="text" class="form-control" placeholder="직책명 입력"
									name="job">
							</div>
						</div>
						<div class="row">
							<div class="col">
								<input type="number" class="form-control" placeholder="관리자 입력"
									name="mgr">
							</div>
							<div class="col">
								<input type="number" class="form-control" placeholder="부서 입력"
									name="deptno">
							</div>
						</div>
						<div class="row">
							<div class="col">
								<input type="number" class="form-control" placeholder="급여 입력"
									name="sal">
							</div>
							<div class="col">
								<input type="number" class="form-control" placeholder="보너스 입력"
									name="comm">
							</div>
						</div>
																	
					</form>
				</div>  
				<div class="modal-footer">
					<button type="button" id="uptBtn" class="btn btn-primary">수정</button>
					<button type="button" id="delBtn" class="btn btn-danger">삭제</button>
					<button type="button" id="regBtn" class="btn btn-success">저장</button>
					<button type="button" id="clsBtn"  class="btn btn-secondary"
						data-dismiss="modal">창닫기</button>
					
				</div>
			</div>
		</div>
	</div>




</body>
</html>