<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PowerPay | Electricity Bill Management</title>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            color: #1f2937;
            background: #f8fafc;
        }

        nav {
            height: 72px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 0 8%;
            background: white;
            border-bottom: 1px solid #e5e7eb;
        }

        .logo {
            font-size: 27px;
            font-weight: bold;
            color: #2563eb;
        }

        .nav-links {
            display: flex;
            align-items: center;
            gap: 28px;
        }

        .nav-links a {
            text-decoration: none;
            color: #374151;
            font-weight: 500;
        }

        .nav-links a:hover {
            color: #2563eb;
        }

        .signup-btn {
            background: #2563eb;
            color: white !important;
            padding: 11px 20px;
            border-radius: 7px;
        }

        .hero {
            min-height: 560px;
            padding: 70px 8%;
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 50px;
            background: linear-gradient(135deg, #eff6ff, #f8fafc);
        }

        .hero-content {
            max-width: 570px;
        }

        .hero-content h1 {
            font-size: 52px;
            line-height: 1.15;
            margin-bottom: 20px;
        }

        .hero-content h1 span {
            color: #2563eb;
        }

        .hero-content p {
            color: #6b7280;
            font-size: 18px;
            line-height: 1.7;
            margin-bottom: 30px;
        }

        .hero-buttons {
            display: flex;
            gap: 15px;
        }

        .primary-btn {
            text-decoration: none;
            background: #2563eb;
            color: white;
            padding: 14px 25px;
            border-radius: 7px;
            font-weight: bold;
        }

        .secondary-btn {
            text-decoration: none;
            background: white;
            color: #2563eb;
            padding: 14px 25px;
            border-radius: 7px;
            border: 1px solid #bfdbfe;
            font-weight: bold;
        }

        .hero-image {
            width: 48%;
        }

        .hero-image img {
            width: 100%;
            height: 370px;
            object-fit: cover;
            border-radius: 18px;
            box-shadow: 0 20px 45px rgba(0, 0, 0, 0.15);
        }

        .services {
            padding: 70px 8%;
            text-align: center;
        }

        .services h2 {
            font-size: 35px;
            margin-bottom: 10px;
        }

        .section-description {
            color: #6b7280;
            margin-bottom: 40px;
        }

        .service-container {
            display: flex;
            justify-content: center;
            gap: 25px;
            flex-wrap: wrap;
        }

        .service-card {
            width: 280px;
            padding: 30px 25px;
            background: white;
            border-radius: 12px;
            border: 1px solid #e5e7eb;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.06);
        }

        .service-card h3 {
            margin-bottom: 12px;
        }

        .service-card p {
            color: #6b7280;
            line-height: 1.6;
        }

        .stats {
            background: #1e3a8a;
            color: white;
            padding: 45px 8%;
            display: flex;
            justify-content: center;
            gap: 100px;
            text-align: center;
        }

        .stat h2 {
            font-size: 30px;
            margin-bottom: 5px;
        }

        .stat p {
            color: #bfdbfe;
        }

        .cta {
            margin: 70px 8%;
            padding: 55px 30px;
            text-align: center;
            border-radius: 18px;
            background: linear-gradient(135deg, #2563eb, #3b82f6);
            color: white;
        }

        .cta h2 {
            font-size: 35px;
            margin-bottom: 15px;
        }

        .cta p {
            margin-bottom: 25px;
            color: #dbeafe;
        }

        .cta a {
            display: inline-block;
            text-decoration: none;
            background: white;
            color: #2563eb;
            padding: 13px 25px;
            border-radius: 7px;
            font-weight: bold;
        }

        footer {
            background: #111827;
            color: #d1d5db;
            text-align: center;
            padding: 25px;
        }

        @media (max-width: 850px) {

            .hero {
                flex-direction: column;
                text-align: center;
            }

            .hero-image {
                width: 100%;
            }

            .hero-buttons {
                justify-content: center;
            }

            .stats {
                flex-wrap: wrap;
                gap: 35px;
            }

            .nav-links a:not(.signup-btn) {
                display: none;
            }
        }
    </style>
</head>

<body>

<nav>

    <div class="logo">
        PowerPay
    </div>

    <div class="nav-links">
        <a href="#">Home</a>
        <a href="#">Bill Details</a>
        <a href="#">Payment History</a>
        <a href="#">Contact</a>
        <a href="signup.jsp" class="signup-btn">Sign Up</a>
    </div>

</nav>


<section class="hero">

    <div class="hero-content">

        <h1>
            Manage Your
            <span>Electricity Bills</span>
            Easily.
        </h1>

        <p>
            View your electricity consumption, check current bills,
            track payment history and manage your account from one place.
        </p>

        <div class="hero-buttons">

            <a href="#" class="primary-btn">
                View Bill
            </a>

            <a href="signup.jsp" class="secondary-btn">
                Create Account
            </a>

        </div>

    </div>


    <div class="hero-image">

        <img src="https://images.unsplash.com/photo-1473341304170-971dccb5ac1e?auto=format&fit=crop&w=1000&q=80" alt="Electricity power infrastructure">

    </div>

</section>


<section class="services">

    <h2>
        Everything You Need
    </h2>

    <p class="section-description">
        Manage your electricity account quickly and conveniently.
    </p>


    <div class="service-container">

        <div class="service-card">

            <h3>
                View Bill
            </h3>

            <p>
                Check your latest electricity bill,
                due date and total payable amount.
            </p>

        </div>


        <div class="service-card">

            <h3>
                Pay Online
            </h3>

            <p>
                Make secure bill payments without
                visiting an electricity office.
            </p>

        </div>


        <div class="service-card">

            <h3>
                Payment History
            </h3>

            <p>
                View your previous bills and
                completed payment transactions.
            </p>

        </div>

    </div>

</section>


<section class="stats">

    <div class="stat">

        <h2>
            24/7
        </h2>

        <p>
            Online Access
        </p>

    </div>


    <div class="stat">

        <h2>
            10K+
        </h2>

        <p>
            Registered Users
        </p>

    </div>


    <div class="stat">

        <h2>
            99%
        </h2>

        <p>
            Payment Success
        </p>

    </div>


    <div class="stat">

        <h2>
            Secure
        </h2>

        <p>
            Transactions
        </p>

    </div>

</section>


<section class="cta">

    <h2>
        Take Control of Your Electricity Bills
    </h2>

    <p>
        Create your account and manage your bills from anywhere.
    </p>

    <a href="signup.jsp">
        Get Started
    </a>

</section>


<footer>

    <p>
        &copy; 2026 PowerPay. All rights reserved.
    </p>

</footer>

</body>

</html>