<!DOCTYPE html>
<html>
<head>
    <title>Welcome - Feedback System</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        body {
            background: linear-gradient(to right, #a8edea, #fed6e3);
            font-family: 'Segoe UI', sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background-color: white;
            padding: 40px 50px;
            border-radius: 20px;
            text-align: center;
            box-shadow: 0 8px 20px rgba(0,0,0,0.15);
        }

        .container h1 {
            margin-bottom: 25px;
            font-size: 32px;
            color: #333;
        }

        .btn {
            display: block;
            width: 200px;
            padding: 12px;
            margin: 15px auto;
            font-size: 16px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 25px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            text-decoration: none;
        }

        .btn:hover {
            background-color: #388e3c;
        }

        .admin-btn {
            background-color: #2196F3;
        }

        .admin-btn:hover {
            background-color: #1976D2;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Welcome to the Online Feedback System</h1>
        <a href="login.jsp" class="btn">User Login</a>
        <a href="adminlogin.jsp" class="btn admin-btn">Admin Login</a>
    </div>
</body>
</html>