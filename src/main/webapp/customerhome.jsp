<%@ page import="com.klef.jfsd.springboot.model.Customer" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Customer c = (Customer) session.getAttribute("customer");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Home</title>
    <style>
        /* Body section styling */
        body {
            font-family: 'Roboto', sans-serif; /* Modern and clean font */
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            background: linear-gradient(to bottom, rgba(0, 0, 0, 0.8), rgba(0, 0, 0, 0.8)), url('https://via.placeholder.com/1920x1080.png?text=Stunning+Background') no-repeat center center fixed;
            background-size: cover;
            color: #fff;
            min-height: 100vh; /* Ensure the background covers the entire page */
        }

        /* Title Styling */
        h2 {
            text-align: center;	
            color: white;
            padding: 30px 0;
            font-size: 3.2em;
            font-weight: 700;
            margin: 20px 0;
            border-bottom: 3px solid #f0f0f0;
            text-shadow: 3px 3px 6px rgba(0, 0, 0, 0.7); /* Stronger text shadow */
        }

        /* Gallery Container */
        .gallery-container {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
            gap: 25px;
            padding: 40px;
            justify-items: center;
        }

        /* Individual gallery items */
        .gallery-item {
            background-color: rgba(255, 255, 255, 0.9); /* Slightly transparent background */
            border-radius: 12px;
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.2);
            overflow: hidden;
            transition: transform 0.4s ease, box-shadow 0.4s ease;
            text-align: center;
            padding: 15px;
        }

        .gallery-item:hover {
            transform: translateY(-15px); /* Slight lift effect */
            box-shadow: 0 12px 25px rgba(0, 0, 0, 0.3); /* Stronger shadow on hover */
        }

        .gallery-item img {
            width: 100%;
            height: auto;
            border-radius: 8px;
            transition: transform 0.3s ease; /* Smooth zoom on hover */
        }

        .gallery-item img:hover {
            transform: scale(1.05); /* Zoom effect */
        }

        .gallery-item h3 {
            color: #333;
            font-size: 1.6em;
            margin-top: 15px;
            font-weight: 600;
        }

        .gallery-item p {
            color: #777;
            font-size: 1.1em;
            margin: 10px 0;
            padding: 0 10px;
        }

        .gallery-item .price {
            font-size: 1.4em;
            color: #00bcd4;
            font-weight: 700;
            margin-top: 15px;
        }

        /* Responsive adjustments */
        @media (max-width: 768px) {
            h2 {
                font-size: 2.5em;
                
            }

            .gallery-item h3 {
                font-size: 1.4em;
            }

            .gallery-item p {
                font-size: 1em;
            }

            .gallery-item .price {
                font-size: 1.2em;
            }
        }

        /* Navbar and Footer (for better look) */
        .navbar, .footer {
            text-align: center;
            background-color: rgba(0, 0, 0, 0.7);
            padding: 15px;
            color: #fff;
            font-size: 1.2em;
        }

        .navbar a, .footer a {
            color: #00bcd4;
            text-decoration: none;
            margin: 0 15px;
        }

        .navbar a:hover, .footer a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <%@ include file="customernavbar.jsp" %> <!-- Navbar -->
    
<h2 style="text-align: center; color: white; padding: 30px 0; font-size: 3.2em; font-weight: 700; margin: 20px 0; border-bottom: 3px solid #f0f0f0; text-shadow: 3px 3px 6px rgba(0, 0, 0, 0.7);">Welcome <%= c.getName() %> to Your Home</h2>
    
    <!-- Property Gallery Section -->
    <div class="gallery-container">
        <!-- House Item 1 -->
        <div class="gallery-item">
            <img src="https://images.pexels.com/photos/1571459/pexels-photo-1571459.jpeg?auto=compress&cs=tinysrgb&w=600" alt="Living Room">
            <h3>Modern Living R</h3>
            <p>Enhance your space with a contemporary and cozy living room setup. Perfect for family gatherings.</p>
            <p class="price">$1500</p>
        </div>

        <!-- House Item 2 -->
        <div class="gallery-item">
            <img src="https://images.pexels.com/photos/271816/pexels-photo-271816.jpeg?auto=compress&cs=tinysrgb&w=600" alt="Kitchen">
            <h3>Drawer</h3>
            <p>Upgrade to a fully equipped, modern Drawer with sleek appliances for your every needs.</p>
            <p class="price">$2000</p>
        </div>

        <!-- House Item 3 -->
        <div class="gallery-item">
            <img src="https://images.pexels.com/photos/1648776/pexels-photo-1648776.jpeg?auto=compress&cs=tinysrgb&w=600" alt="Bedroom">
            <h3>Sofa Set</h3>
            <p>Relax in a serene Sofa with soft lighting and premium bedding for the perfect sitting.</p>
            <p class="price">$100</p>
        </div>

        <!-- House Item 4 -->
        <div class="gallery-item">
            <img src="https://images.pexels.com/photos/1643384/pexels-photo-1643384.jpeg?auto=compress&cs=tinysrgb&w=600" alt="Bathroom">
            <h3>Spacious Kitchen</h3>
            <p>Upgrade to a fully equipped, modern Kitchen with sleek appliances for your cooking needs.</p>
            <p class="price">$95</p>
        </div>

        <!-- House Item 5 -->
        <div class="gallery-item">
            <img src="https://images.pexels.com/photos/1571452/pexels-photo-1571452.jpeg?auto=compress&cs=tinysrgb&w=600" alt="Dining Room">
            <h3>Elegant Dining Room</h3>
            <p>Host your guests in an elegant dining room with a sophisticated dining table and comfortable chairs.</p>
            <p class="price">$130</p>
        </div>
        
        <!-- House Item 6 -->
        <div class="gallery-item">
            <img src="https://images.pexels.com/photos/439227/pexels-photo-439227.jpeg?auto=compress&cs=tinysrgb&w=600" alt="Home Office">
            <h3>Modern Bed Room</h3>
            <p>Create a productive work environment with a spacious and organized Bed Room setup.</p>
            <p class="price">$180</p>
        </div>
    </div>

    <%@ include file="footer.jsp" %> <!-- Footer -->

</body>
</html>
