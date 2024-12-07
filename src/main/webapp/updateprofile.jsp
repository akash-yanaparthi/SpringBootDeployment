<%@page import="com.klef.jfsd.springboot.model.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Customer c = (Customer) session.getAttribute("customer");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Profile</title>
    <style>
        /* General Body Styling */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f7f9fb; /* Light background for clean look */
            color: #333;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            height: 100vh;
        }

        /* Container for Form */
        .form-container {
            background-color: #ffffff;
            width: 100%;
            max-width: 650px;
            margin: 40px auto;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 6px 16px rgba(0, 0, 0, 0.1);
            box-sizing: border-box;
        }

        /* Form Heading */
        h3 {
            text-align: center;
            color: #005f6b;
            margin-bottom: 30px;
            font-size: 2em;
            font-weight: bold;
        }

        /* Label Styling */
        label {
            display: block;
            font-weight: 600;
            margin-bottom: 12px;
            font-size: 1rem;
            color: #555;
        }

        /* Input field styling */
        input[type="text"], input[type="email"], input[type="date"], input[type="password"], input[type="number"] {
            width: 100%;
            padding: 14px;
            margin-bottom: 18px;
            border: 1px solid #ddd;
            border-radius: 6px;
            font-size: 1rem;
            color: #333;
            background-color: #f9f9f9;
            transition: border-color 0.3s ease, box-shadow 0.3s ease;
        }

        /* Input focus effect */
        input[type="text"]:focus, input[type="email"]:focus, input[type="date"]:focus, input[type="password"]:focus, input[type="number"]:focus {
            border-color: #00bcd4;
            box-shadow: 0 0 6px rgba(0, 188, 212, 0.3);
        }

        /* Gender Radio Buttons */
        .gender-label {
            font-size: 1rem;
            color: #555;
        }

        .gender-options {
            margin-bottom: 20px;
            display: flex;
            gap: 15px;
        }

        input[type="radio"] {
            margin-right: 8px;
        }

        /* Button Styling */
        input[type="submit"], input[type="reset"] {
            width: 48%;
            padding: 14px;
            margin-top: 15px;
            border: none;
            border-radius: 8px;
            font-size: 1.1rem;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        /* Submit button style */
        input[type="submit"] {
            background-color: #00bcd4;
            color: white;
        }

        input[type="submit"]:hover {
            background-color: #0097a7;
            transform: scale(1.05);
        }

        /* Reset button style */
        input[type="reset"] {
            background-color: #f44336;
            color: white;
        }

        input[type="reset"]:hover {
            background-color: #e53935;
            transform: scale(1.05);
        }

        /* Clear Button Styling (Spacing Between Submit and Reset) */
        .form-container input[type="submit"], .form-container input[type="reset"] {
            margin-right: 4%;
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
                margin-bottom: 15px;
            }

            .gender-label {
                margin-right: 15px;
            }
        }

        /* Adding border and box-shadow to input fields for better clarity */
        input[type="text"], input[type="email"], input[type="date"], input[type="password"], input[type="number"] {
            border: 1px solid #ccc;
            background-color: #f4f6f8;
        }
    </style>
</head>
<body>
    <%@ include file="customernavbar.jsp" %>
    <div class="form-container">
        <h3>Customer Update Form</h3>
        <form method="post" action="update">
            <label>ID</label>
            <input type="number" name="cid" value="<%=c.getId() %>" readonly required />
            
            <label>Enter Name</label>
            <input type="text" name="cname" value="<%=c.getName() %>" required />
            
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
            <input type="email" name="cemail" value="<%=c.getEmail() %>" readonly required />

            <label>Enter Password</label>
            <input type="password" name="cpwd" value="<%=c.getPassword() %>" required />

            <label>Enter Location</label>
            <input type="text" name="clocation" value="<%=c.getLocation() %>" required />

            <label>Enter Contact</label>
            <input type="text" name="ccontact" value="<%=c.getContact() %>" required />

            <input type="submit" value="Update" />
            <input type="reset" value="Clear" />
        </form>
    </div>
    <div>
        <%@ include file="footer.jsp" %>
    </div>
</body>
</html>
