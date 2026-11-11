<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CineBook | Movie Ticket Booking</title>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background: #0f0f14;
            color: #f5f5f5;
        }

        nav {
            height: 72px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 0 8%;
            background: #17171f;
            border-bottom: 1px solid #292933;
        }

        .logo {
            font-size: 27px;
            font-weight: bold;
            color: #ef4444;
        }

        .nav-links {
            display: flex;
            align-items: center;
            gap: 28px;
        }

        .nav-links a {
            text-decoration: none;
            color: #d4d4d8;
            font-weight: 500;
        }

        .nav-links a:hover {
            color: #ef4444;
        }

        .signup-btn {
            background: #ef4444;
            color: white !important;
            padding: 11px 20px;
            border-radius: 7px;
        }

        .hero {
            min-height: 570px;
            padding: 70px 8%;
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 50px;
            background: linear-gradient(135deg, #18181f, #29151a);
        }

        .hero-content {
            max-width: 570px;
        }

        .hero-content h1 {
            font-size: 54px;
            line-height: 1.1;
            margin-bottom: 22px;
        }

        .hero-content h1 span {
            color: #ef4444;
        }

        .hero-content p {
            color: #a1a1aa;
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
            background: #ef4444;
            color: white;
            padding: 14px 25px;
            border-radius: 7px;
            font-weight: bold;
        }

        .secondary-btn {
            text-decoration: none;
            background: transparent;
            color: #f87171;
            padding: 14px 25px;
            border-radius: 7px;
            border: 1px solid #ef4444;
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
            box-shadow: 0 20px 50px rgba(0, 0, 0, 0.5);
        }

        .movies {
            padding: 70px 8%;
            text-align: center;
        }

        .movies h2 {
            font-size: 35px;
            margin-bottom: 10px;
        }

        .section-description {
            color: #a1a1aa;
            margin-bottom: 40px;
        }

        .movie-container {
            display: flex;
            justify-content: center;
            gap: 25px;
            flex-wrap: wrap;
        }

        .movie-card {
            width: 280px;
            background: #18181f;
            border-radius: 12px;
            overflow: hidden;
            text-align: left;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.3);
        }

        .movie-image {
            width: 100%;
            height: 350px;
            object-fit: cover;
        }

        .movie-content {
            padding: 20px;
        }

        .movie-content h3 {
            margin-bottom: 8px;
        }

        .movie-content p {
            color: #a1a1aa;
            margin-bottom: 15px;
        }

        .book-link {
            display: inline-block;
            text-decoration: none;
            background: #ef4444;
            color: white;
            padding: 10px 18px;
            border-radius: 6px;
            font-weight: bold;
        }

        .features {
            background: #17171f;
            padding: 55px 8%;
            display: flex;
            justify-content: center;
            gap: 70px;
            text-align: center;
        }

        .feature {
            max-width: 220px;
        }

        .feature h3 {
            margin-bottom: 10px;
        }

        .feature p {
            color: #a1a1aa;
            line-height: 1.5;
        }

        .cta {
            margin: 70px 8%;
            padding: 55px 30px;
            text-align: center;
            border-radius: 18px;
            background: linear-gradient(135deg, #b91c1c, #ef4444);
        }

        .cta h2 {
            font-size: 35px;
            margin-bottom: 15px;
        }

        .cta p {
            margin-bottom: 25px;
            color: #fee2e2;
        }

        .cta a {
            display: inline-block;
            text-decoration: none;
            background: white;
            color: #b91c1c;
            padding: 13px 25px;
            border-radius: 7px;
            font-weight: bold;
        }

        footer {
            background: #09090b;
            color: #a1a1aa;
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

            .features {
                flex-wrap: wrap;
                gap: 30px;
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
        CineBook
    </div>

    <div class="nav-links">
        <a href="#">Home</a>
        <a href="#">Movies</a>
        <a href="#">Theatres</a>
        <a href="#">My Bookings</a>
        <a href="signup.jsp" class="signup-btn">Sign Up</a>
    </div>

</nav>


<section class="hero">

    <div class="hero-content">

        <h1>
            Your Movie Night,
            <span>Starts Here.</span>
        </h1>

        <p>
            Discover the latest movies, choose your preferred theatre
            and book your seats quickly and securely.
        </p>

        <div class="hero-buttons">
            <a href="#" class="primary-btn">Book Tickets</a>
            <a href="#" class="secondary-btn">Explore Movies</a>
        </div>

    </div>

    <div class="hero-image">
        <img src="https://images.unsplash.com/photo-1489599849927-2ee91cede3ba?auto=format&fit=crop&w=1000&q=80" alt="Cinema theatre">
    </div>

</section>


<section class="movies">

    <h2>
        Now Showing
    </h2>

    <p class="section-description">
        Pick a movie and reserve your seats for the next show.
    </p>

    <div class="movie-container">

        <div class="movie-card">

            <img class="movie-image" src="https://images.unsplash.com/photo-1536440136628-849c177e76a1?auto=format&fit=crop&w=700&q=80" alt="Action movie">

            <div class="movie-content">

                <h3>Action Night</h3>

                <p>Action | 2h 20min</p>

                <a href="#" class="book-link">Book Now</a>

            </div>

        </div>


        <div class="movie-card">

            <img class="movie-image" src="https://images.unsplash.com/photo-1485846234645-a62644f84728?auto=format&fit=crop&w=700&q=80" alt="Cinema movie">

            <div class="movie-content">

                <h3>The Last Journey</h3>

                <p>Drama | 2h 10min</p>

                <a href="#" class="book-link">Book Now</a>

            </div>

        </div>


        <div class="movie-card">

            <img class="movie-image" src="https://images.unsplash.com/photo-1517604931442-7e0c8ed2963c?auto=format&fit=crop&w=700&q=80" alt="Movie theatre">

            <div class="movie-content">

                <h3>Beyond The Stars</h3>

                <p>Sci-Fi | 2h 35min</p>

                <a href="#" class="book-link">Book Now</a>

            </div>

        </div>

    </div>

</section>


<section class="features">

    <div class="feature">

        <h3>Easy Booking</h3>

        <p>
            Find movies and book your preferred seats in a few steps.
        </p>

    </div>

    <div class="feature">

        <h3>Choose Your Seat</h3>

        <p>
            Select available seats before confirming your booking.
        </p>

    </div>

    <div class="feature">

        <h3>Secure Booking</h3>

        <p>
            Keep your booking details organized and accessible.
        </p>

    </div>

</section>


<section class="cta">

    <h2>
        Ready for Your Next Movie?
    </h2>

    <p>
        Create an account and start booking your movie tickets.
    </p>

    <a href="signup.jsp">
        Create Account
    </a>

</section>


<footer>

    <p>
        &copy; 2026 CineBook. All rights reserved.
    </p>

</footer>

</body>

</html>