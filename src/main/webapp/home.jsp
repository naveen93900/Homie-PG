<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

  <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f8f9fa;
        }
        .navbar {
            background: #007bff;
            padding: 15px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .navbar a {
            color: white;
            text-decoration: none;
            padding: 10px 20px;
            font-size: 18px;
        }
        .navbar a:hover {
            background: #0056b3;
            border-radius: 5px;
        }
        .container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            padding: 20px;
        }
        .card {
            background: white;
            margin: 15px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            width: 300px;
            text-align: center;
        }
        .card img {
            width: 100%;
            height: 200px;
            object-fit: cover;
        }
        .card h3 {
            padding: 10px;
            font-size: 18px;
        }
        .card p {
            padding: 0 10px 10px;
            color: #666;
        }
        .footer {
            text-align: center;
            padding: 20px;
            background: #007bff;
            color: white;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <a href="#">Home</a>
        <a href="about.jsp">About</a>
        <a href="allpgs">PGs</a>
        <a href="admin.jsp">Admin</a>
        <a href="contact.jsp">Contact</a>
    </div>
    <div class="container">
        <div class="card">
            <img src="https://cdn.pixabay.com/photo/2013/06/30/19/07/bed-142516_1280.jpg" alt="PG Room">
            <h3>Cozy PG Room</h3>
            <p>Experience comfort and affordability with our cozy PG stays.</p>
        </div>
        <div class="card">
            <img src="https://cdn.pixabay.com/photo/2014/08/08/21/03/bedroom-413706_1280.jpg" alt="PG Exterior">
            <h3>Modern Living</h3>
            <p>Our PGs offer modern amenities for a perfect living experience.</p>
        </div>
        <div class="card">
            <img src="https://cdn.pixabay.com/photo/2014/08/08/21/05/bar-413709_1280.jpg" alt="Spacious Room">
            <h3>Spacious & Well-Furnished</h3>
            <p>Enjoy spacious rooms with premium furnishings and utilities.</p>
        </div>
    </div>
    <div class="footer">&copy; 2025 PG Stay. All rights reserved.</div>
</body>
</html>