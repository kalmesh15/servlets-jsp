<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CineBook | Sign Up</title>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #18181f, #29151a);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 30px;
        }

        .signup-container {
            width: 450px;
            background: #ffffff;
            padding: 35px;
            border-radius: 14px;
            box-shadow: 0 15px 40px rgba(0, 0, 0, 0.35);
        }

        .logo {
            text-align: center;
            color: #ef4444;
            font-size: 28px;
            font-weight: bold;
            margin-bottom: 8px;
        }

        h1 {
            text-align: center;
            font-size: 25px;
            margin-bottom: 8px;
            color: #18181b;
        }

        .subtitle {
            text-align: center;
            color: #71717a;
            margin-bottom: 28px;
        }

        .form-group {
            margin-bottom: 17px;
        }

        label {
            display: block;
            margin-bottom: 7px;
            font-weight: 600;
            color: #3f3f46;
        }

        input,
        select {
            width: 100%;
            padding: 12px;
            border: 1px solid #d4d4d8;
            border-radius: 7px;
            font-size: 15px;
        }

        input:focus,
        select:focus {
            outline: none;
            border-color: #ef4444;
        }

        .submit-btn {
            width: 100%;
            padding: 13px;
            margin-top: 8px;
            border: none;
            border-radius: 7px;
            background: #ef4444;
            color: white;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
        }

        .submit-btn:hover {
            background: #dc2626;
        }

        .login-link {
            text-align: center;
            margin-top: 20px;
            color: #71717a;
        }

        .login-link a {
            color: #ef4444;
            text-decoration: none;
            font-weight: bold;
        }
    </style>
</head>

<body>

<div class="signup-container">

    <div class="logo">
        CineBook
    </div>

    <h1>
        Create Your Account
    </h1>

    <p class="subtitle">
        Sign up and start booking your movie tickets
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
            <label for="city">City</label>
            <input type="text" id="city" name="city" placeholder="Enter your city" required>
        </div>

        <div class="form-group">
            <label for="favoriteGenre">Favorite Movie Genre</label>
            <select id="favoriteGenre" name="favoriteGenre" required>
                <option value="">Select your favorite genre</option>
                <option value="ACTION">Action</option>
                <option value="COMEDY">Comedy</option>
                <option value="DRAMA">Drama</option>
                <option value="HORROR">Horror</option>
                <option value="SCI_FI">Sci-Fi</option>
                <option value="THRILLER">Thriller</option>
            </select>
        </div>

        <button type="submit" class="submit-btn">
            Create Account
        </button>

    </form>


</div>

</body>

</html>