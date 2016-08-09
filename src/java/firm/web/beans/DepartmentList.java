/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package firm.web.beans;

import firm.web.database.Database;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;


public class DepartmentList {
    
    private ArrayList<Department> departmentsList = new ArrayList<Department>();
    
    private ArrayList<Department> getDepartment(String sql){
        Statement statement = null;
        ResultSet resultSet = null;
        Connection connection = null;
        
        try{
            connection = Database.getConnection();
            statement = connection.createStatement();
            resultSet = statement.executeQuery(sql);
            while(resultSet.next()){
                Department department = new Department();
                department.setIdDepartment(resultSet.getInt("id_department"));
                department.setNameDepartment(resultSet.getString("name_department"));                
                departmentsList.add(department);
            }
        }catch (SQLException ex) {
            Logger.getLogger(EmployeesList.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                if (statement != null) {
                    statement.close();
                }
                if (resultSet != null) {
                    resultSet.close();
                }
                if (connection != null) {
                    connection.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(EmployeesList.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        return departmentsList;
    }
        public ArrayList<Department> getAllDepartment() {
        return getDepartment("SELECT * FROM department");
    }

        
        
        
}
