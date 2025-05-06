<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Payment List</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <div class="d-flex justify-content-between align-items-center">
            <h2>Payment List</h2>
            <!-- Add New Payment button -->
            <a href="payment.jsp" class="btn btn-primary">Add New Payment</a>
        </div>

        <table class="table table-striped mt-3">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Cardholder Name</th>
                    <th>Email</th>
                    <th>Card Number</th>
                    <th>Amount</th>
                    <th>Expiration Date</th>
                    <th>Actions</th> <!-- New column for buttons -->
                </tr>
            </thead>
            <tbody>
                <c:forEach var="payment" items="${payments}">
                    <tr>
                        <td>${payment.id}</td>
                        <td>${payment.cardholderName}</td>
                        <td>${payment.email}</td>
                        <td>${payment.cardNumber}</td>
                        <td>${payment.amount}</td>
                        <td>${payment.expDate}</td>
                        <td>
                            <!-- Update button -->
                            <form action="UpdatePaymentServlet" method="get" style="display:inline-block;">
                                <input type="hidden" name="paymentId" value="${payment.id}" />
                                <button type="submit" class="btn btn-warning btn-sm">Update</button>
                            </form>
                            
                            <!-- Delete button -->
                            <form action="DeletePaymentServlet" method="post" style="display:inline-block;" onsubmit="return confirm('Are you sure you want to delete this payment?');">
                                <input type="hidden" name="paymentId" value="${payment.id}" />
                                <button type="submit" class="btn btn-danger btn-sm">Delete</button>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>
