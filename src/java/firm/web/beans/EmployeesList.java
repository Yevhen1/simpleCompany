
package firm.web.beans;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import firm.web.database.Database;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class EmployeesList {
    
    private ArrayList<Employees> employeesList = new ArrayList<Employees>();
    
    private ArrayList<Employees> getEmployee(String sql){
        Statement statement = null;
        ResultSet resultSet = null;
        Connection connection = null;
        
        try{
            connection = Database.getConnection();
            statement = connection.createStatement();
            resultSet = statement.executeQuery(sql);
            while(resultSet.next()){
                Employees employees = new Employees();
                employees.setId(resultSet.getInt("id_employees"));
                employees.setSurname(resultSet.getString("surname"));
                employees.setName(resultSet.getString("name"));
                employees.setPatronymic(resultSet.getString("patronymic"));
                employees.setEmail(resultSet.getString("email"));
                employees.setNameDepartment(resultSet.getString("name_department"));
                employeesList.add(employees);
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
        return employeesList;
    }
    
        public ArrayList<Employees> getAllEmployeeses() {
        return getEmployee("SELECT * FROM employees");
    }

         public ArrayList<Employees> getEmployeesDepartment(){
        return getEmployee("SELECT id_employees, surname, name, patronymic, email, name_department "
                + "FROM employees, department "
                + "WHERE department_key = id_department");
    }
}
