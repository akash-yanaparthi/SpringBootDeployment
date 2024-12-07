<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View All Products</title>
<style>
    /* General body styles */
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        color: #333;
        margin: 0;
        padding: 0;
    }

    /* Header section */
    h3 {
        text-align: center;
        color: #0073e6;
        margin-top: 20px;
    }

    /* Table styling */
    table {
        width: 80%;
        margin: 20px auto;
        border-collapse: collapse;
        background-color: #fff;
        border-radius: 10px;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    }

    th, td {
        padding: 12px;
        text-align: center;
        border: 1px solid #ddd;
    }

    th {
        background-color: #0073e6;
        color: #fff;
        font-size: 16px;
    }

    td {
        background-color: #f9f9f9;
    }

    td img {
        max-width: 100px;
        height: auto;
        border-radius: 5px;
    }

    tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    tr:hover {
        background-color: #e0f7fa;
    }

    /* Footer styling */
    footer {
        text-align: center;
        background-color: #0073e6;
        color: #fff;
        padding: 10px;
        position: fixed;
        bottom: 0;
        width: 100%;
    }

    .container {
        margin: 0 auto;
        padding: 0 20px;
    }

    .navbar {
        text-align: center;
        background-color: #333;
        padding: 15px;
        color: white;
        font-size: 18px;
    }

    .navbar a {
        color: white;
        text-decoration: none;
        padding: 10px 20px;
    }

    .navbar a:hover {
        background-color: #0073e6;
    }
</style>
</head>
<body>

<%@ include file="adminnavbar.jsp" %><br/><br/>

<div class="container">
    <h3>View All Products</h3>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>NAME</th>
                <th>DESCRIPTION</th>
                <th>COST</th>
                <th>IMAGE</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${products}" var="product">
                <tr>
                    <td><c:out value="${product.id}"></c:out></td>
                    <td><c:out value="${product.name}"></c:out></td>
                    <td><c:out value="${product.description}"></c:out></td>
                    <td><c:out value="${product.cost}"></c:out></td>
                    <td>
                        <img src="displayproductimage?id=${product.id}" alt="${product.name}" />
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>

<%@ include file="footer.jsp" %>

</body>
</html>
