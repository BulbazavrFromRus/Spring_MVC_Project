package com.bulbazavr.spring.mvc;

import com.bulbazavr.spring.mvc.validation.CheckEmail;

import javax.validation.constraints.*;
import java.util.HashMap;
import java.util.Map;

public class Employee {
    @Size(min=2, message="name must be min 2 symbols")
    private String name;

    /*@NotEmpty(message = "surname is required field")*/
    @NotBlank(message = "surname is required field")
    private String surname;
    private String department;

    @Min(value = 500, message = "must be grater than 499")
    @Max(value=1000, message = "must be less then 1001")
    private int salary;

    private String carBrand;
    private String[] languages;

    @Pattern(regexp = "\\d{3}-\\d{2}-\\d{2}", message = "please use pattern XXX-XX-XX")
    private String phoneNumber;

    @CheckEmail(value ="abc.com", message = "email must ends with abx.com" )
    private String email;



    private Map<String, String> mapDepartments;
    private Map<String, String> mapCarBrand;
    private Map<String, String> mapLanguages;





    public Employee() {
        mapDepartments= new HashMap<>();
        mapDepartments.put("IT", "Information Technology");
        mapDepartments.put("HR", "Human Resources");
        mapDepartments.put("Sales", "Sales");


        mapCarBrand = new HashMap<>();
        mapCarBrand.put("BMW", "BMW");
        mapCarBrand.put("Mercedes", "Mercedes");
        mapCarBrand.put("Ferrari", "Ferrari");

        mapLanguages = new HashMap<>();
        mapLanguages.put("EN", "English");
        mapLanguages.put("FR", "France");
        mapLanguages.put("RU", "Russian");
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

    public void setSurname(String surName) {
        this.surname = surName;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public int getSalary() {
        return salary;
    }

    public void setSalary(int salary) {
        this.salary = salary;
    }

    public Map<String, String> getMapDepartments() {
        return mapDepartments;
    }

    public void setMapDepartments(Map<String, String> mapDepartments) {
        this.mapDepartments = mapDepartments;
    }

    public String getCarBrand() {
        return carBrand;
    }

    public void setCarBrand(String carBrand) {
        this.carBrand = carBrand;
    }

    public Map<String, String> getMapCarBrand() {
        return mapCarBrand;
    }

    public void setMapCarBrand(Map<String, String> mapCarBrand) {
        this.mapCarBrand = mapCarBrand;
    }

    public String[] getLanguages() {
        return languages;
    }

    public void setLanguages(String[] languages) {
        this.languages = languages;
    }

    public Map<String, String> getMapLanguages() {
        return mapLanguages;
    }

    public void setMapLanguages(Map<String, String> mapLanguages) {
        this.mapLanguages = mapLanguages;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return "Employee{" +
                "name='" + name + '\'' +
                ", surName='" + surname + '\'' +
                ", department='" + department + '\'' +
                ", salary=" + salary +
                '}';
    }

}
