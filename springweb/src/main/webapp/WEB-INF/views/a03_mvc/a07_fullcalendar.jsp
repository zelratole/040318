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
body {
	margin: 40px 10px;
	padding: 0;
	font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
	font-size: 14px;
}

#calendar {
	max-width: 1100px;
	margin: 0 auto;
}
.input-group-text{width:100%;background-color:linen;
		color:black;font-weight:bolder;}
.input-group-prepend{width:35%;}
	

</style>
<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/bootstrap.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script src="${path}/a00_com/dist/index.global.js"></script>
<script type="text/javascript">
	$(document).ready(function() {

	});

	document.addEventListener('DOMContentLoaded', function() {
		var calendarEl = document.getElementById('calendar');

		var calendar = new FullCalendar.Calendar(calendarEl, {
			headerToolbar : {
				left : 'prev,next today',
				center : 'title',
				right : 'dayGridMonth,timeGridWeek,timeGridDay'
			},
			initialDate : '2024-07-05',
			navLinks : true, // can click day/week names to navigate views
			selectable : true,
			selectMirror : true,
			select : function(arg) {
				var title = prompt('Event Title:');
				if (title) {
					calendar.addEvent({
						title : title,
						start : arg.start,
						end : arg.end,
						allDay : arg.allDay
					})
				}
				calendar.unselect()
			},
			eventClick : function(arg) {
				if (confirm('Are you sure you want to delete this event?')) {
					arg.event.remove()
				}
			},
			editable : true,
			dayMaxEvents : true, // allow "more" link when too many events
			events : function(info, successCallback, failureCallback){
				// callList.do
				$.ajax({
					url:"callList.do",
					dataType:"json",
					success:function(data){
						console.log(data)
						calendar.removeAllEvents()
						successCallback(data.calList)
						
					}
					
				})	
			},
			error:function(err){
				console.log(err)
				failureCallback(err)
			}
		});

		calendar.render();
	});
</script>
</head>

<body>
	<div class="jumbotron text-center">
		<h2>캘린더</h2>
	</div>
	
	<div class="container">
		<div id='calendar'></div>
		
		
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
				<%--
				<style>
.input-group-text{width:100%;background-color:linen;
		color:black;font-weight:bolder;}
.input-group-prepend{width:35%;}				
				</style>
				 --%>
				<div class="modal-body">
					<form id="frm02" class="form" method="post">
						<input type="hidden" name="id" value="0"/>
						<div class="input-group mb-3">	
							<div class="input-group-prepend ">
								<span class="input-group-text  justify-content-center">일정명</span>
							</div>
							<input name="title" placeholder="입정 입력"  class="form-control" />	
						</div>	
						<div class="input-group mb-3">	
							<div class="input-group-prepend ">
								<span class="input-group-text  justify-content-center">작성자</span>
							</div>
							<input name="writer" placeholder="작성자 입력"  class="form-control" />	
						</div>	
						<div class="input-group mb-3">	
							<div class="input-group-prepend ">
								<span class="input-group-text  justify-content-center">시작일</span>
							</div>
							<input id="start" placeholder="시작일 입력"  class="form-control" />	
							<input name="start" type="hidden"   />	
						</div>	
						<div class="input-group mb-3">	
							<div class="input-group-prepend ">
								<span class="input-group-text  justify-content-center">종료일</span>
							</div>
							<input id="end" placeholder="종료일 입력"  class="form-control" />	
							<input name="end" type="hidden"   />	
						</div>		
						<div class="input-group mb-3">	
							<div class="input-group-prepend ">
								<span class="input-group-text  justify-content-center">내용</span>
							</div>
							<textarea name="content" rows="5" cols="10" class="form-control"></textarea>			
						</div>	
																	
						<div class="input-group mb-3">	
							<div class="input-group-prepend ">
								<span class="input-group-text  justify-content-center">작성자</span>
							</div>
							<input name="writer" placeholder="작성자 입력"  class="form-control" />	
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