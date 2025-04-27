

import java.io.IOException;
import java.sql.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String uname = request.getParameter("username");
        String pass = request.getParameter("password");
        String remember = request.getParameter("remember");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/feedback_system", "root", "Anway@2003"); // update password

            PreparedStatement ps = con.prepareStatement("SELECT * FROM users1 WHERE username=? AND password=?");
            ps.setString(1, uname);
            ps.setString(2, pass);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                HttpSession session = request.getSession();
                session.setAttribute("username", uname);
                session.setAttribute("userid", rs.getInt("id")); // used later in feedback

                if ("on".equals(remember)) {
                    Cookie ck = new Cookie("username", uname);
                    ck.setMaxAge(60 * 60 * 24 * 7); // 7 days
                    response.addCookie(ck);
                }

                response.sendRedirect("feedback.jsp");
            } else {
                response.sendRedirect("error.jsp");
            }

            rs.close();
            ps.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
}
}
}