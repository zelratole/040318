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
	
	});
</script>
</head>

<body>

<%-- 
# useBean
1. useBean을 이용하면 보다 객체를 action 태그로 효율적으로 처리할 수 있다.
2. 기능 처리
	1) jsp:useBean을 객체를 session scope 범위로 설정할 수 있다.
		- 기존  request.setAttribute("p01", new Person());
		- useBean이요 jsp:useBean id="p01" class="@@@.@@@.Person" scope="request"
	2) 요청값 처리..
		- 기본 ${p01.setName(param.name)} 
		      ${p01.setAge(param.age)} 
		      ${p01.setLoc(param.loc)} 
		- useBean이용	
			  jsp:setProperty name="p01" property="*" 
			  자동으로 set프로퍼티와 동일한 요청값이 바로 할당된다.
			  위 코드 하나로 모든 요청값을 한번에 처리됨(규칙 param.name ==> setName(String name) 메서드가 있어야함)
						
--%>
<%
request.setAttribute("p01", new Person());
%>
<jsp:useBean id="p02" class="backweb.vo.Person" scope="request"/>
${p01.setName("홍길동")}
${p02.setName("마길동")}
<div class="jumbotron text-center">
  <h2>scriptlet로 처리:${p01.name}</h2>
  <h2>useBean로 처리:${p02.name}</h2>
</div>
<div class="container">
	<form id="frm01" class="form"  method="post">
  	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	    <input placeholder="이름" name="name"  class="form-control mr-sm-2" />
	    <input placeholder="나이" name="age"  class="form-control mr-sm-2"/>
	    <input placeholder="사는곳" name="loc"  class="form-control mr-sm-2"/>
	    <button class="btn btn-info" type="submit">Search</button>
	    <button class="btn btn-success" 
	    	data-toggle="modal" data-target="#exampleModalCenter"
	        type="button">등록</button>
 	</nav>
	</form>
   <table class="table table-hover table-striped">
   	<col width="25%">
   	<col width="25%">
   	<col width="25%">
   	<col width="25%">
    <thead>
    
      <tr class="table-success text-center">
        <th>종류</th>
        <th>이름</th>
        <th>나이</th>
        <th>사는곳</th>
      </tr>
    </thead>	
    <tbody>
    	${p01.setName(param.name)}
    	${p01.setAge(param.age)}
    	${p01.setLoc(param.loc)}
    	<tr><td>scriptlet객체</td><td>${p01.name}</td><td>${p01.age}</td>
    					<td>${p01.loc}</td></tr>
    	<jsp:setProperty property="*" name="p02"/>				
      	<tr><td>useBean객체</td><td>${p02.name}</td><td>${p02.age}</td>
    					<td>${p02.loc}</td></tr>
    					  					
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