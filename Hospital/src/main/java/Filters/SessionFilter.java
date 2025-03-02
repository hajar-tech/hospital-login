package Filters;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebFilter({ "/doctorDashboard.jsp" ,"/patientDashboard.jsp"})
public class SessionFilter implements Filter {
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;
        HttpSession session = req.getSession(false); // Ne crée pas une nouvelle session
        
        System.out.println("🔍 SessionFilter appliqué à : " + req.getRequestURI());
        
        if (session == null) {
            System.out.println("🚨 Aucune session trouvée !");
            res.sendRedirect("login.jsp?error=session");
            return;
        }

        Object userId = session.getAttribute("idUser");
        Object role = session.getAttribute("role");

        System.out.println("✅ Session trouvée : " + session.getId());
        System.out.println("ℹ️ idUser dans session : " + userId);
        System.out.println("ℹ️ Role dans session : " + role);

        // Vérification que l'utilisateur est bien authentifié
        if (userId == null) {
            System.out.println("🚨 idUser est NULL, redirection vers login.jsp");
            res.sendRedirect("login.jsp?error=session");
            return;
        }

        chain.doFilter(request, response);
    }

    public void init(FilterConfig filterConfig) throws ServletException {}
    public void destroy() {}
}

