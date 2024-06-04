<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="backweb.vo.*" 
    import="backweb.a04_database.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="dao" class="backweb.a04_database.A05_DepartDao"/>
<c:forEach var="dpart" items="${dao.getDepartmentList(param.department_name)}">
<tr><td>${dpart.department_id}</td><td>${dpart.department_name}</td>
	<td>${dpart.manager_id}</td><td>${dpart.location_id}</td></tr>
</c:forEach>      