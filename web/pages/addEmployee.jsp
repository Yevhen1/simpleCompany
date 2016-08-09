<%@ page pageEncoding="UTF-8" %>
<%@page import="firm.web.beans.Employees" %>
<%@page import="firm.web.beans.Department" %>
<jsp:useBean id="add" class="firm.web.beans.Add" scope="page"/>

<%@page import="java.util.ArrayList"%>
<%@page import="firm.web.beans.Department" %>
<jsp:useBean id="departmentList" class="firm.web.beans.DepartmentList" scope="page"/>

<%
    
    if(request.getParameter("surname") != null && request.getParameter("surname").length() != 0){
        Employees employees = new Employees();
        employees.setSurname(request.getParameter("surname"));
        employees.setName(request.getParameter("name"));
        employees.setPatronymic(request.getParameter("patronimyc"));
        employees.setEmail(request.getParameter("email"));
        employees.setDepartmentKey(Integer.parseInt(request.getParameter("department")));
        add.addEmployee(employees);
        
    }
    %>

<h3>Add employee</h3>
<form  action="addEmployee.jsp" name="addEmployee"  method="post">
  <p>surname</p>
  <input class="input-text" name="surname" type="text" >
  <br>
  <p>name</p>
  <input class="input-text" name="name" type="text">
  <br>
  <p>patronimyc</p>
  <input class="input-text" name="patronimyc" type="text" >
  <br>
  <p>email</p>
  <input class="input-text" name="email" type="text" >
  <br>

  <p><select size="1" name="department" >
  <% ArrayList<Department> list = null;
  list=departmentList.getAllDepartment();
  
  for(Department department:list){
  %>
  <option value="<%=department.getIdDepartment()%>"><%=department.getNameDepartment()%></option>
  <%}%>
   </select></p>
   
  <br>
  <input class="input-button" name="button" type="submit" value="add">
</form>