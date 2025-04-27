<!DOCTYPE html>
<html>
<head>
    <title>User Registration - Feedback System</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        body {
            background: linear-gradient(to right, #ffecd2, #fcb69f);
            font-family: 'Segoe UI', sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .register-box {
            background-color: white;
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
            width: 400px;
            text-align: center;
        }

        .register-box h2 {
            margin-bottom: 25px;
            color: #333;
        }

        .register-box input[type="text"],
        .register-box input[type="password"],
        .register-box input[type="email"] {
            width: 90%;
            padding: 12px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 10px;
        }

        .register-box input[type="submit"] {
            width: 100%;
            padding: 12px;
            background-color: #2196F3;
            color: white;
            border: none;
            border-radius: 25px;
            font-size: 16px;
            margin-top: 15px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .register-box input[type="submit"]:hover {
            background-color: #1976D2;
        }

        .register-box a {
            display: block;
            margin-top: 15px;
            color: #4CAF50;
            text-decoration: none;
        }

        .register-box a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="register-box">
        <h2>Create an Account</h2>
        <form action="RegisterServlet" method="post">
            <input type="text" name="username" placeholder="Choose Username" required>
            <input type="password" name="password" placeholder="Create Password" required>
            <input type="email" name="email" placeholder="Enter Email" required>
            <input type="submit" value="Register">
        </form>
        <a href="login.jsp">Already have an account? Login here</a>
        <a href="index.jsp">Back to Home</a>
    </div>
</body>
</html>