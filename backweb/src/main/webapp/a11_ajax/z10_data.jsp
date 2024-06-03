<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="backweb.vo.*" 
    import="backweb.a04_database.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="dao" class="backweb.a04_database.A04_EmpDao"/>
<jsp:useBean id="sch" class="backweb.vo.Emp"/>
<jsp:setProperty property="*" name="sch" />
<c:forEach var="emp" items="${dao.getEmpList(sch)}">
<tr><td>${emp.empno}</td><td>${emp.ename}</td><td>${emp.job}</td>
	<td>${emp.sal}</td><td>${emp.deptno }</td></tr>
</c:forEach>    
  