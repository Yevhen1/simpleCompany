
package firm.web.beans;

import firm.web.database.Database;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;


public class Add {

private void changed(String sql){
        Statement statement = null;
        ResultSet resultSet = null;
        Connection connection = null;

        try{
            connection = Database.getConnection();
            statement = connection.createStatement();
            statement.executeUpdate(sql);
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
    }

public void addDepartment(String nameDepartment){
    changed("INSERT INTO department(name_department) VALUES(' " + nameDepartment + " ')");
}

public void addEmployee(Employees user){
    changed("INSERT INTO employees(surname, name, patronymic, email, department_key) "
            + "values('"+user.getSurname()+"', '"+user.getName()+"', '"+user.getPatronymic()+"', " 
            + "'"+user.getEmail()+"', "+user.getDepartmentKey()+")");
}

public void deleteDepartment(int id){
    changed("DELETE FROM department WHERE id_department = " +id+ "");
}

public void deleteEmployee(int id){
    changed("DELETE FROM employees WHERE id_employees = " +id+ "");
}

}

