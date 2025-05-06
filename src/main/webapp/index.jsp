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

    <main>
        <h1>Booking Details</h1>
        <table>
            <thead>
                <tr>
                    <th>Vehicle Type</th>
                    <th>Vehicle Brand</th>
                    <th>Persons</th>
                    <th>Date</th>
                    <th>Time</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Sedan</td>
                    <td>Toyota</td>
                    <td>3</td>
                    <td>2024-10-05</td>
                    <td>14:30</td>
                </tr>
            </tbody>
        </table>
        <a href="payment.jsp"><button class="pay-now">Pay Now</button></a>
    </main>

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
</body>
</html>