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
public class LoadHomepage extends HttpServlet {

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
            HttpSession session = request.getSession();
            ArrayList<String> name = new ArrayList<String>();
            ArrayList<String> post = new ArrayList<String>();
            ArrayList<String> imageName = new ArrayList<String>();
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/samaj", "root", "root");
            PreparedStatement p = con.prepareStatement("Select * from committee_members");
            ResultSet rs= p.executeQuery();
            while(rs.next()){
                name.add(rs.getString("memberName"));
                post.add(rs.getString("memberPost"));
                imageName.add(rs.getString("image"));
            }
            session.setAttribute("name", name);
            session.setAttribute("post", post);
            session.setAttribute("imageName", imageName);
            System.out.println(imageName.get(0));
            
            
            ArrayList<String> nameAc = new ArrayList<String>();
            ArrayList<String> description = new ArrayList<String>();
            ArrayList<String> desc = new ArrayList<String>();
            ArrayList<String> imageNameAc = new ArrayList<String>();
            
            PreparedStatement p1 = con.prepareStatement("Select * from achievementTable");
            ResultSet rs1 =p1.executeQuery();
            while(rs1.next()){
                nameAc.add(rs1.getString("name"));
                description.add(rs1.getString("description"));
                String str= (rs1.getString("description"));
                if(str.length()>40){
                    desc.add(str.substring(0,40)+"...");
                }else{
                    desc.add(str+"...");
                    
                }
                imageNameAc.add(rs1.getString("image"));
            }
            
            session.setAttribute("nameAc", nameAc);
            session.setAttribute("description", description);
            session.setAttribute("desc",desc);
            session.setAttribute("imageNameAc", imageNameAc);
            
            
            System.out.println(imageNameAc.get(0));
            
            ArrayList<String> arrr = new ArrayList<String>();
            PreparedStatement p2 = con.prepareStatement("Select * from advertise");
            ResultSet rs2 =p2.executeQuery();
            while(rs2.next()){
                arrr.add(rs2.getString("image"));
            }
            session.setAttribute("arrr",arrr);
            
            String about="";
            PreparedStatement pn = con.prepareStatement("Select * from about");
            ResultSet rs123 =pn.executeQuery();
            while(rs123.next()){
                about=rs123.getString("description");
                if(about.length()>850){
                    about= (about.substring(0,850));
                }else{
                    about=(about);
                }
            }
            session.setAttribute("aboutt",about);
            
            response.sendRedirect("home.jsp");
            
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
