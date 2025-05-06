package com.oop.payment;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdatePaymentServlet")
public class UpdatePaymentServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String paymentId = request.getParameter("paymentId");
        Payment payment = new Payment();
        Connection con = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/transport?useSSL=false", "root", "Chamika1999");
            PreparedStatement pst = con.prepareStatement("SELECT * FROM payment WHERE id = ?");
            pst.setString(1, paymentId);
            ResultSet rs = pst.executeQuery();

            if (rs.next()) {
                payment.setId(rs.getInt("id"));
                payment.setCardholderName(rs.getString("cardholdername"));
                payment.setEmail(rs.getString("email"));
                payment.setCardNumber(rs.getString("cardnumber"));
                payment.setAmount(rs.getString("amount"));
                payment.setExpDate(rs.getString("expdate"));
            }

            request.setAttribute("payment", payment);
            RequestDispatcher dispatcher = request.getRequestDispatcher("editPayment.jsp");
            dispatcher.forward(request, response);
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
