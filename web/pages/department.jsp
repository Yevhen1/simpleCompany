<%@ page pageEncoding="UTF-8" %>
<%@page import="java.util.ArrayList"%>
<%@page import="firm.web.beans.Department" %>
<jsp:useBean id="departmentList" class="firm.web.beans.DepartmentList" scope="page"/>
<jsp:useBean id="add" class="firm.web.beans.Add" scope="page"/>

<h3>Department</h3>
<% ArrayList<Department> list = null;
list=departmentList.getAllDepartment();
for(Department department:list){
%>
<div class="output-blocks"
     <h4><br><strong>name: </strong><%=department.getNameDepartment()%></h4>
</div>
<%}%>
