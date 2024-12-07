<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Registration</title>
    <style>
        /* General Body Styling */
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background: url('https://media.istockphoto.com/id/1463013729/photo/online-registration-form-for-modish-form-filling.jpg?s=612x612&w=0&k=20&c=Fnx06haU4IHYLcRpy9Po_TBknvBqVjicGuUWkGu8e6Y=') no-repeat center center fixed;
            background-size: cover;
            color: #fff;
        }

        /* Navbar Styling */
        nav {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            background-color: rgba(0, 51, 102, 0.8); /* Semi-transparent background */
            padding: 10px 0;
            z-index: 9999;
        }

        nav ul {
            display: flex;
            justify-content: center;
            list-style-type: none;
            padding: 0;
            margin: 0;
        }

        nav ul li {
            margin: 0 15px;
        }

        nav ul li a {
            color: white;
            text-decoration: none;
            font-size: 1.2rem;
            font-weight: bold;
            text-transform: uppercase;
            letter-spacing: 1px;
            padding: 8px 16px;
            transition: background-color 0.3s ease;
        }

        nav ul li a:hover {
            background-color: #00bcd4;
            border-radius: 5px;
        }

        /* Form Container */
        .form-container {
            background-color: rgba(255, 255, 255, 0.9); /* Transparent white background */
            width: 100%;
            max-width: 600px;
            margin: 100px auto; /* Center the form */
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.15);
            box-sizing: border-box;
            position: relative;
            z-index: 2;
            animation: moveCard 5s infinite alternate ease-in-out; /* Card Animation */
            backdrop-filter: blur(10px); /* Blurs the background behind the card */
        }

        /* Animation for Card */
        @keyframes moveCard {
            0% {
                transform: translateX(0);
            }
            50% {
                transform: translateX(20px); /* Move right */
            }
            100% {
                transform: translateX(-20px); /* Move left */
            }
        }

        /* Form Heading */
        h3 {
            text-align: center;
            color: #005f6b;
            margin-bottom: 20px;
            font-size: 2.5em;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 2px;
        }

        /* Label Styling */
        label {
            display: block;
            font-weight: bold;
            margin-bottom: 10px;
            font-size: 1rem;
            color: #333;
        }

        /* Input field styling */
        input[type="text"], input[type="email"], input[type="date"], input[type="password"] {
            width: 100%;
            padding: 14px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 1rem;
            color: #333;
            background-color: #f9f9f9;
            transition: all 0.3s ease;
        }

        input[type="text"]:focus, input[type="email"]:focus, input[type="date"]:focus, input[type="password"]:focus {
            border: 1px solid #00bcd4;
            box-shadow: 0 0 5px rgba(0, 188, 212, 0.7);
        }

        /* Radio Buttons */
        .gender-label {
            font-size: 1rem;
            color: #333;
        }

        .gender-options {
            margin-bottom: 20px;
        }

        input[type="radio"] {
            margin-right: 10px;
        }

        /* Button Styling */
        input[type="submit"], input[type="reset"] {
            width: 48%;
            padding: 14px;
            margin-top: 20px;
            border: none;
            border-radius: 8px;
            font-size: 1.1rem;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        /* Submit button style */
        input[type="submit"] {
            background-color: #005f6b;
            color: white;
        }

        input[type="submit"]:hover {
            background-color: #00bcd4;
        }

        /* Reset button style */
        input[type="reset"] {
            background-color: #f44336;
            color: white;
        }

        input[type="reset"]:hover {
            background-color: #e53935;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .form-container {
                padding: 20px;
                margin: 20px;
            }

            input[type="submit"], input[type="reset"] {
                width: 100%;
                margin-top: 15px;
            }

            .gender-options {
                display: block;
            }
        }
    </style>
</head>
<body>
    <%@ include file="mainnavbar.jsp" %>

    <div class="form-container">
        <h3>Register</h3>
        <form method="post" action="insertcustomer">
            <label>Enter Name</label>
            <input type="text" name="cname" required placeholder="Full Name" />

            <label>Select Gender</label>
            <div class="gender-options">
                <label class="gender-label">
                    <input type="radio" name="cgender" value="Male" required /> Male
                </label>
                <label class="gender-label">
                    <input type="radio" name="cgender" value="Female" required /> Female
                </label>
                <label class="gender-label">
                    <input type="radio" name="cgender" value="Others" required /> Others
                </label>
            </div>

            <label>Select Date of Birth</label>
            <input type="date" name="cdob" required />

            <label>Enter Email ID</label>
            <input type="email" name="cemail" required placeholder="you@example.com" />

            <label>Enter Password</label>
            <input type="password" name="cpwd" required placeholder="Password" />

            <label>Enter Location</label>
            <input type="text" name="clocation" required placeholder="Your Location" />

            <label>Enter Contact</label>
            <input type="text" name="ccontact" required placeholder="Phone Number" />

            <input type="submit" value="Register" />
            <input type="reset" value="Clear" />
        </form>
    </div>

    <%@ include file="footer.jsp" %>
</body>
</html>
