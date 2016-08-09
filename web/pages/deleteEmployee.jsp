<%@ page pageEncoding="UTF-8" %>
<%@page import="java.util.ArrayList"%>
<%@page import="firm.web.beans.Employees" %>
<jsp:useBean id="departmentList" class="firm.web.beans.DepartmentList" scope="page"/>
<jsp:useBean id="add" class="firm.web.beans.Add" scope="page"/>
<jsp:useBean id="employeeList" class="firm.web.beans.EmployeesList" scope="page"/>
    
<%
        if(request.getParameter("employees") != null){
        add.deleteEmployee(Integer.parseInt(request.getParameter("employees")));
   }
    %>

<h3>Delete employee</h3>

<form action="deleteEmployee.jsp" method="post">
    <p><select size="1" name="employees" >
  <% ArrayList<Employees> list = null;
  list=employeeList.getEmployeesDepartment();
  
  for(Employees employees:list){
  %>
  <option value="<%=employees.getId()%>"><%=employees.getSurname()%></option>
  <%}%>
   </select></p>
   <input class="input-button" name="button" type="submit" value="delete">
</form>