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
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f8f9fa;
        }
        .admin-login {
            width: 300px;
            padding: 20px;
            background: white;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        .admin-login input {
            width: 90%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .admin-login button {
            width: 100%;
            padding: 10px;
            background: #007bff;
            border: none;
            color: white;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
        }
        .admin-login button:hover {
            background: #0056b3;
        }
        h3{
        color:red;
        }
    </style>
</head>
<body>
    <div class="admin-login">
    <h3>${msg }</h3>
        <h2>Admin Login</h2>
        <form action="admin">
            <input type="email" placeholder="email" name="email" required>
            <input type="password" placeholder="Password"  name="password" required>
            <button type="submit">Login</button>
        </form>
    </div>
</body>
</html>