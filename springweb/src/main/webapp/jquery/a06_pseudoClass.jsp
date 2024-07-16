<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
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
		// input:checked   input타입에 checked가 된 경우..
		// 요소1 + 요소2    요소1을 같은 레벨에서 앞에 둔 형제 객체 요소2 객체
		// not() 특정 조건이 아닌 경우..
		/*
		$("input:not(:checked) + span").css("background-color", "green")
		$("input[type=checkbox]").click(function() {
			$("input:checked + span").css("background-color", "white")
			$("input:not(:checked) + span").css("background-color", "green")
		})
		*/
		// ex) 좋아하는 음식을 설정해서, 위와 반대로로 checked가 되었을 때, 배경색과 색상을 설정하여
		//     처리하게 해보세요..
		$("input[name=foods]").click(function(){
			// 앞에 요소가 check가 될때 span에 대한 기능 처리
			$("input[name=foods]:checked + span").css({"background":"navy","color":"yellow"})
			$("input[name=foods]:not(:checked) + span").css({"background":"white",
															 "color":"black"})		
		})
	});
</script>
</head>

<body>
	<div class="jumbotron text-center">
		<h2>좋아하는 음식</h2>
		<div>
			<input type="checkbox" name="foods"><span>짜장면</span>
		</div>
		<div>
			<input type="checkbox" name="foods"><span>짬 &nbsp;&nbsp;&nbsp;뽕</span>
		</div>
		<div>
			<input type="checkbox" name="foods"><span>탕수육</span>
		</div>
				

		<h2>가상클래스 jquery로 적용</h2>
		<div>
			<input type="checkbox" name="ck01"> <span>홍길동</span>
		</div>
		<div>
			<input type="checkbox" name="ck02"> <span>김길동</span>
		</div>
		<div>
			<input type="checkbox" name="ck03"> <span>신길동</span>
		</div>

	</div>
	<%-- 
		
--%>
	<div class="container">
		<form id="frm01" class="form" method="post">
			<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
				<input placeholder="제목" name="" class="form-control mr-sm-2" /> <input
					placeholder="내용" name="" class="form-control mr-sm-2" />
				<button class="btn btn-info" type="submit">Search</button>
				<button class="btn btn-success" data-toggle="modal"
					data-target="#exampleModalCenter" type="button">등록</button>
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
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
			</tbody>
		</table>

	</div>
	<div class="modal fade" id="exampleModalCenter" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalCenterTitle"
		aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLongTitle">타이틀</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form id="frm02" class="form" method="post">
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
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary">Save changes</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>