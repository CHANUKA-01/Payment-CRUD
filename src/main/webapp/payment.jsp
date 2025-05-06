<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>RideEase</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }
        nav {
            background-color: #2563eb;
            padding: 1rem;
        }
        nav .container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            max-width: 1200px;
            margin: 0 auto;
        }
        nav .logo {
            color: white;
            font-size: 1.5rem;
            font-weight: bold;
        }
        nav ul {
            list-style-type: none;
            display: flex;
            gap: 1rem;
        }
        nav a {
            color: white;
            text-decoration: none;
        }
        nav a:hover {
            text-decoration: underline;
        }
        .get-started {
            background-color: #22c55e;
            color: white;
            padding: 0.5rem 1rem;
            border-radius: 9999px;
            text-decoration: none;
            display: inline-flex;
            align-items: center;
        }
        .get-started:hover {
            background-color: #16a34a;
        }
        main {
            flex-grow: 1;
            max-width: 1200px;
            margin: 0 auto;
            padding: 2rem;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 1rem;
        }
        th, td {
            border: 1px solid #e5e7eb;
            padding: 0.5rem;
            text-align: left;
        }
        th {
            background-color: #f3f4f6;
        }
        .pay-now {
            background-color: #3b82f6;
            color: white;
            padding: 0.5rem 1rem;
            border: none;
            border-radius: 0.25rem;
            cursor: pointer;
        }
        .pay-now:hover {
            background-color: #2563eb;
        }
        footer {
            background-color: #1f2937;
            color: white;
            padding: 2rem;
        }
        .footer-content {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 2rem;
            max-width: 1200px;
            margin: 0 auto;
        }
        .footer-section h3 {
            font-size: 1.25rem;
            margin-bottom: 0.5rem;
        }
        .footer-section ul {
            list-style-type: none;
            padding: 0;
        }
        .footer-section a {
            color: white;
            text-decoration: none;
        }
        .footer-section a:hover {
            text-decoration: underline;
        }
        .social-icons {
            display: flex;
            gap: 1rem;
            margin-top: 0.5rem;
        }
        .social-icons a {
            color: white;
            text-decoration: none;
        }
        .copyright {
            text-align: center;
            margin-top: 2rem;
        }
        
		        /* Form container */
		.container {
		    max-width: 1200px;
		    margin: 0 auto;
		    padding: 2rem;
		}
		
		/* Form title */
		h2 {
		    margin-bottom: 1rem;
		}
		
		/* Form fields */
		.mb-3 {
		    margin-bottom: 1rem;
		}
		
		.form-label {
		    display: block;
		    margin-bottom: 0.5rem;
		}
		
		.form-control {
		    width: 100%;
		    padding: 0.5rem;
		    border: 1px solid #e5e7eb;
		    border-radius: 0.25rem;
		}
		
		/* Radio buttons for payment methods */
		.payment-methods {
		    display: flex;
		    gap: 1rem;
		}
		
		.form-check {
		    display: flex;
		    align-items: center;
		}
		
		.form-check-input {
		    margin-right: 0.5rem;
		}
		
		.form-check-label {
		    display: flex;
		    align-items: center;
		}
		
		.form-check-label img {
		    margin-right: 0.5rem;
		    width: 24px;
		    height: 24px;
		}
		
		/* Submit button */
		.form-submit {
		    background-color: #22c55e;
		    color: white;
		    padding: 0.5rem 1rem;
		    border: none;
		    border-radius: 0.25rem;
		    cursor: pointer;
		}
		
		.form-submit:hover {
		    background-color: #16a34a;
		}
		
		/* Button container */
		.btn-container {
		    display: flex;
		    gap: 1rem;
		    margin-top: 1rem;
		}
		
		/* View Payment List button */
		.btn-primary {
		    background-color: #3b82f6;
		    color: white;
		    padding: 0.5rem 1rem;
		    text-decoration: none;
		    border-radius: 0.25rem;
		}
		
		.btn-primary:hover {
		    background-color: #2563eb;
		}

    </style>
