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
		$("#regFruBtn").click(function(){
			var fruitVal = $("#fruit").val()
			$("p").append("<span>"+fruitVal+"</span>,")
			$("#fruit").val("").focus()
			//$("p").append( $("<span></span>").text(fruitVal).html()+",")
		})
		$("#regMeatBtn").click(function(){
			var meatVal = $("#meat").val()
			$("p").append("<b>"+meatVal+"</b>,")
			$("#meat").val("").focus()
			//$("p").append( $("<b></b>").text(meatVal).html()+",")
		})		
		$("#findFrui").click(function(){
			$("p").find("span").css("background","pink")
		})
		$("#findMeat").click(function(){
			$("p").find("b").css("background","yellow")
		})		
	});
</script>
</head>
<body>
<div class="jumbotron text-center">
  <h2>계층 구조 처리 연습</h2>
  구매할 과일 : <input type="text" id="fruit"><input type="button" id="regFruBtn" value="장바구니담기"><br>
  구매할 육류 : <input type="text" id="meat"><input type="button" id="regMeatBtn" value="장바구니담기"><br>
  <h3>장바구니리스트</h3>
  <p></p>
  <input type="button" id="findFrui" value="과일확인">
  <input type="button" id="findMeat" value="육류확인">

</div>
<%-- 
	// ex) 구매할 과일 :[   ] [장바구니 담기]
	//     구매할 육류 :[   ] [장바구니 담기]
	//     위 내용에서 장바구니 담기를 클릭시, 아래 항목에 담아지게 처리
	//     단, 과일은 span으로 입력, 육류는 b 으로 입력 처리
	//     [과일확인] [육류확인] ==> 각각 클릭시, 구분하여 색상표현 핑크/노랑색
	//     사과, 바나나, 소고기, 딸기, 돼지고기		
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