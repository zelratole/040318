<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<jsp:useBean id="dao" class="backweb.a04_database.A05_DepartDao"/>
<jsp:useBean id="gson" class="com.google.gson.Gson"/>
${gson.toJson(dao.getDepartmentList(param.department_name))}
<%--
A05_DepartDao dao = new A05_DepartDao();
Gson gson = new Gson();
String jsonArrStr = gson.toJson(dao.getDepartmentList(""));
System.out.println(jsonArrStr);
--%>