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
	.input-group-text{width:100%;background-color:linen;
		color:black;font-weight:bolder;}
	.input-group-prepend{width:20%;}
	.input-group-append{width:20%;}
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
		// ex) a08_focusExp.jsp 만들고,
		//    회원가입 항목으로  id, pwd, name을 설정하여
		//    입력시, 해당 항목을 강조하여 처리하고 벗어났을 때, 원래 css로 돌아가게 처리하세요..
		$(".input-group-append").hide()
		$(".reg").click(function(){
			$("input.reg:focus").css({"background":"yellow","font-size":"15pt"})
			$("input.reg:not(:focus)").removeAttr("style")
		})
		$(".reg").keyup(function(){
			console.log("입력된 내용:"+$(this).val())
			if($(this).val()==""){
				$(this).next().show()// .children().eq(0).text("글자수는 4~8입니다.")
				//  개별적인 메시지 처리..
				$(".ckMsg").eq(0).text("아이디는 4~8 필요합니다.")
				$(".ckMsg").eq(1).text("패스워드는 8~12 필요합니다.")
				$(".ckMsg").eq(2).text("이름은 2이상 필요합니다.")
			}else{
				$(this).next().hide()
			}
			
		})
	});
</script>
</head>

<body>
	<div class="jumbotron text-center">
		<h2>회원가입</h2>
	</div>
	<%-- 
		
--%>
	<div class="container">
		<form id="frm01" class="form" method="post">
			<div class="input-group mb-3">
				<div class="input-group-prepend ">
					<span class="input-group-text  justify-content-center">회원아이디</span>
				</div>
				<input name="id" class="form-control reg" value="" />
				<div class="input-group-append">
					<span class="input-group-text  justify-content-center  ckMsg">입력이 필요합니다.</span>
				</div>				
			</div>
			<div class="input-group mb-3">
				<div class="input-group-prepend ">
					<span class="input-group-text  justify-content-center">패스워드</span>
				</div>
				<input name="pwd" type="password" class="form-control reg" value="" />
				<div class="input-group-append ">
					<span class="input-group-text  justify-content-center ckMsg">입력이 필요합니다.</span>
				</div>				
			</div>
			<div class="input-group mb-3">
				<div class="input-group-prepend ">
					<span class="input-group-text  justify-content-center">이름</span>
				</div>
				<input name="name" class="form-control reg" value="" />
				<div class="input-group-append ">
					<span class="input-group-text  justify-content-center ckMsg">입력이 필요합니다.</span>
				</div>				
			</div>
		</form>



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