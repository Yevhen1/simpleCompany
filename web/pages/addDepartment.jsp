<%@ page pageEncoding="UTF-8" %>
<%@page import="firm.web.beans.Department" %>
<jsp:useBean id="add" class="firm.web.beans.Add" scope="page"/>

<h3>Add department</h3>

<form  name="nameDepartmentForm" action="addDepartment.jsp" method="POST">
       <p>name department</p>
        <input class="input-text" type="text" name="nameDepartment" />
        <br>
       <input class="input-button" type="submit" value="add" />
       <% 
           if(request.getParameter("nameDepartment") != null && request.getParameter("nameDepartment").length()!=0){
            add.addDepartment(request.getParameter("nameDepartment"));
           }
       %>          
</form>