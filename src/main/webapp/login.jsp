<!DOCTYPE html>
<html>
<head>
    <title>User Login - Feedback System</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        body {
            background: linear-gradient(to right, #c2e9fb, #a1c4fd);
            font-family: 'Segoe UI', sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .login-box {
            background-color: white;
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
            width: 350px;
            text-align: center;
        }

        .login-box h2 {
            margin-bottom: 25px;
            color: #333;
        }

        .login-box input[type="text"],
        .login-box input[type="password"] {
            width: 90%;
            padding: 12px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 10px;
        }

        .login-box input[type="checkbox"] {
            margin-right: 5px;
        }

        .login-box input[type="submit"] {
            width: 100%;
            padding: 12px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 25px;
            font-size: 16px;
            margin-top: 15px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .login-box input[type="submit"]:hover {
            background-color: #388e3c;
        }

        .login-box a {
            display: block;
            margin-top: 15px;
            color: #2196F3;
            text-decoration: none;
        }

        .login-box a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="login-box">
        <h2>User Login</h2>
        <form action="LoginServlet" method="post">
            <input type="text" name="username" placeholder="Enter Username" required>
            <input type="password" name="password" placeholder="Enter Password" required>
            <div style="text-align: left; margin-left: 20px;">
                <input type="checkbox" name="remember"> Remember Me
            </div>
            <input type="submit" value="Login">
        </form>
        <a href="register.jsp">New user? Register here</a>
        <a href="index.jsp">Back to Home</a>
    </div>
</body>
</html>