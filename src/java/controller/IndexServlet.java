/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.DataAccess;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Patient;

/**
 *
 * @author LEO
 */
@WebServlet(name = "IndexServlet", urlPatterns = {"/Home"})
public class IndexServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
        try {
            rd.forward(request, response);
        } catch (ServletException | IOException ex) {
            Logger.getLogger(EditPost.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        
        String email = request.getParameter("email");
        String pass = request.getParameter("password");
        
        if(email.equals("admin") && pass.equals("admin")){
            response.sendRedirect(request.getContextPath() +"/StaffAdmin");
            return;
        }
        
        if(email.equals("advisor") && pass.equals("advisor")){
            response.sendRedirect(request.getContextPath() +"/AdvisorAdmin");
            return;
        }
        
        
        DataAccess da = new DataAccess();
        Patient s = da.getPatienttByEmail(email);
        
        
        
        if(email == null || pass == null || s == null ||!s.getPassword().equals(pass)){
            response.sendRedirect(request.getContextPath() +"/ErrorLogin.jsp");
        } else if (s.getPassword().equals(pass)) {
            System.out.print(email);
                     
            HttpSession session = request.getSession();
            session.setAttribute("user", s.getFname() + " " + s.getLname());
            session.setAttribute("student", s);
            session.setAttribute("fname", s.getFname());
            session.setAttribute("lname", s.getLname());
            session.setAttribute("email", email);
            session.setAttribute("phone", s.getPhonenum());
            session.setAttribute("city", s.getCity());
            session.setAttribute("province", s.getProvince());
            session.setAttribute("zip", s.getZipcode());
            session.setAttribute("address", s.getAddress());
            session.setAttribute("age", s.getAge());
            session.setAttribute("religion", s.getReligion());
            session.setAttribute("ethnicity", s.getEthnicity());
            session.setAttribute("gender", s.getGender());
            session.setAttribute("status", s.getStatus());
            session.setAttribute("remarks", s.getRemarks());
           
         
             response.sendRedirect(request.getContextPath()+"/Home");
        }
        
        
        
       
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
