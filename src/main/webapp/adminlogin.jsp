<!DOCTYPE html>
<html>
<head>
    <title>Admin Login - Feedback System</title>
    <style>
        body {
            background: linear-gradient(to right, #83a4d4, #b6fbff);
            font-family: 'Segoe UI', sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .admin-login-box {
            background-color: #fff;
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
            width: 400px;
            text-align: center;
        }

        .admin-login-box h2 {
            margin-bottom: 25px;
            color: #333;
        }

        .admin-login-box input[type="text"],
        .admin-login-box input[type="password"] {
            width: 90%;
            padding: 12px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 10px;
            font-size: 15px;
        }

        .admin-login-box input[type="submit"] {
            width: 100%;
            padding: 12px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 25px;
            font-size: 16px;
            margin-top: 15px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .admin-login-box input[type="submit"]:hover {
            background-color: #0056b3;
        }

        .admin-login-box a {
            display: block;
            margin-top: 15px;
            color: #007bff;
            text-decoration: none;
        }

        .admin-login-box a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="admin-login-box">
        <h2>Admin Login</h2>
        <form action="AdminLoginServlet" method="post">
            <input type="text" name="username" placeholder="Admin Username" required>
            <input type="password" name="password" placeholder="Password" required>
            <input type="submit" value="Login">
        </form>
       
        <a href="index.jsp">Back to Home</a>
    </div>
</body>
</html>