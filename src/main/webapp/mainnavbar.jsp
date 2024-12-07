<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JFSD - Spring Boot Demo</title>
    <style>
        /* Reset some default styles */
        body, h2, div, a {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Use Flexbox for page layout */
        html, body {
            height: 100%;
            display: flex;
            flex-direction: column;
        }

        /* Body styling */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            color: #333;
            line-height: 1.6;
            flex: 1;
        }

        /* Navbar styling */
        nav {
            display: flex;
            justify-content: center;
            align-items: center;
            background: linear-gradient(90deg, #00bcd4, #005f6b); /* Gradient background */
            padding: 15px 0;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            z-index: 100;
        }
        
        nav a {
            text-decoration: none;
            color: white;
            padding: 12px 20px;
            margin: 0 15px;
            font-size: 1.2em;
            font-weight: 500;
            border-radius: 30px; /* Rounded corners */
            transition: all 0.3s ease;
        }

        nav a:hover {
            background-color: #ffffff33; /* Light background on hover */
            color: #005f6b; /* Dark text on hover */
            transform: scale(1.1); /* Slightly larger on hover */
        }

        nav a:active {
            transform: scale(0.98); /* Shrink effect when clicked */
        }

        /* Page Header (Title) */
        h2 {
            color: #444;
            font-size: 2.5em;
            font-weight: 600;
            margin-top: 50px;
            text-align: center;
            padding-bottom: 20px;
            border-bottom: 2px solid #ccc;
        }

        /* Content Section */
        .content {
            max-width: 1200px;
            margin: 0 auto;
            padding: 30px;
            text-align: center;
        }

        .content p {
            font-size: 1.5em;
            color: #666;
        }

        /* Responsive design */
        @media (max-width: 768px) {
            nav {
                flex-direction: column;
                padding: 10px 0;
            }
            
            nav a {
                margin: 5px 0;
            }
        }
    </style>
</head>
<body>
    <nav>
        <a href="/">Home</a>
        <a href="customerreg">Customer Registration</a>
        <a href="customerlogin">Customer Login</a>
        <a href="adminlogin">Admin Login</a>
    </nav>
</body>
</html>
