<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Homie PG - About Us</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }
        body {
            background-color: #f4f4f4;
        }
        .navbar {
            background: #007bff;
            padding: 15px 30px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            color: white;
        }
        .navbar h1 {
            font-size: 24px;
            font-weight: bold;
        }
        .nav-links {
            list-style: none;
            display: flex;
        }
        .nav-links li {
            margin: 0 15px;
        }
        .nav-links a {
            color: white;
            text-decoration: none;
            font-size: 16px;
            transition: 0.3s;
        }
        .nav-links a:hover {
            text-decoration: underline;
        }
        .about-container {
            max-width: 900px;
            margin: 40px auto;
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        .about-container h2 {
            color: #007bff;
            margin-bottom: 15px;
        }
        .about-container p {
            color: #555;
            line-height: 1.6;
            font-size: 16px;
        }
        .about-container img {
          width: 100%;
    max-width: 600px;
    height: auto;
    display: block;
    margin: 20px auto;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
    </style>
</head>
<body>

    <nav class="navbar">
        <h1>Homie PG</h1>
        <ul class="nav-links">
            <li><a href="home.jsp">Home</a></li>
            <li><a href="#">About PG</a></li>
            <li><a href="allpgs">Rooms</a></li>
            <li><a href="contact.jsp">Contact</a></li>
        </ul>
    </nav>

    <div class="about-container">
        <h2>About Homie PG</h2>
        <p>Homie PG offers a premium living experience with fully furnished rooms, high-speed WiFi, 24/7 security, and delicious meals. Located in prime locations, our PGs provide a comfortable and affordable stay for students and working professionals.</p>
        <img src="https://media.istockphoto.com/id/1414156193/photo/modern-college-dorm-room-with-cardboard-boxes-and-luggages.jpg?s=612x612&w=0&k=20&c=utbpq_YUxMluRnVkvMDVr33XF3XOHkcBNo9H40fe3u4=" alt="PG Image">
    </div>

</body>
</html>
