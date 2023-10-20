package questions;

import serverSettings.PlayerStats;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;


@WebServlet("/quest-1")
public class MainPage extends HttpServlet {//main page redirect on the first question
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/questOne.jsp").forward(req, resp);
       // getServletContext().getRequestDispatcher("/quest-2").forward(req,resp);
//        System.out.println("xfhdfh");
    }

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            HttpSession session = req.getSession();

            PlayerStats playerStats = (PlayerStats) session.getAttribute("playerStats");
            if (playerStats == null) {
                String loginName = req.getParameter("username");
                String idAddress = req.getRemoteAddr();
                playerStats = new PlayerStats(loginName, idAddress, 0);
                session.setAttribute("playerStats", playerStats);
            } else {
                playerStats.setNumAttempts(playerStats.getNumAttempts() + 1);
            }

            session.setAttribute("playerStats", playerStats);

            req.getRequestDispatcher("/questOne.jsp").forward(req, resp);
    }
}
