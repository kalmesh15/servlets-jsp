<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PowerPay | Sign Up</title>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #eff6ff, #dbeafe);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 30px;
        }

        .signup-container {
            width: 460px;
            background: white;
            padding: 35px;
            border-radius: 14px;
            box-shadow: 0 15px 40px rgba(0, 0, 0, 0.12);
        }

        .logo {
            text-align: center;
            color: #2563eb;
            font-size: 28px;
            font-weight: bold;
            margin-bottom: 8px;
        }

        h1 {
            text-align: center;
            font-size: 25px;
            margin-bottom: 8px;
            color: #1f2937;
        }

        .subtitle {
            text-align: center;
            color: #6b7280;
            margin-bottom: 28px;
        }

        .form-group {
            margin-bottom: 17px;
        }

        label {
            display: block;
            margin-bottom: 7px;
            font-weight: 600;
            color: #374151;
        }

        input,
        select {
            width: 100%;
            padding: 12px;
            border: 1px solid #d1d5db;
            border-radius: 7px;
            font-size: 15px;
        }

        input:focus,
        select:focus {
            outline: none;
            border-color: #2563eb;
        }

        .submit-btn {
            width: 100%;
            padding: 13px;
            margin-top: 8px;
            border: none;
            border-radius: 7px;
            background: #2563eb;
            color: white;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
        }

        .submit-btn:hover {
            background: #1d4ed8;
        }

        .login-link {
            text-align: center;
            margin-top: 20px;
            color: #6b7280;
        }

        .login-link a {
            color: #2563eb;
            text-decoration: none;
            font-weight: bold;
        }
    </style>
</head>

<body>

<div class="signup-container">

    <div class="logo">
        PowerPay
    </div>

    <h1>
        Create Your Account
    </h1>

    <p class="subtitle">
        Register to manage your electricity bills
    </p>

    <form action="register" method="post">

        <div class="form-group">
            <label for="fullName">Full Name</label>
            <input type="text" id="fullName" name="fullName" placeholder="Enter your full name" required>
        </div>

        <div class="form-group">
            <label for="email">Email Address</label>
            <input type="email" id="email" name="email" placeholder="Enter your email address" required>
        </div>

        <div class="form-group">
            <label for="phone">Phone Number</label>
            <input type="tel" id="phone" name="phone" placeholder="Enter your phone number" required>
        </div>

        <div class="form-group">
            <label for="password">Password</label>
            <input type="password" id="password" name="password" placeholder="Create a password" required>
        </div>

        <div class="form-group">
            <label for="consumerNumber">Consumer Number</label>
            <input type="text" id="consumerNumber" name="consumerNumber" placeholder="Enter your consumer number" required>
        </div>

        <div class="form-group">
            <label for="connectionType">Connection Type</label>
            <select id="connectionType" name="connectionType" required>
                <option value="">Select connection type</option>
                <option value="RESIDENTIAL">Residential</option>
                <option value="COMMERCIAL">Commercial</option>
                <option value="INDUSTRIAL">Industrial</option>
            </select>
        </div>

        <div class="form-group">
            <label for="address">Address</label>
            <input type="text" id="address" name="address" placeholder="Enter your address" required>
        </div>

        <button type="submit" class="submit-btn">
            Create Account
        </button>

    </form>



</div>

</body>

</html>