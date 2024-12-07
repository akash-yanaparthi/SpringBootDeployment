<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <style>
        /* Basic Page Styling */
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            min-height: 100vh; /* Ensure full height for the body */
            display: flex;
            flex-direction: column;
        }

        /* Footer styling */
        footer {
            background: #222; /* Dark background */
            color: #fff;
            text-align: center;
            padding: 10px 0;
            position: relative;
            left: 0;
            bottom: 0;
            width: 100%;
            box-shadow: 0 -4px 6px rgba(0, 0, 0, 0.3); /* Subtle shadow for depth */
            font-size: 1em;
            z-index: 10; /* Keep it above other content */
        }

        footer p {
            margin: 0;
            font-size: 1.1em;
        }

        footer a {
            color: #00bcd4; /* Bright blue for links */
            text-decoration: none;
            font-weight: 500;
            transition: color 0.3s ease;
        }

        footer a:hover {
            color: #fff; /* Change link color to white on hover */
        }

        /* Footer Social Media Icons (if you want to add them) */
        footer .social-icons {
            margin-top: 10px;
        }

        footer .social-icons a {
            color: #fff;
            margin: 0 15px;
            font-size: 1.5em;
            text-decoration: none;
            transition: transform 0.3s ease;
        }

        footer .social-icons a:hover {
            transform: scale(1.1); /* Slightly scale up on hover */
        }

        /* Responsive Footer */
        @media (max-width: 768px) {
            footer {
                padding: 15px 0;
            }

            footer p {
                font-size: 1em; /* Smaller text on mobile */
            }

            footer .social-icons a {
                font-size: 1.2em; /* Slightly smaller icons on mobile */
                margin: 0 10px;
            }
        }
    </style>
</head>
<body>

    <!-- Main Content Here -->
    <div style="flex-grow: 1;"> <!-- Ensures content takes up remaining space -->
        <!-- Your page content goes here -->
    </div>

    <!-- Footer Section -->
    <footer>
        <p>&copy; 2024 Y Akash. All rights reserved. | <a href="https://yourwebsite.com/privacy-policy" target="_blank">Privacy Policy</a> | <a href="https://yourwebsite.com/terms" target="_blank">Terms of Service</a></p>
        <!-- Optional Social Media Icons -->
        
    </footer>

</body>
</html>
