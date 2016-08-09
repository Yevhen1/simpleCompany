<%@ page pageEncoding="UTF-8" %>
<%@page import="java.util.ArrayList"%>
<%@page import="firm.web.beans.Department" %>
<jsp:useBean id="departmentList" class="firm.web.beans.DepartmentList" scope="page"/>
<jsp:useBean id="add" class="firm.web.beans.Add" scope="page"/>
    
<%
        if(request.getParameter("department") != null){
            add.deleteDepartment(Integer.parseInt(request.getParameter("department")));
   }
    %>

<h3>Delete department</h3>

<form action="deleteDepartment.jsp" method="post"> 
    <p><select size="1" name="department" >
  <% ArrayList<Department> list = null;
  list=departmentList.getAllDepartment(); 
  for(Department department:list){
  %>
  <option value="<%=department.getIdDepartment()%>"><%=department.getNameDepartment()%></option>
  <%}%>
   </select></p>
   <input class="input-button" name="button" type="submit" value="delete">
</form>