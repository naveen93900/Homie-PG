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
        .pg-form {
            width: 400px;
            padding: 20px;
            background: white;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        .pg-form input, .pg-form textarea {
            width: 90%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .pg-form button {
            width: 100%;
            padding: 10px;
            background: #007bff;
            border: none;
            color: white;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
        }
        .pg-form button:hover {
            background: #0056b3;
        }
    </style>
</head>
<body>
    <div class="pg-form">
        <h2>Add PG Details</h2>
        <form action="addPg">
            <input type="text" placeholder="PG Name" name="name" required>
            <input type="text" placeholder="Location" name="location"required>
            <input type="number" placeholder="Price per Month" name="price" required>
            <textarea placeholder="Description" rows="4" name="description" required></textarea>
            <input type="text" placeholder="Image" name="imageUrl" required>
            <button type="submit">Add PG</button>
        </form>
    </div>
</body>
</html>