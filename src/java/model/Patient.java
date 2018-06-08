/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Date;

/**
 *
 * @author LEO
 */
public class Patient {
 
    private int id;
    private String email;
    private String password;
    private String fname;
    private String lname;
    private int age;
    private String gender;
    private String zipcode;
    private String city;
    private String address;
    private String phonenum;
    private String province;
    private String ethnicity;
    private String religion;
    private String status;
    private String remarks;

    public Patient(int id,String fname, String lname, int age, String gender, String zipcode, String city,String province, String address, String phonenum, String email,String password, String ethnicity, String religion, String status,  String remarks) {
        this.id = id;
        this.email = email;
        this.password = password;
        this.fname = fname;
        this.lname = lname;
        this.gender = gender;
        this.age = age;
        this.zipcode = zipcode;
        this.city = city;
        this.address = address;
        this.phonenum = phonenum;
        this.ethnicity = ethnicity;
        this.province = province;
        this.religion = religion;
        this.status = status;
        this.remarks = remarks;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    
    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getZipcode() {
        return zipcode;
    }

    public void setZipcode(String zipcode) {
        this.zipcode = zipcode;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhonenum() {
        return phonenum;
    }

    public void setPhonenum(String phonenum) {
        this.phonenum = phonenum;
    }

    public String getProvince() {
        return province;
    }
    
    public void setProvince(String province){
        this.province = province;
    }

    public String getEthnicity() {
        return ethnicity;
    }

     public void setEthnicity(String ehtnicity){
        this.ethnicity = ethnicity;
    }
     
    public String getReligion() {
        return religion;
    }
    
     public void setReligion(String religion){
        this.religion = religion;
    }
   
    
    
}
