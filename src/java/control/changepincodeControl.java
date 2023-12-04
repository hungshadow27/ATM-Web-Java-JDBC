/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import dao.DAO;
import entity.Account;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author May 10
 */
@WebServlet(name = "changepincodeControl", urlPatterns = {"/changepincode"})
public class changepincodeControl extends HttpServlet {

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
        String currentpin = request.getParameter("current-pin");
        String newpin = request.getParameter("new-pin");
        String confirmnewpin = request.getParameter("confirm-new-pin");
        
        if(!confirmnewpin.equals(newpin)){
            request.setAttribute("noti", "Mã pin nhập lại không đúng");
            request.getRequestDispatcher("changepincode.jsp").forward(request, response);
        }else{
            HttpSession session = request.getSession();
            Account a = (Account) session.getAttribute("acc");
            String mypin = a.getPin();
            
            if(!currentpin.equals(mypin)){
                request.setAttribute("noti", "Mã pin hiện tại không đúng");
                request.getRequestDispatcher("changepincode.jsp").forward(request, response);
            }else{
                a.setPin(newpin);
                DAO dao = new DAO();
                dao.updatePin(newpin, a.getUser());
                request.setAttribute("noti", "Thay đổi mã pin thành công");
            request.getRequestDispatcher("changepincode.jsp").forward(request, response);
            }
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
