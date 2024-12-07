<%@page import="com.klef.jfsd.springboot.model.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Customer c = (Customer) session.getAttribute("customer");
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Customer Profile</title>
<style>
    /* Global Styles */
    body {
        font-family: 'Roboto', sans-serif;
        margin: 0;
        padding: 0;
        background: linear-gradient(to right, #56CCF2, #2F80ED); /* Soft gradient background */
        color: #fff;
        line-height: 1.6;
    }

    /* Fullscreen Centered Content */
    .content {
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
        padding: 20px;
        text-align: center;
    }

    /* Profile Container */
    .profile-container {
        background: rgba(255, 255, 255, 0.85);
        padding: 30px;
        border-radius: 12px;
        width: 100%;
        max-width: 900px;
        box-shadow: 0 10px 30px rgba(0, 0, 0, 0.15);
        transition: transform 0.3s ease-in-out;
    }

    .profile-container:hover {
        transform: translateY(-10px); /* Hover effect for elevation */
    }

    h3 {
        font-size: 32px;
        font-weight: 600;
        color: #2F80ED;
        margin-bottom: 20px;
        letter-spacing: 1px;
    }

    /* Profile Details */
    .profile-details {
        display: grid;
        grid-template-columns: repeat(2, 1fr);
        gap: 20px;
        margin-top: 20px;
    }

    .profile-details div {
        background-color: rgba(245, 245, 245, 0.6);
        border-radius: 10px;
        padding: 20px;
        transition: background-color 0.3s ease-in-out;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    }

    .profile-details div:hover {
        background-color: rgba(245, 245, 245, 0.8); /* Hover effect for profile detail */
    }

    .profile-details label {
        font-weight: 600;
        font-size: 18px;
        color: #333;
    }

    .profile-details span {
        font-size: 16px;
        color: #555;
        margin-top: 8px;
    }

    /* Button Styles */
    .btn-edit {
        background-color: #2F80ED;
        color: white;
        border: none;
        padding: 12px 25px;
        font-size: 18px;
        font-weight: 500;
        border-radius: 30px;
        cursor: pointer;
        margin-top: 20px;
        transition: background-color 0.3s ease;
    }

    .btn-edit:hover {
        background-color: #56CCF2;
    }

    /* Footer */
    footer {
        text-align: center;
        padding: 20px 0;
        background-color: rgba(0, 0, 0, 0.1);
        color: #555;
        font-size: 14px;
        position: fixed;
        width: 100%;
        bottom: 0;
    }

    /* Responsive Design */
    @media (max-width: 768px) {
        .profile-details {
            grid-template-columns: 1fr;
        }

        h3 {
            font-size: 28px;
        }

        .profile-container {
            padding: 25px;
        }

        .btn-edit {
            width: 100%;
        }
    }
</style>
</head>
<body>

<%@include file="customernavbar.jsp" %>

<div class="content">
    <div class="profile-container">
        <h3>My Profile</h3>
        <div class="profile-details">
            <div>
                <label>ID</label>
                <span><%= c.getId() %></span>
            </div>
            <div>
                <label>Name</label>
                <span><%= c.getName() %></span>
            </div>
            <div>
                <label>Gender</label>
                <span><%= c.getGender() %></span>
            </div>
            <div>
                <label>Date of Birth</label>
                <span><%= c.getDateofbirth() %></span>
            </div>
            <div>
                <label>Email</label>
                <span><%= c.getEmail() %></span>
            </div>
            <div>
                <label>Location</label>
                <span><%= c.getLocation() %></span>
            </div>
            <div>
                <label>Contact</label>
                <span><%= c.getContact() %></span>
            </div>
        </div>
        <button class="btn-edit">Edit Profile</button>
    </div>
</div>

</body>
</html>
