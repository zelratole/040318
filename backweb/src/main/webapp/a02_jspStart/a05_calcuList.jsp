<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/backweb/a00_com/a01_common.css" >
<title>Insert title here</title>
</head>
<body>
<%--
	ex) a05_calcuList.jsp
	    입장할 영화제목:[    ]
		입장할 인원수:[    ]
		입장료(1인당):[    ]
		[buy ticket]
		요청했을 때..
		구매한 영화 정보
		제목:@@@
		입장인원:@@@
		총비용:@@@
 --%>
 	<h2>영화 관람</h2>
	<form>
	입장할 영화제목:<input type="text" name="mtitle"/><br>
	입장할 인원수:<input type="text" name="mcnt"/><br>
	입장료(1인당):<input type="text" name="mpay"/><br>
	<input type="submit" value="buy ticket"/><br>
	</form> 
	<%
	String mtitle = request.getParameter("mtitle");
	String mcntStr = request.getParameter("mcnt");
	String mpayStr = request.getParameter("mpay");
	if(mtitle!=null){
		int mcnt = Integer.parseInt(mcntStr);	
		int mpay = Integer.parseInt(mpayStr);
		
	%>
		<h2>구매한 영화 정보</h2>
		<h3>제목:<%=mtitle %></h3>
		<h3>입장인원:<%=mcnt %></h3>
		<h3>총비용:<%=mcnt*mpay%></h3>
	<%
	}
	%>

</body>
</html>