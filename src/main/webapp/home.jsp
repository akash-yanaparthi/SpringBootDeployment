<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <style>
        /* Body section styling */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            background: linear-gradient(to bottom, rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6)), url('https://via.placeholder.com/1920x1080.png?text=Stunning+Background') no-repeat center center fixed;
            background-size: cover; /* Make the background cover the whole page */
            color: #fff; /* Ensure the text stands out against the dark background */
        }

        /* Title Styling */
        h2 {
            text-align: center;
            color: #fff;
            padding: 20px 0;
            font-size: 3em;
            font-weight: 700;
            margin: 20px 0;
            border-bottom: 2px solid #ddd;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.7); /* Text shadow for better readability */
        }

        /* Container for house items */
        .gallery-container {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
            gap: 20px;
            padding: 20px;
            justify-items: center;
        }

        /* Individual house item styling */
        .gallery-item {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            width: 100%;
            max-width: 300px;
            text-align: center;
            padding: 10px;
        }

        .gallery-item:hover {
            transform: translateY(-10px); /* Lift effect on hover */
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2); /* Bigger shadow */
        }

        .gallery-item img {
            width: 100%;
            height: auto;
            border-bottom: 2px solid #ddd;
        }

        .gallery-item h3 {
            color: #333;
            font-size: 1.5em;
            margin: 10px 0;
        }

        .gallery-item p {
            color: #777;
            font-size: 1em;
            margin: 0 0 10px;
            padding: 0 10px;
        }

        .gallery-item .price {
            font-size: 1.2em;
            color: #00bcd4;
            font-weight: bold;
        }

        /* Responsive adjustments */
        @media (max-width: 768px) {
            h2 {
                font-size: 2.2em;
            }

            .gallery-item h3 {
                font-size: 1.2em;
            }

            .gallery-item p {
                font-size: 0.9em;
            }
        }
    </style>
</head>
<body>
    <%@ include file="mainnavbar.jsp" %>

<h2 style="color: white; text-align: center; font-size: 3em; font-weight: 700; padding: 20px 0;">Property Enhance</h2>


    <!-- Property Gallery Section -->
    <div class="gallery-container">
        <!-- House Item 1 -->
        <div class="gallery-item">
            <img src="https://images.pexels.com/photos/1571459/pexels-photo-1571459.jpeg?auto=compress&cs=tinysrgb&w=600" alt="Living Room">
            <h3>Modern Living Room</h3>
            <p>Enhance your space with a contemporary and cozy living room setup. Perfect for family gatherings.</p>
            <p class="price">$150</p>
        </div>

        <!-- House Item 2 -->
        <div class="gallery-item">
            <img src="https://images.pexels.com/photos/271816/pexels-photo-271816.jpeg?auto=compress&cs=tinysrgb&w=600" alt="Kitchen">
            <h3>Drawer</h3>
            <p>Upgrade to a fully equipped, modern Drawer with sleek appliances for your every needs.</p>
            <p class="price">$200</p>
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

    <%@ include file="footer.jsp" %>

</body>
</html>
