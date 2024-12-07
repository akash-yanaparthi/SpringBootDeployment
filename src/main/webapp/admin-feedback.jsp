<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin - View Feedback</title>
</head>
<body>
    <h1>Feedback Submissions</h1>
    <table border="1">
        <thead>
            <tr>
                <th>Name</th>
                <th>Email</th>
                <th>Message</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="feedback" items="${feedbacks}">
                <tr>
                    <td>${feedback.customerName}</td>
                    <td>${feedback.email}</td>
                    <td>${feedback.message}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
    