/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package db;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;


public class DBUtils {
    


    public static PreparedStatement getPreparedStatement(String sql) throws ClassNotFoundException, SQLException{
        PreparedStatement ps =  null;
        Class.forName("com.mysql.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/?user=root";
        String user = "root";
        String pass = "23113034";
        
        Connection con = DriverManager.getConnection(url, user, pass);
        
        ps = con.prepareStatement(sql);
        System.out.println("DBUtils. Working.");
        
        return ps;
    }
    
   // Check connections.
    public static void main(String[] args) throws ClassNotFoundException, SQLException {
       getPreparedStatement("SELECT * bangkokhospital.patient");
       
        
       //System.out.println(getPreparedStatement("SELECT * FROM applicationsystem_db.students"));
    }
}
