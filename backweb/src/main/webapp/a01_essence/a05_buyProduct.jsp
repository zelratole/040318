<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--
	ex) a05_buyProduct.jsp
			물건명:[    ]
			가격:[   ]
			[구매]
		a06_buyList.jsp
			구매정보
			물건명:@@@
			가격:@@@
	 --%>
	<form action="a06_buyList.jsp">
		물건명:<input type="text" name="name"><br>
		가격:<input type="text" name="price"><br>
		<input type="submit" value="구매"><br> 	
	</form>	 
	
</body>
</html>