<%@ page session="true" %>
<%
    String user = (String) session.getAttribute("username");
    if (user == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>Submit Feedback - Feedback System</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        body {
            background: linear-gradient(to right, #fdfbfb, #ebedee);
            font-family: 'Segoe UI', sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .feedback-box {
            background-color: white;
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
            width: 500px;
            text-align: center;
        }

        .feedback-box h2 {
            margin-bottom: 25px;
            color: #333;
        }

        .feedback-box input[type="text"],
        .feedback-box textarea {
            width: 90%;
            padding: 12px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 10px;
        }

        .feedback-box textarea {
            height: 120px;
            resize: none;
        }

        .feedback-box input[type="submit"] {
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

        .feedback-box input[type="submit"]:hover {
            background-color: #388e3c;
        }

        .feedback-box a {
            display: block;
            margin-top: 15px;
            color: #2196F3;
            text-decoration: none;
        }

        .feedback-box a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="feedback-box">
        <h2>Submit Feedback</h2>
        <form action="FeedbackServlet" method="post">
            <input type="text" name="subject" placeholder="Subject" required>
            <textarea name="message" placeholder="Your feedback..." required></textarea>
            <input type="submit" value="Submit Feedback">
        </form>
        <a href="LogoutServlet">Logout</a>
       
    </div>
</body>
</html>