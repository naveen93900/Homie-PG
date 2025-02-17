<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Homie PG - Contact Us</title>
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
        .contact-container {
            max-width: 800px;
            margin: 40px auto;
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        .contact-container h2 {
            color: #007bff;
            margin-bottom: 15px;
        }
        .contact-container p {
            color: #555;
            font-size: 16px;
            line-height: 1.6;
        }
        .contact-container .contact-details {
            margin-top: 20px;
            text-align: left;
        }
        .contact-container .contact-details p {
            margin: 10px 0;
            font-size: 18px;
        }
        .contact-container .contact-details span {
            font-weight: bold;
            color: #333;
        }
        .contact-form {
            margin-top: 20px;
            text-align: left;
        }
        .contact-form input,
        .contact-form textarea {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .contact-form button {
            background: #007bff;
            color: white;
            border: none;
            padding: 10px 15px;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
            transition: 0.3s;
        }
        .contact-form button:hover {
            background: #0056b3;
        }
    </style>
</head>
<body>

    <nav class="navbar">
        <h1>Homie PG</h1>
        <ul class="nav-links">
            <li><a href="home.jsp">Home</a></li>
            <li><a href="about.jsp">About PG</a></li>
            <li><a href="allpgs">Rooms</a></li>
            <li><a href="#">Contact</a></li>
        </ul>
    </nav>

    <div class="contact-container">
        <h2>Contact Us</h2>
        <p>For any inquiries, feel free to contact us. Our team is here to help you find the perfect stay!</p>

        <div class="contact-details">
            <p><span>📍 Address:</span> 123, Homie PG, Bangalore, India</p>
            <p><span>📞 Phone:</span> +91 98765 43210</p>
            <p><span>✉ Email:</span> contact@homiepg.com</p>
        </div>

        <div class="contact-form">
            <h3>Send a Message</h3>
            <form>
                <input type="text" placeholder="Your Name" required>
                <input type="email" placeholder="Your Email" required>
                <textarea placeholder="Your Message" rows="4" required></textarea>
                <button type="submit">Send Message</button>
            </form>
        </div>
    </div>

</body>
</html>
