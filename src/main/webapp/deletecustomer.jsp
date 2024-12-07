<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>

<!-- CSS Styles for Table -->
<style>
    /* Table container styling */
    table {
        width: 90%;
        margin: 20px auto;
        border-collapse: collapse;
        font-family: Arial, sans-serif;
    }

    /* Table header styling */
    th {
        background-color: #4CAF50;
        color: white;
        padding: 12px;
        text-align: center;
    }

    /* Table cell styling */
    td {
        padding: 10px;
        text-align: center;
        border: 1px solid #ddd;
    }

    /* Alternate row styling */
    tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    /* Table row hover effect */
    tr:hover {
        background-color: #ddd;
    }

    /* Link styling in the Action column */
    a {
        text-decoration: none;
        color: #f44336;
        font-weight: bold;
    }

    /* Link hover effect */
    a:hover {
        color: #d32f2f;
    }
</style>

</head>
<body>

<%@ include file="adminnavbar.jsp" %><br/><br/>

<h3 align="center">Delete Customer</h3>

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
   <th>ACTION</th>
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
   
   <td>
     <a href='<c:url value="delete?id=${customer.id}"></c:url>'>Delete</a>
   </td>
 </tr>
 </c:forEach>
 
</table>

<%@ include file="footer.jsp" %>

</body>
</html>
