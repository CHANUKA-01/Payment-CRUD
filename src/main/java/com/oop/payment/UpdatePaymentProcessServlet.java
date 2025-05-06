package com.oop.payment;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdatePaymentProcessServlet")
public class UpdatePaymentProcessServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id = request.getParameter("id");
        String cardholderName = request.getParameter("cardholdername");
        String email = request.getParameter("email");
        String cardNumber = request.getParameter("cardnumber");
        String amount = request.getParameter("amount");
        String expDate = request.getParameter("expdate");
        
        Connection con = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/transport?useSSL=false", "root", "Chamika1999");
            PreparedStatement pst = con.prepareStatement("UPDATE payment SET cardholdername=?, email=?, cardnumber=?, amount=?, expdate=? WHERE id=?");
            pst.setString(1, cardholderName);
            pst.setString(2, email);
            pst.setString(3, cardNumber);
            pst.setString(4, amount);
            pst.setString(5, expDate);
            pst.setString(6, id);
            
            int rowCount = pst.executeUpdate();
            if (rowCount > 0) {
                response.sendRedirect("paymentList");
            } else {
                // Handle failure case
                request.setAttribute("Status", "Update Failed");
                request.getRequestDispatcher("editPayment.jsp").forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (con != null) con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
