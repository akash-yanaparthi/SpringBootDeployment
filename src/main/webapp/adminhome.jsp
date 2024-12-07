<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home</title>
    <style>
        /* General Body Styling */
        body {
            font-family: Arial, sans-serif;
            background-color: #f7f9fc;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            text-align: center;
        }

        /* Header Styling */
        h2 {
            color: #007bb5;
            font-size: 2.5em;
            margin-bottom: 20px;
            text-transform: uppercase;
            letter-spacing: 2px;
            animation: fadeIn 1s ease-out;
        }

        /* Container Styling */
        .container {
            background-color: #ffffff;
            padding: 30px;
            width: 100%;
            max-width: 600px;
            border-radius: 12px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
            animation: slideIn 0.8s ease-out;
        }

        /* Highlighted Count Styling */
        .count {
            color: #f44336;
            font-size: 2em;
            font-weight: bold;
            padding: 10px 20px;
            background-color: #eaf3f8;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
        }

        .count:hover {
            transform: scale(1.1);
        }

        /* Footer Styling */
        footer {
            position: fixed;
            bottom: 0;
            width: 100%;
            background-color: #333;
            color: white;
            text-align: center;
            padding: 10px;
            font-size: 0.9em;
        }

        /* Animation for fading in the header */
        @keyframes fadeIn {
            0% {
                opacity: 0;
                transform: translateY(-20px);
            }
            100% {
                opacity: 1;
                transform: translateY(0);
            }
        }

        /* Animation for sliding in the container */
        @keyframes slideIn {
            0% {
                transform: translateY(-30px);
                opacity: 0;
            }
            100% {
                transform: translateY(0);
                opacity: 1;
            }
        }
    </style>
</head>
<body>

<%@ include file="adminnavbar.jsp" %>

<div class="container">
    <h2>Hello Admin</h2>
    <p>Total Customers: <span class="count"><c:out value="${count }"></c:out></span></p>
</div>

<%@ include file="footer.jsp" %>

</body>
</html>
