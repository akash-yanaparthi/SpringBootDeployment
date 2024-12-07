<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Login</title>
    <style>
        /* General Body Styling */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #e8f0f2;
            color: #333;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            height: 100vh;
            background-image: url('https://www.shutterstock.com/shutterstock/photos/2227428045/display_1500/stock-vector-otp-fa-authentication-password-secure-notice-login-verification-with-push-code-concept-2227428045.jpg');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
        }

        /* Container for Form */
        .form-container {
            background-color: rgba(255, 255, 255, 0.9); /* Transparent white background */
            width: 100%;
            max-width: 500px;
            margin: 40px auto; /* Center the form vertically */
            padding: 40px;
            border-radius: 16px; /* Rounded corners for smoother look */
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.15); /* Smooth shadow */
            box-sizing: border-box;
            animation: slideInRight 1s ease-out; /* Animation to slide from the right */
            backdrop-filter: blur(5px); /* Subtle blur effect */
        }

        /* Form Heading */
        h3 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
            font-size: 2.2em;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 3px;
            color: #00796b;
        }

        /* Label Styling */
        label {
            display: block;
            font-weight: bold;
            margin-bottom: 8px;
            font-size: 1rem;
            color: #555;
        }

        /* Input field styling */
        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 14px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 1.1rem;
            color: #333;
            background-color: #f9f9f9;
            transition: all 0.3s ease;
        }

        input[type="text"]:focus, input[type="password"]:focus {
            border: 2px solid #00bcd4;
            box-shadow: 0 0 8px rgba(0, 188, 212, 0.7);
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
            background-color: #00796b;
            color: white;
        }

        input[type="submit"]:hover {
            background-color: #004d40;
        }

        /* Reset button style */
        input[type="reset"] {
            background-color: #f44336;
            color: white;
        }

        input[type="reset"]:hover {
            background-color: #e53935;
        }

        /* Animation Keyframes */
        @keyframes slideInRight {
            0% {
                opacity: 0;
                transform: translateX(100%); /* Start from the right side */
            }
            100% {
                opacity: 1;
                transform: translateX(0); /* End in original position */
            }
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
        }
    </style>
</head>
<body>
    <%@ include file="mainnavbar.jsp" %> <!-- Navbar -->

    <h3 align="center" style="color:red">
        <c:out value="${message}"></c:out>
    </h3>

    <div class="form-container">
        <h3>Customer Login Form</h3>
        <form method="post" action="checkcustomerlogin">
            <label>Enter Email ID</label>
            <input type="text" name="cemail" required placeholder="you@example.com" />

            <label>Enter Password</label>
            <input type="password" name="cpwd" required placeholder="Password" />

            <input type="submit" value="Login" />
            <input type="reset" value="Clear" />
        </form>
    </div>

    <%@ include file="footer.jsp" %> <!-- Footer -->
</body>
</html>
