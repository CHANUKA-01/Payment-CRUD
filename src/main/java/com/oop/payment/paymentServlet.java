package com.oop.payment;

import java.io.IOException;
//import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class paymentServlet
 */
@WebServlet("/payment")
public class paymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		// Checking the system working..
		//PrintWriter out = response.getWriter();
		//out.print("Working");
		
		//inheritance Part
		String Cname = request.getParameter("cardholdername");
		String Cmail = request.getParameter("email");
		String Cnumber = request.getParameter("cardnumber");
		String amount = request.getParameter("amount");
		String expdate = request.getParameter("expdate");
		String cvv = request.getParameter("cvv");
		
		RequestDispatcher dispatcher = null;
		Connection con = null;
		
		try {
			 Class.forName("com.mysql.cj.jdbc.Driver");
			 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/transport?useSSl=false", "root", "Chamika1999");
			 PreparedStatement pst = con.prepareStatement("insert into payment(cardholdername, email, cardnumber, amount, expdate, cvv) values (?,?,?,?,?,?) ");
			 pst.setString(1, Cname);
			 pst.setString(2, Cmail);
			 pst.setString(3, Cnumber);
			 pst.setString(4, amount);
			 pst.setString(5, expdate);
			 pst.setString(6, cvv);
			 
			 int rowCount = pst.executeUpdate();
			 dispatcher = request.getRequestDispatcher("payment.jsp");
			 
			 if(rowCount > 0) {
				 request.setAttribute("Status", "Success");
			 } else {
				 request.setAttribute("Status", "Faild");
			 }
			 
			 dispatcher.forward(request, response);
			 
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
		}				
	}
}
