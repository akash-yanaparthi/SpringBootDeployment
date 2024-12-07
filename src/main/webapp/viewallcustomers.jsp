<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home</title>
    <style>
        /* General body styling */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            color: #333;
        }
        
        /* Header styles (Admin Navbar) */
        header {
            background-color: #333;
            color: white;
            padding: 10px 0;
            text-align: center;
        }
        
        /* Table styling */
        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        
        table th, table td {
            padding: 12px;
            text-align: center;
            border: 1px solid #ddd;
        }
        
        table th {
            background-color: #4CAF50;
            color: white;
        }
        
        table tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        
        table tr:hover {
            background-color: #ddd;
        }
        
        /* Styling for the page title */
        h3 {
            text-align: center;
            font-size: 24px;
            color: #4CAF50;
        }

        /* Footer styling */
        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 10px;
            margin-top: 30px;
        }
    </style>
</head>
<body>

<%@include file="adminnavbar.jsp" %><br/><br/>

<!-- Page title -->
<h3>View All Customers</h3>

<!-- Table displaying customer data -->
<table>
    <tr>
        <th>ID</th>
        <th>NAME</th>
        <th>GENDER</th>
        <th>DATE OF BIRTH</th>
        <th>EMAIL</th>
        <th>LOCATION</th>
        <th>CONTACT NO</th>
    </tr>
    
    <c:forEach items="${customerlist}" var="customer">
        <tr>
            <td><c:out value="${customer.id}"></c:out></td>
            <td><c:out value="${customer.name}"></c:out></td>
            <td><c:out value="${customer.gender}"></c:out></td>
            <td><c:out value="${customer.dateofbirth}"></c:out></td>
            <td><c:out value="${customer.email}"></c:out></td>
            <td><c:out value="${customer.location}"></c:out></td>
            <td><c:out value="${customer.contact}"></c:out></td>
        </tr>
    </c:forEach>
    
</table>

<%@ include file="footer.jsp" %>

</body>
</html>
