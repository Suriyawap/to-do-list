package servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import daoclass.Dao;
import dtoclass.userdto;

@WebServlet("/login")
public class login extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter("email");
		String password = req.getParameter("password");

		Dao dao = new Dao();

		try {
			userdto u1 = dao.findbyemail(email);
			if (u1 != null) {
				if (u1.getUserpassword().equals(password)) {
					System.out.println("success");
					HttpSession session = req.getSession();
					session.setAttribute("user", u1);
					dao.updatetaskpriority();
					req.getRequestDispatcher("homepage.jsp").forward(req, resp);
				} else {
					req.setAttribute("message", "incorrect password");
					req.getRequestDispatcher("login.jsp").forward(req, resp);
				}
			} else {
				req.setAttribute("message", "incorrect email");
				req.getRequestDispatcher("login.jsp").forward(req, resp);
			}

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
