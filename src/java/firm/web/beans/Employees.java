/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package firm.web.beans;

import java.io.Serializable;

/**
 *
 * @author home
 */
public class Employees implements Serializable{
    private int id_employees;
    private String surname;
    private String name;
    private String patronymic;   
    private String email;
    private int departmen_key;
    private String name_department;
    
    public void setId(int id_employees){
        this.id_employees=id_employees;
    }
    
    public int getId(){
        return id_employees;
    }
    
    public void setSurname(String surname){
        this.surname=surname;
    }
    
    public String getSurname(){
        return surname;
    }
    
    public void setName(String name){
        this.name=name;
    }
    
    public String getName(){
        return name;
    }
    
    public void setPatronymic(String patronymic){
        this.patronymic=patronymic;
    }
    
    public String getPatronymic(){
        return patronymic;
    }
    
    public void setEmail(String email){
        this.email=email;
    }
    
    public String getEmail(){
        return email;
    }
    
    public void setDepartmentKey(int departmen_key){
        this.departmen_key=departmen_key;
    }
    
    public int getDepartmentKey(){
        return departmen_key;
    }
    
    public void setNameDepartment(String name_department){
        this.name_department=name_department;
    }
    
    public String getNameDepartment(){
        return name_department;
    }
}
