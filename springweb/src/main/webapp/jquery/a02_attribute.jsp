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
		// $("선택자").css("속성","속성값") : css 속성..
		// $("선택자").css({속성1:속성1값,속성2:속성2값,....})
		// $("선택자").attr({속성1:속성1값,속성2:속성2값,....})
		// $("선택자").on({이벤트1:속성1값,이벤트2:속성2값,....})
		$("h2").text("클릭해보실래요?").css("color","red")
		$("h2").css({"color":"yellow",
			         "background":"navy",
			         "border":"2px solid orange"  
				   }) 
		
		var colors = ['red','orange','yellow','green',
					  'blue','navy','purple']
		$("h2").click(function(){
			$("h2").text("변경 파랑둥이").css("color","blue")
		})
		var idx=0;
		$("h3").click(function(){
			// $(this) click대상객체..
			// idx++%7  1... 6, 7, 8, .... 10 .....
			//                  0  1 ....  
			$(this).css("color",colors[ idx++%7 ])
		})
		var aligns = ["left","center","right"]
		var aIdx = 0;
		$("h4").click(function(){
			var align = aligns[ aIdx++%3 ]
			$(this).attr("align",align ).text(align)
		})
		// chBtn 클릭시 마다, h5의 과일명이 변경되면서 글자색상도 변경되게 처리하세요.
		var fruits = ['사과','바나나','키위']
		var fcolors = ['red','yellow','green']
		var chIdx = 0;
		$("#chBtn").click(function(){
			$("h5").text(fruits[chIdx%3]).css("color",fcolors[chIdx++%3])
		})
	});
</script>
</head>
<body>
<div class="jumbotron text-center">
  <h2>타이틀</h2>
  <h3>Touch me!!!^^</h3>
  <h3>Touch me!!!^^</h3>
  <h3>Touch me!!!^^</h3>
  <h3>Touch me!!!^^</h3>
  <h4>left</h4>
  <button id="chBtn" class="btn btn-info" type="button">변신은 무죄 (변신!!)</button><br>
  <h5></h5> 	
</div>
<%-- 
		
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