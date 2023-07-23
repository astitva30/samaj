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
public class CommitteeMembers extends HttpServlet {

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
        try{
            HttpSession session= request.getSession(false);
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/samaj","root","root");
                PreparedStatement st = con.prepareStatement("Select * from committee_members");
                ResultSet records = st.executeQuery();
   
    ArrayList array1 = new ArrayList();
    ArrayList array2 = new ArrayList();
    ArrayList array3 = new ArrayList();
    ArrayList array4 = new ArrayList();
    
    while(records.next()){
        array1.add(records.getString(1));
        array2.add(records.getString(2));
        array3.add(records.getString(3));
        array4.add(records.getString(4));
    }
    session.setAttribute("arrayHead1", array1);
    session.setAttribute("arrayHead2", array2);
    session.setAttribute("arrayHead3", array3);
    session.setAttribute("arrayHead4", array4);

    PreparedStatement statm = con.prepareStatement("Select * from committee_mahila");
    ResultSet rec = statm.executeQuery();
   
    ArrayList arraym1 = new ArrayList();
    ArrayList arraym2 = new ArrayList();
    ArrayList arraym3 = new ArrayList();
    ArrayList arraym4 = new ArrayList();
    
    while(rec.next()){
        arraym1.add(rec.getString(1));
        arraym2.add(rec.getString(2));
        arraym3.add(rec.getString(3));
        arraym4.add(rec.getString(4));
    }
    session.setAttribute("arrayMahila1", arraym1);
    session.setAttribute("arrayMahila2", arraym2);
    session.setAttribute("arrayMahila3", arraym3);
    session.setAttribute("arrayMahila4", arraym4);

    PreparedStatement statem = con.prepareStatement("Select * from committee_navyuvak");
    ResultSet reco = statem.executeQuery();
   
    ArrayList arrayn1 = new ArrayList();
    ArrayList arrayn2 = new ArrayList();
    ArrayList arrayn3 = new ArrayList();
    ArrayList arrayn4 = new ArrayList();
    
    while(reco.next()){
        arrayn1.add(reco.getString(1));
        arrayn2.add(reco.getString(2));
        arrayn3.add(reco.getString(3));
        arrayn4.add(reco.getString(4));
    }
    session.setAttribute("arrayNavyuvak1", arrayn1);
    session.setAttribute("arrayNavyuvak2", arrayn2);
    session.setAttribute("arrayNavyuvak3", arrayn3);
    session.setAttribute("arrayNavyuvak4", arrayn4);   
    
    response.sendRedirect("CommitteeMembers.jsp");
    
        }catch(Exception e){e.printStackTrace();}
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
