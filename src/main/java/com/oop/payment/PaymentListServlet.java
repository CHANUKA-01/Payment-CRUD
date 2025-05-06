package com.oop.payment;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/paymentList")
public class PaymentListServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Payment> payments = new ArrayList<>();
        Connection con = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/transport?useSSL=false", "root", "Chamika1999");
            PreparedStatement pst = con.prepareStatement("SELECT * FROM payment");
            ResultSet rs = pst.executeQuery();

            while (rs.next()) {
                Payment payment = new Payment();
                payment.setId(rs.getInt("id"));
                payment.setCardholderName(rs.getString("cardholdername"));
                payment.setEmail(rs.getString("email"));
                payment.setCardNumber(rs.getString("cardnumber"));
                payment.setAmount(rs.getString("amount"));
                payment.setExpDate(rs.getString("expdate"));
                payments.add(payment);
            }

            request.setAttribute("payments", payments);
            RequestDispatcher dispatcher = request.getRequestDispatcher("paymentList.jsp");
            dispatcher.forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}