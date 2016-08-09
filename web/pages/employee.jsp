<%@ page pageEncoding="UTF-8" %>
<%@page import="java.util.ArrayList"%>
<%@page import="firm.web.beans.Employees" %>
<jsp:useBean id="employeeList" class="firm.web.beans.EmployeesList" scope="page"/>

<h3>Employee</h3>
<% ArrayList<Employees> list = null;
list=employeeList.getEmployeesDepartment();
for(Employees employees:list){
%>
<div class="output-blocks"
     <h4>
    <strong>surname: </strong><%=employees.getSurname()%>
    <br><strong>name: </strong><%=employees.getName()%>
    <br><strong>patronymic: </strong><%=employees.getPatronymic()%>
    <br><strong>email: </strong><%=employees.getEmail()%>
    <br><strong>department: </strong><%=employees.getNameDepartment()%>
     </h4>
</div>
<%}%>