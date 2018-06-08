/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import db.DBUtils;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Patient;

/**
 *
 * @author LEO
 */
public class DataAccess {
    static private String url = "jdbc:mysql://localhost:3306/?user=root";
    static private String user = "root";
    static private String pass = "23113034";
    
    static private Connection con;
    static private PreparedStatement ps;
    static private ResultSet rs;
    
    
    
    public int size(){
        List<Patient> ls = new LinkedList<>();
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, user, pass);
            ps = con.prepareStatement("SELECT * FROM bangkokhospital.patient");
            rs = ps.executeQuery();
            
            while(rs.next()){
                Patient n = new Patient(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8),rs.getString(9),rs.getString(10),rs.getString(12), rs.getString(13), rs.getString(11),rs.getString(14), rs.getString(15), rs.getString(16));
                ls.add(n);
            }
           // ps.close();
            //rs.close();
            
            
        } catch (SQLException ex  ) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
                try {
                    
                    
                    if(rs != null){
                       rs.close();
                       rs = null;
                    }
                    
                    if(ps != null){
                       ps.close();
                       ps = null;
                    }
                    
                    
                    if(con != null){
                       con.close(); 
                       con = null;
                    }
                    
                    
                    
                    
                } catch (SQLException ex) {
                    Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
                }
        }
        return ls.size();
    }
    
    
    public void addPatient(Patient n) throws SQLException{
        try {
            //int id, String email, String fname, String lname, Date dob, char age, String zipcode, String city, String address, String phonenum
            con = DriverManager.getConnection(url, user, pass);
            ps = con.prepareStatement("INSERT INTO bangkokhospital.patient values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
            
            ps.setString(1, n.getId()+"");
            ps.setString(2, n.getFname());
            ps.setString(3, n.getLname());
            ps.setInt(4, n.getAge());
            ps.setString(5, n.getGender()+""); 
            ps.setString(6, n.getZipcode());
            ps.setString(7, n.getCity());
            ps.setString(8, n.getProvince());
            ps.setString(9, n.getAddress());
            ps.setString(10, n.getPhonenum());
            
             ps.setString(11, n.getEthnicity());
             
            ps.setString(12, n.getEmail());
            ps.setString(13, n.getPassword());
           
            ps.setString(14, n.getReligion());
            ps.setString(15, n.getStatus());
            ps.setString(16, "None");
            ps.executeUpdate();
            //ps.close();
            
            
        } catch (SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
            ps.close();
            con.close();
            ps = null;
            con = null;
        }
        
    }
    
    
    public static List<Patient> getAll(){
            List<Patient> ls = new LinkedList<>();
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, user, pass);
            ps = con.prepareStatement("SELECT * FROM bangkokhospital.patient");
            rs = ps.executeQuery();
            
            while(rs.next()){
                Patient n = new Patient(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8),rs.getString(9),rs.getString(10),rs.getString(12), rs.getString(13), rs.getString(11),rs.getString(14), rs.getString(15), rs.getString(16));
                ls.add(n);
            }
           // ps.close();
            //rs.close();
            
            
        } catch (SQLException ex  ) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
                try {
                    
                    
                    if(rs != null){
                       rs.close();
                       rs = null;
                    }
                    
                    if(ps != null){
                       ps.close();
                       ps = null;
                    }
                    
                    
                    if(con != null){
                       con.close(); 
                       con = null;
                    }
                    
                    
                    
                    
                } catch (SQLException ex) {
                    Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
                }
        }
        return ls;
    }
    
    public static List<Patient> getAllAccepted(){
            List<Patient> ls = new LinkedList<>();
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, user, pass);
            ps = con.prepareStatement("SELECT * FROM bangkokhospital.patient where status = 'a'");
            rs = ps.executeQuery();
            
            while(rs.next()){
               Patient n = new Patient(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8),rs.getString(9),rs.getString(10),rs.getString(12), rs.getString(13), rs.getString(11),rs.getString(14), rs.getString(15), rs.getString(16));
                ls.add(n);
            }
           // ps.close();
            //rs.close();
            
            
        } catch (SQLException ex  ) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
                try {
                    
                    
                    if(rs != null){
                       rs.close();
                       rs = null;
                    }
                    
                    if(ps != null){
                       ps.close();
                       ps = null;
                    }
                    
                    
                    if(con != null){
                       con.close(); 
                       con = null;
                    }
                    
                    
                    
                    
                } catch (SQLException ex) {
                    Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
                }
        }
        return ls;
    }
    
     public static List<Patient> getAllUnprocessed(){
            List<Patient> ls = new LinkedList<>();
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, user, pass);
            ps = con.prepareStatement("SELECT * FROM bangkokhospital.patient where status = 'p'");
            rs = ps.executeQuery();
            
            while(rs.next()){
                Patient n = new Patient(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8),rs.getString(9),rs.getString(10),rs.getString(12), rs.getString(13), rs.getString(11),rs.getString(14), rs.getString(15), rs.getString(16));
                ls.add(n);
            }
           // ps.close();
            //rs.close();
            
            
        } catch (SQLException ex  ) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
                try {
                    
                    
                    if(rs != null){
                       rs.close();
                       rs = null;
                    }
                    
                    if(ps != null){
                       ps.close();
                       ps = null;
                    }
                    
                    
                    if(con != null){
                       con.close(); 
                       con = null;
                    }
                    
                    
                    
                    
                } catch (SQLException ex) {
                    Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
                }
        }
        return ls;
    }
     
      public static List<Patient> getAllRejected(){
            List<Patient> ls = new LinkedList<>();
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, user, pass);
            ps = con.prepareStatement("SELECT * FROM bangkokhospital.patient where status = 'r'");
            rs = ps.executeQuery();
            
            while(rs.next()){
               Patient n = new Patient(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8),rs.getString(9),rs.getString(10),rs.getString(12), rs.getString(13), rs.getString(11),rs.getString(14), rs.getString(15), rs.getString(16));
                ls.add(n);
            }
           // ps.close();
            //rs.close();
            
            
        } catch (SQLException ex  ) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
                try {
                    
                    
                    if(rs != null){
                       rs.close();
                       rs = null;
                    }
                    
                    if(ps != null){
                       ps.close();
                       ps = null;
                    }
                    
                    
                    if(con != null){
                       con.close(); 
                       con = null;
                    }
                    
                    
                    
                    
                } catch (SQLException ex) {
                    Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
                }
        }
        return ls;
    }
     
    public  Patient getPatienttByEmail(String email){
        
        String sql = "SELECT * FROM bangkokhospital.patient where email = " + '"' +email + '"';
        try {
            PreparedStatement ps = DBUtils.getPreparedStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                Patient n = new Patient(
                        //id, fname, lname, age, gender, zipcode, city, province, address, phonenum,  email, password, ethnicity,  religion,  status,  remarks)
                        //id, fname, lname, age, gender, zip, city, province, address, phone, eth, email, pass, religion, status, remarks
                        rs.getInt(1),
                        rs.getString(2), 
                        rs.getString(3),
                        rs.getInt(4), 
                        rs.getString(5), 
                        rs.getString(6), 
                        rs.getString(7), 
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(12),
                        rs.getString(13), 
                        rs.getString(11), 
                        rs.getString(14),               
                        rs.getString(15),
                        rs.getString(16));
                return n;
            }
            //ps.close();
           // rs.close();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public  Patient getPatientById(String id){
        
        String sql = "SELECT * FROM bangkokhospital.patient where id = " + id;
        try {
            PreparedStatement ps = DBUtils.getPreparedStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                Patient n = new Patient(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8),rs.getString(9),rs.getString(10),rs.getString(12), rs.getString(13), rs.getString(11),rs.getString(14), rs.getString(15), rs.getString(16));
                return n;
            }
            //ps.close();
           // rs.close();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
     public void edit(int id, String email,String password, String fname, String lname, int age, String gender, String zipcode, String city, String address, String phonenum, String degree, int isInternational, String status, String remarks){
        try {
            String sql = "update bangkokhospital.patient SET email = ?, password = ?, fname = ?, lname = ?, age = ?, gender = ?, zipcode = ?, city = ?, address = ?, phonenum = ?, degree = ?, isInternational = ?, status = ?, remarks = ?" + " where id = ?";
            PreparedStatement ps= DBUtils.getPreparedStatement(sql);
            
            ps.setString(1, email);
            ps.setString(2, password);
            ps.setString(3, fname);
            ps.setString(4, lname);
            ps.setInt(5, age); 
            ps.setString(6, gender);
            ps.setString(7, zipcode);
            ps.setString(8, city);
            ps.setString(9, address);
            ps.setString(10, phonenum);
            ps.setString(11, degree);
            ps.setInt(12, isInternational);
            ps.setString(13, status);
            ps.setString(14, remarks);
            ps.setInt(15, id);
            ps.executeUpdate();
           // ps.close();
            
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    
    public void editStatus(String id, String status){
        try {
            String sql = "update bangkokhospital.patient SET status = "+ "'"+status + "'"+" where id = " + id;
            PreparedStatement ps= DBUtils.getPreparedStatement(sql);
            ps.executeUpdate();
           // ps.close();
            
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    public void delete(int id){
        try {
            String sql = "DELETE bangkokhospital.patient where id = ?";
            PreparedStatement ps = DBUtils.getPreparedStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
            //ps.close();
            
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
