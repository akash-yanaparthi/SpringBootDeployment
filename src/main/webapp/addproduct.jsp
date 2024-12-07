<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Product</title>
    <style>
        /* General Body Styling */
        body {
            font-family: 'Arial', sans-serif;
            background-image: url('https://www.example.com/your-background-image.jpg'); /* Replace with your image URL */
            background-size: cover;
            background-position: center;
            color: #333;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        /* Container for Form */
        .form-container {
            background-color: rgba(255, 255, 255, 0.9); /* Semi-transparent white */
            width: 100%;
            max-width: 600px;
            margin: 50px auto;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
            box-sizing: border-box;
        }

        /* Form Heading */
        h3 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
            font-size: 2em;
        }

        /* Label Styling */
        label {
            display: block;
            font-weight: bold;
            margin-bottom: 8px;
            font-size: 1rem;
            color: #555;
        }

        /* Input Field Styling */
        input[type="text"], input[type="email"], input[type="date"], input[type="password"],
        textarea, input[type="number"], input[type="file"] {
            width: 100%;
            padding: 12px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 1rem;
            color: #333;
            background-color: #f9f9f9;
        }

        textarea {
            resize: vertical;
            height: 120px;
        }

        /* Button Styling */
        input[type="submit"], input[type="reset"] {
            width: 48%;
            padding: 12px;
            margin-top: 10px;
            border: none;
            border-radius: 5px;
            font-size: 1.1rem;
            cursor: pointer;
        }

        /* Submit Button Styling */
        input[type="submit"] {
            background-color: #005f6b;
            color: white;
        }

        input[type="submit"]:hover {
            background-color: #00bcd4;
        }

        /* Reset Button Styling */
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
        }
    </style>
</head>
<body>
    <%@ include file="adminnavbar.jsp" %>

    <div class="form-container">
        <h3>Add Product</h3>
        <form method="post" action="insertproduct" enctype="multipart/form-data">
            <label for="pname">Product Name</label>
            <input type="text" id="pname" name="pname" required />

            <label for="pcost">Product Cost</label>
            <input type="number" id="pcost" name="pcost" step="0.01" required />
            
            <label for="pdescription">Product Description</label>
            <textarea id="pdescription" name="pdescription" required></textarea>
            
            <label for="pimage">Product Image</label>
            <input type="file" id="pimage" name="pimage" required />

            <div style="display: flex; justify-content: space-between;">
                <input type="submit" value="Add Product" />
                <input type="reset" value="Clear" />
            </div>
        </form>
    </div>s

    <%@ include file="footer.jsp" %>
</body>
</html>
