
package firm.web.beans;

import java.io.Serializable;


public class Department implements Serializable {
    
    private int id_department;
    private String name_department;
    
    public void setIdDepartment(int id_department){
        this.id_department=id_department;
    }
    
    public int getIdDepartment(){
        return id_department;
    }
    
    public void setNameDepartment(String name_department){
        this.name_department=name_department;
    }
    
    public String getNameDepartment(){
        return name_department;
    }
}
