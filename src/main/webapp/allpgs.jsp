<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Homie PG</title>
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
        font-size: 24px;
        font-weight: bold;
    }
    .container {
        display: flex;
        flex-direction: column;
        align-items: center;
        padding: 20px;
    }
    .pg-container {
        display: grid;
        grid-template-columns: repeat(3, 1fr);
        gap: 20px;
        max-width: 1000px;
    }
    .pg-card {
        background: white;
        padding: 15px;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        text-align: center;
        transition: transform 0.3s ease-in-out;
    }
    .pg-card:hover {
        transform: scale(1.05);
    }
    .pg-card img {
        width: 100%;
        height: 200px;
        border-radius: 10px;
        object-fit: cover;
    }
    .pg-card h3 {
        margin: 10px 0;
        color: #007bff;
        font-size: 20px;
    }
    .pg-card p {
        color: #555;
        font-size: 14px;
        margin: 5px 0;
    }
    .pg-card .price {
        font-size: 18px;
        font-weight: bold;
        color: #28a745;
    }
</style>
</head>
<body>
    <div class="navbar">Homie PG</div>
    <div class="container">
        <div class="pg-container">
            <c:forEach var="p" items="${pg}">
                <div class="pg-card">
                    <img src="${p.getImageUrl()}" alt="PG Image">
                    <h3>${p.getName()}</h3>
                    <p><strong>Location:</strong> ${p.getLocation()}</p>
                    <p class="price">${p.getPrice()}</p>
                    <p>${p.getDescription()}</p>
                </div>
            </c:forEach>
        </div>
    </div>
</body>
</html>
