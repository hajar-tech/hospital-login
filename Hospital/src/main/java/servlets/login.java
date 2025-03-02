package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.LoginDao;
import moduls.User;

/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve login details
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        System.out.println("Email: " + email);
        System.out.println("Password: " + password); 

        // Authenticate the user using LoginDao
        User user = LoginDao.authenticate(email, password);

        if (user != null) {
        	System.out.println("User authenticated: " + user.getFullName() + ", Role: " + user.getRole());
            // Create a new session or retrieve an existing one
            HttpSession session = request.getSession(true); // true ensures session is created if it doesn't exist
            session.setAttribute("idUser", user.getIdUser());
            session.setAttribute("fullName", user.getFullName());
            session.setAttribute("role", user.getRole());
            session.setMaxInactiveInterval(30 * 60); // Set session timeout to 30 minutes

            System.out.println("Session created with ID: " + session.getId());
            System.out.println("User logged in: " + user.getFullName());
            System.out.println("Role: " + user.getRole());

            // Redirect to the appropriate dashboard based on role
            if ("PATIENT".equalsIgnoreCase(user.getRole())) {
            	System.out.println(user.getRole());
            	System.out.println("Redirection vers : patientDashboard.jsp");
                response.sendRedirect("patientDashboard.jsp");
            } else if ("DOCTOR".equalsIgnoreCase(user.getRole())) {
            	System.out.println("Redirection vers : doctorDashboard.jsp");
                response.sendRedirect("doctorDashboard.jsp");
            } else {
                // Redirect to a default page or an error page if the role is unexpected
                response.sendRedirect("errorPage.jsp");
            }

        } else {
        	System.out.println("Authentication failed: User not found");
            // Authentication failed, redirect back to login page with error message
            response.sendRedirect("login.jsp?error=1"); // You could also provide a detailed error message here
        }
    }
}
