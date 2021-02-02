package by.anton.spring.mvc;

import javax.validation.constraints.Size;
import java.util.HashMap;
import java.util.Map;

public class Employee {
    @Size(min = 2,max = 10,message = "Min 2 chars, max 10 chars")
    private String name;
    private String surname;
    private String mail;
    private String department;
    private Map<String,String> departments;
    private String car;
    private static Map<String,String> cars;
    private String[] language;
    private static Map<String,String> languages;

    {
        departments=new HashMap<>();
        departments.put("Information Technology","It");
        departments.put("Human Resources","HR");
        departments.put("Sales","Sales");

        cars=new HashMap<>();
        cars.put("Mercedes","MB");
        cars.put("BMW","BMW");
        cars.put("Volkswagen","VW");

        languages=new HashMap<>();
        languages.put("English","EN");
        languages.put("German","GE");
        languages.put("Russian","RU");


    }

    public String getCar() {
        return car;
    }

    public void setCar(String car) {
        this.car = car;
    }

    public Map<String, String> getCars() {
        return cars;
    }

    public void setCars(Map<String, String> cars) {
        this.cars = cars;
    }

    public String[] getLanguage() {
        return language;
    }

    public void setLanguage(String[] language) {
        this.language = language;
    }

    public Map<String, String> getLanguages() {
        return languages;
    }

    public void setLanguages(Map<String, String> languages) {
        this.languages = languages;
    }

    public Map<String, String> getDepartments() {
        return departments;
    }

    public void setDepartments(Map<String, String> departments) {
        this.departments = departments;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public Employee() {

    }
}
