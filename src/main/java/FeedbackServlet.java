import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/FeedbackServlet")
public class FeedbackServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String subject = request.getParameter("subject");
        String message = request.getParameter("message");

        HttpSession session = request.getSession(false); // Don't create a new session
        Integer userId = (session != null) ? (Integer) session.getAttribute("userid") : null;

        if (userId == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/feedback_system", "root", "Anway@2003");

            PreparedStatement ps = con.prepareStatement("INSERT INTO feedback (user_id, subject, message) VALUES (?, ?, ?)");
            ps.setInt(1, userId);
            ps.setString(2, subject);
            ps.setString(3, message);

            int result = ps.executeUpdate();

            if (result > 0) {
                System.out.println("Feedback inserted successfully for userId: " + userId);
                response.sendRedirect("feedback.jsp");
            } else {
                System.out.println("Feedback insert failed.");
                response.getWriter().println("<h3>Feedback could not be saved.</h3>");
            }

            con.close();
        } catch (Exception e) {
            e.printStackTrace();
            response.setContentType("text/html");
            response.getWriter().println("<h3>Exception: " + e.getMessage() + "</h3>");
        }
    }
}
