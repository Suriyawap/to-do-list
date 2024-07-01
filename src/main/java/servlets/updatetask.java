package servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import daoclass.Dao;
import dtoclass.taskdto;
import dtoclass.userdto;

@WebServlet("/update")
public class updatetask extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("taskid"));
		String tasktitle = req.getParameter("tasktitle");
		String taskdesc = req.getParameter("taskdescription");
		String priority = req.getParameter("taskpriority");
		String date = req.getParameter("taskduedate");
		userdto u = (userdto) req.getSession().getAttribute("user");

		taskdto t = new taskdto(id, taskdesc, priority, date, u.getUserId(), tasktitle);
		Dao dao = new Dao();
		try {
			dao.updatetask(t);
			resp.sendRedirect("homepage.jsp");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
