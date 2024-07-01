package servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import daoclass.Dao;
import dtoclass.userdto;

@WebServlet("/uprofile")
public class updateprofile extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("uid"));
		String upwd = req.getParameter("upwd");
		String uname = req.getParameter("uname");
		String uemail = req.getParameter("uemail");
		long ucontact = Long.parseLong(req.getParameter("ucontact"));
		userdto u = (userdto) req.getSession().getAttribute("user");
		userdto u1 = new userdto(id, uname, uemail, ucontact, upwd, u.getUserImage());

		Dao dao = new Dao();
		try {
			dao.updateprofile(u1);
			resp.sendRedirect("profile.jsp");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
