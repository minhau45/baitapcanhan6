package murach.email;

import java.io.*;
import java.time.Year;
import java.util.ArrayList;
import jakarta.servlet.*;
import jakarta.servlet.http.*;

import murach.business.User;
import murach.database.UserDB;

public class EmailListServlet extends HttpServlet  {

    @Override
    protected void doPost(HttpServletRequest request, 
                          HttpServletResponse response) 
                          throws ServletException, IOException {

        // Current year
        int currentYear = Year.now().getValue();
        request.setAttribute("currentYear", currentYear);

        String url = "/index.jsp";

        String action = request.getParameter("action");
        if (action == null) {
            action = "join"; 
        }

        if (action.equals("join")) {
            url = "/index.jsp"; 
        }
        else if (action.equals("add")) {                
            // Form data
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String email = request.getParameter("email");
            String dob = request.getParameter("dob");
            String hear = request.getParameter("hear");
            String news = request.getParameter("news");
            String emailNews = request.getParameter("emailNews");
            String contact = request.getParameter("contact");

            // User object
            User user = new User(firstName, lastName, email, dob, hear, news, emailNews, contact);

            // Save to DB
            UserDB.insert(user);

            // Save user to request
            request.setAttribute("user", user);

            // Add user to session list
            HttpSession session = request.getSession();
            ArrayList<User> users = (ArrayList<User>) session.getAttribute("users");
            if (users == null) {
                users = new ArrayList<>();
            }
            users.add(user);
            session.setAttribute("users", users);

            url = "/thanks.jsp";   
        }
        
        getServletContext()
            .getRequestDispatcher(url)
            .forward(request, response);
    }    

    @Override
    protected void doGet(HttpServletRequest request, 
                         HttpServletResponse response) 
                         throws ServletException, IOException {
        doPost(request, response);
    }    
}
