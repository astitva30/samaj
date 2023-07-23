/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author deshp
 */
public class Payment extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            HttpSession session = request.getSession(false);
            ArrayList<String> bankId = new ArrayList<String>();
            ArrayList<String> bankName = new ArrayList<String>();
            ArrayList<String> accountNo = new ArrayList<String>();
            ArrayList<String> accountName = new ArrayList<String>();
            ArrayList<String> branchCode = new ArrayList<String>();
            ArrayList<String> branchName = new ArrayList<String>();
            ArrayList<String> ifsCode = new ArrayList<String>();
            ArrayList<String> address = new ArrayList<String>();
            ArrayList<String> pincode = new ArrayList<String>();
            ArrayList<String> ph1 = new ArrayList<String>();
            ArrayList<String> image = new ArrayList<String>();

            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/samaj", "root", "root");
            PreparedStatement p = con.prepareStatement("Select * from bankDetails");
            ResultSet rs= p.executeQuery();
            while(rs.next()){
                bankId.add(rs.getString("bankId"));
                bankName.add(rs.getString("bankName"));
                accountNo.add(rs.getString("accountNo"));
                accountName.add(rs.getString("accountName"));
                branchCode.add(rs.getString("branchCode"));
                branchName.add(rs.getString("branchName"));
                ifsCode.add(rs.getString("ifsCode"));
                address.add(rs.getString("address"));
                pincode.add(rs.getString("pincode"));
                ph1.add(rs.getString("ph1"));
                image.add(rs.getString("image"));
            }
            
            session.setAttribute("bankId", bankId);
            session.setAttribute("bankName", bankName);
            session.setAttribute("accountNo", accountNo);
            session.setAttribute("accountName", accountName);
            session.setAttribute("branchCode", branchCode);
            session.setAttribute("branchName", branchName);
            session.setAttribute("ifsCode", ifsCode);
            session.setAttribute("address", address);
            session.setAttribute("pincode", pincode);
            session.setAttribute("ph1", ph1);
            session.setAttribute("image", image);

            response.sendRedirect("Payment.jsp");
            
        }catch(Exception e ){
            e.printStackTrace();
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
        processRequest(request, response);
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
