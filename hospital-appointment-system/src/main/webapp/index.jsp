<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CarePoint | Hospital Appointment System</title>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            color: #1e293b;
            background: #f8fafc;
        }

        nav {
            height: 72px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 0 8%;
            background: white;
            border-bottom: 1px solid #e2e8f0;
        }

        .logo {
            font-size: 27px;
            font-weight: bold;
            color: #0f766e;
        }

        .nav-links {
            display: flex;
            align-items: center;
            gap: 28px;
        }

        .nav-links a {
            text-decoration: none;
            color: #334155;
            font-weight: 500;
        }

        .nav-links a:hover {
            color: #0f766e;
        }

        .signup-btn {
            background: #0f766e;
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
            background: linear-gradient(135deg, #ecfeff, #f8fafc);
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
            color: #0f766e;
        }

        .hero-content p {
            color: #64748b;
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
            background: #0f766e;
            color: white;
            padding: 14px 25px;
            border-radius: 7px;
            font-weight: bold;
        }

        .secondary-btn {
            text-decoration: none;
            background: white;
            color: #0f766e;
            padding: 14px 25px;
            border-radius: 7px;
            border: 1px solid #99f6e4;
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
            color: #64748b;
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
            border: 1px solid #e2e8f0;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.06);
        }

        .service-card h3 {
            margin-bottom: 12px;
        }

        .service-card p {
            color: #64748b;
            line-height: 1.6;
        }

        .stats {
            background: #134e4a;
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
            color: #99f6e4;
        }

        .cta {
            margin: 70px 8%;
            padding: 55px 30px;
            text-align: center;
            border-radius: 18px;
            background: linear-gradient(135deg, #0f766e, #14b8a6);
            color: white;
        }

        .cta h2 {
            font-size: 35px;
            margin-bottom: 15px;
        }

        .cta p {
            margin-bottom: 25px;
            color: #ccfbf1;
        }

        .cta a {
            display: inline-block;
            text-decoration: none;
            background: white;
            color: #0f766e;
            padding: 13px 25px;
            border-radius: 7px;
            font-weight: bold;
        }

        footer {
            background: #0f172a;
            color: #cbd5e1;
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
        CarePoint
    </div>

    <div class="nav-links">
        <a href="#">Home</a>
        <a href="#">Doctors</a>
        <a href="#">Departments</a>
        <a href="#">Appointments</a>
        <a href="signup.jsp" class="signup-btn">Sign Up</a>
        <a href="getYourAccount.jsp" class="signup-btn">Get your Account</a>
    </div>

</nav>


<section class="hero">

    <div class="hero-content">

        <h1>
            Better Healthcare,
            <span>Better Care.</span>
        </h1>

        <p>
            Find the right doctor, check available appointments
            and manage your healthcare appointments through one
            convenient platform.
        </p>

        <div class="hero-buttons">

            <a href="#" class="primary-btn">
                Book Appointment
            </a>

            <a href="signup.jsp" class="secondary-btn">
                Create Account
            </a>

        </div>

    </div>


    <div class="hero-image">

        <img src="https://images.unsplash.com/photo-1576091160399-112ba8d25d1d?auto=format&fit=crop&w=1000&q=80" alt="Doctor consulting a patient">

    </div>

</section>


<section class="services">

    <h2>
        Our Services
    </h2>

    <p class="section-description">
        Access healthcare services quickly and conveniently.
    </p>


    <div class="service-container">

        <div class="service-card">

            <h3>
                Find a Doctor
            </h3>

            <p>
                Search doctors by specialization and
                find the right healthcare professional.
            </p>

        </div>


        <div class="service-card">

            <h3>
                Book Appointment
            </h3>

            <p>
                Choose an available date and time and
                schedule your appointment online.
            </p>

        </div>


        <div class="service-card">

            <h3>
                Manage Appointments
            </h3>

            <p>
                View your upcoming appointments and
                manage your appointment information.
            </p>

        </div>

    </div>

</section>


<section class="stats">

    <div class="stat">

        <h2>
            100+
        </h2>

        <p>
            Doctors
        </p>

    </div>


    <div class="stat">

        <h2>
            20+
        </h2>

        <p>
            Departments
        </p>

    </div>


    <div class="stat">

        <h2>
            10K+
        </h2>

        <p>
            Patients
        </p>

    </div>


    <div class="stat">

        <h2>
            24/7
        </h2>

        <p>
            Support
        </p>

    </div>

</section>


<section class="cta">

    <h2>
        Take the First Step Toward Better Healthcare
    </h2>

    <p>
        Create an account and start managing your appointments.
    </p>

    <a href="signup.jsp">
        Get Started
    </a>

</section>


<footer>

    <p>
        &copy; 2026 CarePoint. All rights reserved.
    </p>

</footer>

</body>

</html>