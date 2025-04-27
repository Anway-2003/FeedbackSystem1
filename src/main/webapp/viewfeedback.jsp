<%@ page import="java.util.*, model.Feedback" %>
<%
    ArrayList<Feedback> feedbackList = (ArrayList<Feedback>) request.getAttribute("feedbackList");
%>
<!DOCTYPE html>
<html>
<head>
    <title>View Feedback</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f8ff;
            margin: 0;
            padding: 30px;
        }

        h2 {
            text-align: center;
            color: #333;
        }

        .table-container {
            width: 80%;
            margin: auto;
            background: #fff;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #0077cc;
            color: white;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        .no-data {
            text-align: center;
            padding: 20px;
            color: #999;
        }

        .button-container {
            text-align: center;
            margin-top: 30px;
        }

        .btn {
            background-color: #0077cc;
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            margin: 10px 15px;
            border-radius: 5px;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }

        .btn:hover {
            background-color: #005fa3;
        }
    </style>
</head>
<body>
    <h2>User Feedback</h2>
    <div class="table-container">
        <%
            if (feedbackList != null && !feedbackList.isEmpty()) {
            	

        %>
        <table>
            <tr>
                <th>ID</th>
                <th>Username</th>
                <th>Subject</th>
                <th>Message</th>
            </tr>
            <%
                for (Feedback fb : feedbackList) {
            %>
            <tr>
                <td><%= fb.getId() %></td>
                <td><%= fb.getUsername() %></td>
                <td><%= fb.getSubject() %></td>
                <td><%= fb.getMessage() %></td>
            </tr>
            <%
                }
            %>
        </table>
        <%
            } else {
        %>
        <div class="no-data">No feedback to display.</div>
        <%
            }
        %>
    </div>

    <div class="button-container">
        <a href="LogoutServlet" class="btn">Logout</a>
        
    </div>
</body>
</html>