

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/AdminLoginServlet")
public class AdminLoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/feedback_system", "root", "Anway@2003");

            PreparedStatement pst = con.prepareStatement(
                    "SELECT * FROM admin WHERE username = ? AND password = ?");
            pst.setString(1, username);
            pst.setString(2, password);

            ResultSet rs = pst.executeQuery();

            if (rs.next()) {
                // Login successful
                HttpSession session = request.getSession();
                session.setAttribute("adminUsername", username);

                // Redirect to ViewFeedbackServlet
                response.sendRedirect("ViewFeedbackServlet");
            } else {
                // Login failed
                out.println("<script>alert('Invalid admin credentials!'); location='adminlogin.jsp';</script>");
            }

            con.close();

        } catch (Exception e) {
            e.printStackTrace();
            out.println("<script>alert('An error occurred!'); location='adminlogin.jsp';</script>");
}
}
}