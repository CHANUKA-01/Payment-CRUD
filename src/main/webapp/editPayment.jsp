<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Payment</title>
    <!-- Bootstrap CSS for styling -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Custom styling for a smaller form */
        .container {
            max-width: 600px;
        }
        .form-label, .btn {
            font-size: 0.9rem;
        }
    </style>
</head>
<body>
    <!-- Main container for the smaller form -->
    <div class="container mt-3">
        <h4 class="mb-3">Edit Payment</h4>
        
        <!-- Form to submit the updated payment details -->
        <form action="UpdatePaymentProcessServlet" method="post">
            
            <!-- Hidden input for payment ID -->
            <input type="hidden" name="id" value="${payment.id}">

            <!-- Cardholder Name field -->
            <div class="mb-2">
                <label for="cardholdername" class="form-label">Cardholder Name</label>
                <input type="text" class="form-control form-control-sm" id="cardholdername" name="cardholdername" 
                       value="${payment.cardholderName}" required>
            </div>

            <!-- Email field -->
            <div class="mb-2">
                <label for="email" class="form-label">Email</label>
                <input type="email" class="form-control form-control-sm" id="email" name="email" 
                       value="${payment.email}" required>
            </div>

            <!-- Card Number field -->
            <div class="mb-2">
                <label for="cardnumber" class="form-label">Card Number</label>
                <input type="text" class="form-control form-control-sm" id="cardnumber" name="cardnumber" 
                       value="${payment.cardNumber}" required>
            </div>

            <!-- Amount field -->
            <div class="mb-2">
                <label for="amount" class="form-label">Amount</label>
                <input type="text" class="form-control form-control-sm" id="amount" name="amount" 
                       value="${payment.amount}" required>
            </div>

            <!-- Expiration Date field -->
            <div class="mb-2">
                <label for="expdate" class="form-label">Expiration Date</label>
                <input type="text" class="form-control form-control-sm" id="expdate" name="expdate" 
                       value="${payment.expDate}" required>
            </div>

            <!-- Submit button -->
            <button type="submit" class="btn btn-primary btn-sm w-100">Update Payment</button>
        </form>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/js/bootstrap.bundle.min.js"></script>
</body>
</html>