</head>
<body>
    <nav>
        <div class="container">
            <span class="logo">RideEase</span>
            <ul>
                <li><a href="#">Home</a></li>
                <li><a href="#">Book a Ride</a></li>
                <li><a href="#">My Bookings</a></li>
                <li><a href="#">Contact</a></li>
                <li><a href="#" class="get-started">Get Started</a></li>
            </ul>
        </div>
    </nav>

        <br>

        <!-- Payment form begin -->
        <div class="container">
            <form method="post" action="payment" class="register-form" >
                <h2>Payment Information</h2>
                <div class="mb-3">
                    <label class="form-label">Payment Method</label>
                    <div class="payment-methods">
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="paymentMethod" id="mastercard" value="Mastercard" checked>
                            <label class="form-check-label" for="mastercard">
                                <img src="https://img.icons8.com/color/48/000000/mastercard-logo.png" alt="Mastercard Logo"> Mastercard
                            </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="paymentMethod" id="visa" value="Visa">
                            <label class="form-check-label" for="visa">
                                <img src="https://img.icons8.com/color/48/000000/visa.png" alt="Visa Logo"> Visa
                            </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="paymentMethod" id="paypal" value="PayPal">
                            <label class="form-check-label" for="paypal">
                                <img src="https://img.icons8.com/color/48/000000/paypal.png" alt="PayPal Logo"> PayPal
                            </label>
                        </div>
                    </div>
                </div>

                <div class="mb-3">
                    <label for="cardholdername" class="form-label">Card Holder Name</label>
                    <input type="text" class="form-control" name="cardholdername" id="cardholdername" placeholder="Enter your Name" />
                </div>

                <div class="mb-3">
                    <label for="email" class="form-label">Card Holder Email</label>
                    <input type="email" class="form-control" name="email" id="email" placeholder="Enter your E-mail (example@gmail.com)" />
                </div>

                <div class="mb-3">
                    <label for="cardnumber" class="form-label">Card Number</label>
                    <input type="text" class="form-control" name="cardnumber" id="cardnumber" placeholder="Enter your Card number (****-****-****-****)" />
                </div>

                <div class="mb-3">
                    <label for="amount" class="form-label">Enter the Amount</label>
                    <input type="text" class="form-control" name="amount" id="amount" placeholder="Enter the Amount" />
                </div>

                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label for="expdate" class="form-label">Expiration Date</label>
                        <input type="text" class="form-control" name="expdate" id="expdate" placeholder="MM/YY" />
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="cvv" class="form-label">CVV</label>
                        <input type="text" class="form-control" name="cvv" id="cvv" placeholder="Enter CVV" />
                    </div>
                </div>
                
                <div class="btn-container">
                    <input type="submit" name="payment" id="payment" class="form-submit btn btn-success" value="Submit Payment" />
                    <a href="paymentList.jsp" class="btn btn-primary" id="viewList">View Payment List</a>
                </div>

            </form>
        </div>

    <footer>
        <div class="footer-content">
            <div class="footer-section">
                <h3>RideEase</h3>
                <p>Your trusted partner for comfortable and reliable transportation.</p>
            </div>
            <div class="footer-section">
                <h3>Quick Links</h3>
                <ul>
                    <li><a href="#">About Us</a></li>
                    <li><a href="#">Services</a></li>
                    <li><a href="#">Terms of Service</a></li>
                    <li><a href="#">Privacy Policy</a></li>
                </ul>
            </div>
            <div class="footer-section">
                <h3>Connect With Us</h3>
                <div class="social-icons">
                    <a href="#">Facebook</a>
                    <a href="#">Twitter</a>
                    <a href="#">Instagram</a>
                </div>
                <p>Email: info@rideease.com</p>
                <p>Phone: (555) 123-4567</p>
            </div>
        </div>
        <div class="copyright">
            <p>&copy; 2024 RideEase. All rights reserved.</p>
        </div>
    </footer>
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/11.4.8/sweetalert2.min.js"></script>
    
    <script>
    // Attach the click event listener programmatically in JavaScript
    document.getElementById("viewList").addEventListener("click", function (event) {
        // Prevent the default behavior of the link
        event.preventDefault();

        // Ask if the user is an accountant
        const isAccountant = confirm("Are you the Accountant?");

        // If the user is not the accountant, redirect to the registration page
        if (!isAccountant) {
            window.location.href = 'payment.jsp';
        } else {
            // Prompt for username and password
            const username = prompt("Enter your username:");
            const password = prompt("Enter your password:");

            // Validate credentials
            if (username === "12345" && password === "12345") {
                alert("Welcome, Accountant!");
                window.location.href = 'paymentList'; // Allow access to the payment list
            } else {
                alert("Invalid credentials! Redirecting to registration page.");
                window.location.href = 'payment.jsp'; // Redirect if credentials are incorrect
            }
        }
    });
</script>

<script>
document.addEventListener("DOMContentLoaded", function () {
    const form = document.querySelector('.register-form');
    
    form.addEventListener('submit', function (event) {
        // Prevent default form submission
        event.preventDefault();
        
        // Get values from the form
        const paymentMethod = document.querySelector('input[name="paymentMethod"]:checked');
        const cardholderName = document.getElementById('cardholdername').value.trim();
        const email = document.getElementById('email').value.trim();
        const cardNumber = document.getElementById('cardnumber').value.trim();
        const amount = document.getElementById('amount').value.trim();
        const expDate = document.getElementById('expdate').value.trim();
        const cvv = document.getElementById('cvv').value.trim();

        // Initialize an array to hold error messages
        let errors = [];

        // Validation checks
        if (!paymentMethod) {
            errors.push("Please select a payment method.");
        }
        if (!cardholderName) {
            errors.push("Card Holder Name is required.");
        }
        if (!email) {
            errors.push("Email is required.");
        } else {
            const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            if (!emailPattern.test(email)) {
                errors.push("Please enter a valid email address.");
            }
        }
        if (!cardNumber) {
            errors.push("Card Number is required.");
        } else if (!/^\d{16}$/.test(cardNumber)) {  // Check if card number is exactly 16 digits
            errors.push("Card Number must be exactly 16 digits long.");
        }
        if (!amount) {
            errors.push("Amount is required.");
        } else if (isNaN(amount) || amount <= 0) {
            errors.push("Please enter a valid amount.");
        }
        if (!expDate) {
            errors.push("Expiration Date is required.");
        } else {
            const expDatePattern = /^(0[1-9]|1[0-2])\/\d{2}$/;
            if (!expDatePattern.test(expDate)) {
                errors.push("Expiration Date must be in MM/YY format.");
            }
        }
        if (!cvv) {
            errors.push("CVV is required.");
        } else if (isNaN(cvv) || cvv.length !== 3) {
            errors.push("CVV must be a 3-digit number.");
        }

        // Display errors if there are any
        if (errors.length > 0) {
            alert(errors.join("\n"));
        } else {
            // If no errors, submit the form
            form.submit();
        }
    });
});
</script>



</body>
</html>