<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="backweb.vo.*" 
    import="backweb.a04_database.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="dao" class="backweb.a04_database.A05_DepartDao"/>
[
<c:forEach var="dpart" items="${dao.getDepartmentList(param.department_name)}">
	{
	  "department_id":${dpart.department_id}, 
	  "department_name":"${dpart.department_name}", 
	  "manager_id":${dpart.manager_id}, 
	  "location_id":${dpart.location_id}
	},
</c:forEach>      
]