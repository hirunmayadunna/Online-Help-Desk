<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <table>
        <tr>
            <th>Ticket ID</th>
            <th>Name</th>
            <th>Topic</th>
            <th>Subject</th>
            <th>Description</th>
            <th>Status</th>
        </tr>
        <c:forEach var="ticket" items="${userTickets}">
            <tr>
                <td>${ticket.tid}</td>
                <td>${ticket.name}</td>
                <td>${ticket.topic}</td>
                <td>${ticket.subject}</td>
                <td>${ticket.description}</td>
                <td>${ticket.status}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>