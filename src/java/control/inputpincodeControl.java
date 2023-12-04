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
 * @author Hung Ngu
 */
@WebServlet(name = "inputpincodeControl", urlPatterns = {"/input-pincode"})
public class inputpincodeControl extends HttpServlet {

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
        HttpSession session = request.getSession();
        String pincodeinput = request.getParameter("pincode");
        Account a = (Account) session.getAttribute("acc");
        String pincode = a.getPin();
        String type = request.getParameter("type");

        if (!pincodeinput.equals(pincode)) {
            request.setAttribute("resulttitle", "Thông báo");
            request.setAttribute("result", "Mã Pin bạn nhập không đúng!");
            request.getRequestDispatcher("result.jsp").forward(request, response);
        } else {
            if (type.equals("withdraw")) {
                int amountwithdraw = (int) session.getAttribute("amountwithdraw");
                if (amountwithdraw > 0) {
                    int balance = Integer.parseInt(a.getBalance());
                    if (amountwithdraw > balance) {
                        request.setAttribute("resulttitle", "Rút tiền");
                        request.setAttribute("result", "Số dư của bạn không đủ!");
                        request.getRequestDispatcher("result.jsp").forward(request, response);
                    } else {
                        balance -= amountwithdraw;
                        DAO dao = new DAO();
                        dao.updateBalance(String.valueOf(balance), a.getUser());
                        a.setBalance(String.valueOf(balance));
                        session.setAttribute("acc", a);
                        request.setAttribute("resulttitle", "Rút tiền");
                        request.setAttribute("result", "Rút tiền thành công!");
                        request.setAttribute("user", a.getUser());
                        request.setAttribute("amount", amountwithdraw);
                        request.setAttribute("balance", balance);
                        request.getRequestDispatcher("result.jsp").forward(request, response);
                    }
                } else {
                    response.sendRedirect("withdraw.jsp");
                }
            } else if (type.equals("transfer")) {
                String receiveruser = (String) session.getAttribute("receiveruser");
                int amounttransfer = (int) session.getAttribute("amounttransfer");
                if (amounttransfer > Integer.parseInt(a.getBalance())) {
                    request.setAttribute("resulttitle", "Chuyển tiền");
                    request.setAttribute("result", "Số dư của bạn không đủ!");
                    request.getRequestDispatcher("result.jsp").forward(request, response);
                } else {
                    DAO dao = new DAO();
                    Account receiver = dao.checkUsernameIsExist(receiveruser);
                    if (receiver == null) {
                        request.setAttribute("resulttitle", "Chuyển tiền");
                        request.setAttribute("result", "Tài khoản người nhận không tồn tại!");
                        request.getRequestDispatcher("result.jsp").forward(request, response);
                    } else {
                        int mybalance = Integer.parseInt(a.getBalance()) - amounttransfer;
                        int receiverbalance = Integer.parseInt(receiver.getBalance()) + amounttransfer;
                        
                        dao.updateBalance(String.valueOf(receiverbalance), receiver.getUser());
                        dao.updateBalance(String.valueOf(mybalance), a.getUser());
                        a.setBalance(String.valueOf(mybalance));
                        session.setAttribute("acc", a);
                        
                        request.setAttribute("resulttitle", "Chuyển tiền");
                        request.setAttribute("result", "Chuyển tiền thành công!");
                        request.setAttribute("user", a.getUser());
                        request.setAttribute("receiveruser", receiver.getUser());
                        request.setAttribute("receivername", receiver.getName());
                        request.setAttribute("amount", amounttransfer);
                        request.setAttribute("balance", mybalance);
                        request.getRequestDispatcher("result.jsp").forward(request, response);
                    }
                }

            }else if(type.equals("checkbalance")){
                String balance = a.getBalance();
                request.setAttribute("balance", balance);
                request.getRequestDispatcher("checkbalance.jsp").forward(request, response);
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
