import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import model.Feedback;

@WebServlet("/ViewFeedbackServlet")
public class ViewFeedbackServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        ArrayList<Feedback> feedbackList = new ArrayList<>();

        try {
            // Load the JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Connect to database
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/feedback_system", "root", "Anway@2003");

            // SQL query to fetch feedbacks joined with user info
            String sql = "SELECT f.id, u.username, f.subject, f.message " +
                         "FROM feedback f JOIN users1 u ON f.user_id = u.id";

            PreparedStatement pst = con.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();

            // Debug log: fetching feedback
            System.out.println("Fetching feedbacks...");

            while (rs.next()) {
                Feedback fb = new Feedback(
                    rs.getInt("id"),
                    rs.getString("username"),
                    rs.getString("subject"),
                    rs.getString("message")
                );
                feedbackList.add(fb);

                // Print each feedback to console
                System.out.println("ID: " + fb.getId() +
                                   ", Username: " + fb.getUsername() +
                                   ", Subject: " + fb.getSubject() +
                                   ", Message: " + fb.getMessage());
            }

            // Close resources
            rs.close();
            pst.close();
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        // Store feedback list in request scope
        request.setAttribute("feedbackList", feedbackList);

        // Forward to JSP page
        RequestDispatcher rd = request.getRequestDispatcher("viewfeedback.jsp");
        rd.forward(request, response);
    }
}
