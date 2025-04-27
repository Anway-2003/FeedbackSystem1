This project is a simple Online Feedback System built using JSP, Servlets, JDBC, and MySQL.
It allows users to register, login, and submit feedback, and allows admins to view all feedbacks submitted by users.

✨ Features
User Registration: New users can register with username, email, and password.

User Login: Registered users can securely login to the system.

Submit Feedback: Logged-in users can submit feedback (subject + message).

Admin Login: Admins can login separately to manage feedback.

View Feedback: Admins can view all feedback submitted by users in a nice table format.

Logout: Logout functionality for both users and admins.

Session Management: Secure session tracking for users and admins.

Clean UI: Simple and user-friendly web interface with CSS styling.

🛠 Technologies Used
Frontend: HTML5, CSS3, JSP

Backend: Java Servlets

Database: MySQL

Server: Apache Tomcat

Tools: Eclipse IDE

📂 Project Structure
bash
Copy
Edit
/OnlineFeedbackSystem
│
├── src/
│   ├── model/
│   │   └── Feedback.java       # Feedback model class
│   ├── ViewFeedbackServlet.java # Servlet to fetch and show feedback
│   └── (Other servlets - LoginServlet, RegisterServlet, etc.)
│
├── WebContent/
│   ├── viewfeedback.jsp         # JSP page to display feedback
│   ├── login.jsp                # User login page
│   ├── register.jsp             # User registration page
│   ├── adminlogin.jsp           # Admin login page
│   └── index.jsp                # Home page
│
├── database/
│   └── feedback_system.sql      # Database schema and sample data (optional)
│
└── README.md
📊 Database Structure
Database Name: feedback_system

Tables:
users1

id (INT, Primary Key, Auto Increment)

username (VARCHAR)

email (VARCHAR)

password (VARCHAR)

feedback

id (INT, Primary Key, Auto Increment)

user_id (INT, Foreign Key references users1(id))

subject (VARCHAR)

message (TEXT)

🚀 How to Run
Clone or download this repository.

Create a MySQL database named feedback_system.

Create users1 and feedback tables (SQL scripts provided).

Update your database username and password in the Servlets (ViewFeedbackServlet, etc.).

Deploy the project on Apache Tomcat Server using Eclipse IDE.

Open your browser and navigate to:

arduino
Copy
Edit
http://localhost:8080/YourProjectName/
Register a user, submit feedback, and view it as Admin!

🧡 Special Thanks
Thanks to Java, JSP/Servlets, and MySQL communities for excellent documentation and tutorials that helped in building this project.

