<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <title>Success</title>
</head>
<style>
    body {
        background: linear-gradient(135deg, #a1c4fd, #c2e9fb);
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        color: #fff;
    }
    .success-container {
        background-color: rgba(255, 255, 255, 0.95);
        padding: 40px;
        border-radius: 15px;
        box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
        text-align: center;
        color: #333;
        width: 400px;
    }
    .success-container h2 {
        font-size: 28px;
        color: #4caf50;
        margin-bottom: 20px;
    }
    .success-container p {
        font-size: 18px;
        margin-bottom: 30px;
    }
    .btn-home {
        text-decoration: none;
        background-color: #4caf50;
        color: white;
        padding: 10px 25px;
        border-radius: 25px;
        transition: background-color 0.3s ease;
        font-size: 16px;
    }
    .btn-home:hover {
        background-color: #45a049;
    }
</style>
<body>
<div class="success-container">
    <h2>✅ Success!</h2>
    <p>Your details have been saved successfully.</p>
    <a href="index.jsp" class="btn-home">Go Back to Home</a>
</div>
</body>
</html>