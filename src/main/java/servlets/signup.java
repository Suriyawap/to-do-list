package servlets;

import java.io.IOException;

import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import daoclass.Dao;
import dtoclass.userdto;

@WebServlet("/signup")
@MultipartConfig(maxFileSize = 10*1024*1024)
public class signup extends HttpServlet{
   @Override
   
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	int id=Integer.parseInt(req.getParameter("userid"));
	String name=req.getParameter("username");
	String email =req.getParameter("useremail");
	long contact=Long.parseLong(req.getParameter("usercontact"));
	String password=req.getParameter("userpassword");
	
	Part img=req.getPart("uimage");
	byte[] imagebytes=img.getInputStream().readAllBytes();
	
	userdto u1=new userdto(id,name,email,contact,password,imagebytes);
	
	Dao dao=new Dao();
	
	try {
		dao.saveuser(u1);
		System.out.println("done");
		resp.sendRedirect("login.jsp");
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
}
}
