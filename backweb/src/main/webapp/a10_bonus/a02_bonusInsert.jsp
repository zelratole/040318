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
	
	});
</script>
</head>

<body>
<div class="jumbotron text-center">
  <h2>보너스 등록</h2>
</div>
<%--
// backweb.a04_database.A06_BonusDao  bonusInsert(Bonus ins)
// backweb.vo.Bonus
 --%>
<jsp:useBean id="dao" class="backweb.a04_database.A06_BonusDao"/>
<jsp:useBean id="ins" class="backweb.vo.Bonus"/>
<jsp:setProperty property="*" name="ins"/>
<c:if test="${not empty param.bonus_id}">
	<c:set var="insCnt" value="${dao.bonusInsert(ins)}"/>
	<script type="text/javascript">
		
		var insCnt = ${insCnt};

		if(insCnt>0){
			if(confirm("등록 성공!\n메인화면으로 이동하시겠습니까?")){
				location.href='a01_bonusList.jsp'
			}
		}
	</script>
</c:if>
<div class="container">
	<form method="post">
	<%-- bonus_id employee_id bonus_amount bonus_dateStr--%>
	<div class="input-group mb-3">	
		<div class="input-group-prepend ">
			<span class="input-group-text  justify-content-center">보너스 아이디</span>
		</div>
		<input type="number" name="bonus_id" class="form-control" value="0" />	
	</div>	
	<div class="input-group mb-3">	
		<div class="input-group-prepend ">
			<span class="input-group-text  justify-content-center">사원 아이디</span>
		</div>
		<input type="text" name="employee_id" class="form-control" value="0" />			
	</div>		
	<div class="input-group mb-3">	
		<div class="input-group-prepend ">
			<span class="input-group-text  justify-content-center">보너스</span>
		</div>
		<input type="number" name="bonus_amount" class="form-control" value="0" />	
			</div>		
	<div class="input-group mb-3">	
		<div class="input-group-prepend ">
			<span class="input-group-text  justify-content-center">보너스일</span>
		</div>
		<input type="date"  name="bonus_dateStr" class="form-control" value="" />	
	</div>	
	<div style="text-align:right;">
		<input type="submit" class="btn btn-success" value="등록" id="insBtn"/>
		<input type="button" class="btn btn-info" onclick="location.href='a01_bonusList.jsp'" 
			value="조회리스트" id="mainBtn"/>
	</div>	
	</form>		
</div>

</body>
</html>