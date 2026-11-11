<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CarePoint | Sign Up</title>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #ecfeff, #ccfbf1);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 30px;
        }

        .signup-container {
            width: 470px;
            background: white;
            padding: 35px;
            border-radius: 14px;
            box-shadow: 0 15px 40px rgba(0, 0, 0, 0.12);
        }

        .logo {
            text-align: center;
            color: #0f766e;
            font-size: 28px;
            font-weight: bold;
            margin-bottom: 8px;
        }

        h1 {
            text-align: center;
            font-size: 25px;
            margin-bottom: 8px;
            color: #1e293b;
        }

        .subtitle {
            text-align: center;
            color: #64748b;
            margin-bottom: 28px;
        }

        .form-group {
            margin-bottom: 17px;
        }

        label {
            display: block;
            margin-bottom: 7px;
            font-weight: 600;
            color: #334155;
        }

        input,
        select {
            width: 100%;
            padding: 12px;
            border: 1px solid #cbd5e1;
            border-radius: 7px;
            font-size: 15px;
        }

        input:focus,
        select:focus {
            outline: none;
            border-color: #0f766e;
        }

        .submit-btn {
            width: 100%;
            padding: 13px;
            margin-top: 8px;
            border: none;
            border-radius: 7px;
            background: #0f766e;
            color: white;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
        }

        .submit-btn:hover {
            background: #115e59;
        }

        .login-link {
            text-align: center;
            margin-top: 20px;
            color: #64748b;
        }

        .login-link a {
            color: #0f766e;
            text-decoration: none;
            font-weight: bold;
        }
    </style>
</head>

<body>

<div class="signup-container">

    <div class="logo">
        CarePoint
    </div>

    <h1>
        Create Your Account
    </h1>

    <p class="subtitle">
        Register to manage your healthcare appointments
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
            <label for="dateOfBirth">Date of Birth</label>
            <input type="date" id="dateOfBirth" name="dateOfBirth" required>
        </div>

        <div class="form-group">
            <label for="gender">Gender</label>
            <select id="gender" name="gender" required>
                <option value="">Select gender</option>
                <option value="MALE">Male</option>
                <option value="FEMALE">Female</option>
                <option value="OTHER">Other</option>
            </select>
        </div>

        <div class="form-group">
            <label for="bloodGroup">Blood Group</label>
            <select id="bloodGroup" name="bloodGroup" required>
                <option value="">Select blood group</option>
                <option value="A_POSITIVE">A+</option>
                <option value="A_NEGATIVE">A-</option>
                <option value="B_POSITIVE">B+</option>
                <option value="B_NEGATIVE">B-</option>
                <option value="AB_POSITIVE">AB+</option>
                <option value="AB_NEGATIVE">AB-</option>
                <option value="O_POSITIVE">O+</option>
                <option value="O_NEGATIVE">O-</option>
            </select>
        </div>

        <div class="form-group">
            <label for="city">City</label>
            <input type="text" id="city" name="city" placeholder="Enter your city" required>
        </div>

        <button type="submit" class="submit-btn">
            Create Account
        </button>

    </form>

    <p class="login-link">
        Already have an account?
        <a href="#">Login</a>
    </p>

</div>

</body>

</html>