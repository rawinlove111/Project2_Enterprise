/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.DataAccess;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Patient;

/**
 *
 * @author LEO
 */
@WebServlet(name = "RegisterServlet", urlPatterns = {"/Register"})
public class RegisterServlet extends HttpServlet {
    

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */


//    @Override
//    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        System.out.println("RegisterController. Working.");
//        RequestDispatcher rd = req.getRequestDispatcher("register.jsp");
//        rd.forward(req, resp);
//    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //Student student = new Student(901, req.email, req.password, req.fname, req.lname, req.dob, req.age, req.zipcode, req.city, req.address, req.phonenum);
        
       
        String fname = req.getParameter("fname");
        String lname = req.getParameter("lname");
        int age = Integer.parseInt(req.getParameter("age"));
        String gender = req.getParameter("gender");
        String zipcode = req.getParameter("zipcode");
        String city = req.getParameter("city");
        String province = req.getParameter("province");
        String address = req.getParameter("address");
        String phonenum = req.getParameter("phonenum");
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        String ethnicity = req.getParameter("ethnicity");
        String religion = req.getParameter("religion");
        
        String status = "p";
        String remarks = "None";
        
         
        System.out.println("username: " + email);
        System.out.println("password: " + password);
        
        
        DataAccess da = new DataAccess();
        Patient patient = new Patient(da.size(), fname, lname, age , gender, zipcode, city, province,  address, phonenum,email, password,ethnicity, religion, status, remarks);
       
        try {
            da.addPatient(patient);
        } catch (SQLException ex) {
            Logger.getLogger(RegisterServlet.class.getName()).log(Level.SEVERE, null, ex);
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/Home?s="+"fail");
            rd.forward(req, resp);
        }
        
        
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/Home?s="+"success");
        rd.forward(req, resp);
    }

    
    
    
     
     
}
