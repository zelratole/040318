<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<jsp:useBean id="dao" class="backweb.a04_database.A04_EmpDao"/>
<jsp:useBean id="sch" class="backweb.vo.Emp"/>
<jsp:setProperty property="*" name="sch"/>
<jsp:useBean id="gson" class="com.google.gson.Gson"/>
${gson.toJson(dao.getEmpList(sch))}