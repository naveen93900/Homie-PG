<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Users</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f8f9fa;
        margin: 0;
        padding: 0;
    }
    .navbar {
        background-color: #007bff;
        padding: 15px;
        text-align: center;
        color: white;
        font-size: 18px;
    }
    .navbar a {
        color: white;
        text-decoration: none;
        padding: 10px 20px;
        margin: 0 10px;
    }
    .navbar a:hover {
        background-color: #0056b3;
        border-radius: 5px;
    }
    h1 {
        text-align: center;
        font-size: 24px;
        color: #333;
        margin-top: 20px;
    }
    table {
        width: 80%;
        border-collapse: collapse;
        margin: 20px auto;
        font-family: Arial, sans-serif;
        font-size: 16px;
        text-align: left;
    }
    th, td {
        border: 1px solid #ddd;
        padding: 10px;
        text-align: center;
    }
    th {
        background-color: #f4f4f4;
        color: #333;
    }
    tr:nth-child(even) {
        background-color: #f9f9f9;
    }
    tr:hover {
        background-color: #f1f1f1;
    }
    a {
        text-decoration: none;
        color: red;
        font-weight: bold;
    }
    button {
        background-color: #4CAF50;
        color: white;
        border: none;
        padding: 5px 10px;
        cursor: pointer;
        font-size: 14px;
    }
    button:hover {
        background-color: #45a049;
    }
    h2 {
        color: green;
        text-align: center;
    }
</style>
</head>
<body>
    <div class="navbar">
        <a href="home.jsp">Home</a>
        <a href="addPg.jsp">Add PG</a>
    </div>
    <h1>All Users</h1>
    <h2>${msg}</h2>
    <table>
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Email</th>
            <th>Password</th>
            <th>Contact</th>
            <th>Location</th>
            <th colspan="2">Action</th>
        </tr>
        <c:forEach var="u" items="${users}">
            <tr>
                <td>${u.getId()}</td>
                <td>${u.getName()}</td>
                <td>${u.getEmail()}</td>
                <td>${u.getPassword()}</td>
                <td>${u.getNumber()}</td>
                <td>${u.getLocation()}</td>
                <td><a href="delete?id=${u.getId()}">Delete</a></td>
                <td><a href="update?id=${u.getId()}"><button>Update</button></a></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>