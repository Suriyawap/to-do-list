package daoclass;

import java.sql.Blob;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;
import java.util.List;

import javax.sql.rowset.serial.SerialBlob;

import dtoclass.taskdto;
import dtoclass.userdto;

public class Dao {

	public Connection getconnection() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		return DriverManager.getConnection("jdbc:mysql://localhost:3306/office", "root", "root");
	}

	public int saveuser(userdto u) throws SQLException, ClassNotFoundException {
		Connection con = getconnection();
		PreparedStatement pst = con.prepareStatement("insert into usertodolist values(?,?,?,?,?,?)");
		pst.setInt(1, u.getUserId());
		pst.setString(2, u.getUsername());
		pst.setString(3, u.getUserEmail());
		pst.setLong(4, u.getUserContact());
		pst.setString(5, u.getUserpassword());
		Blob b = new SerialBlob(u.getUserImage());
		pst.setBlob(6, b);
		return pst.executeUpdate();
	}

	public userdto findbyemail(String email) throws SQLException, ClassNotFoundException {
		Connection con = getconnection();
		PreparedStatement pst = con.prepareStatement("select * from usertodolist where useremail=?");
		pst.setString(1, email);
		ResultSet rs = pst.executeQuery();
		if (rs.next()) {

			Blob b = rs.getBlob(6);
			byte[] img = b.getBytes(1, (int) b.length());
			userdto u = new userdto(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getLong(4), rs.getString(5),
					img);
			return u;
		}
		return null;
	}

	public int savetask(taskdto t) throws SQLException, ClassNotFoundException {
		Connection con = getconnection();
		PreparedStatement pst = con.prepareStatement("insert into tasktodolist values(?,?,?,?,?,?)");
		pst.setInt(1, t.getTaskId());
		pst.setString(2, t.getTaskDescription());
		pst.setString(3, t.getTaskPriority());
		Date taskdate = Date.valueOf(t.getTaskDueDate());
		pst.setDate(4, taskdate);
		pst.setInt(5, t.getUserId());
		pst.setString(6, t.getTasktitle());
		return pst.executeUpdate();

	}

	public int updatetask(taskdto t) throws ClassNotFoundException, SQLException {
		Connection con = getconnection();
		PreparedStatement pst = con.prepareStatement(
				"update tasktodolist set tasktitle=?,taskdescription=?,taskpriority=?,taskduedate=? where taskid=?");
		pst.setString(1, t.getTasktitle());
		pst.setString(2, t.getTaskDescription());
		pst.setString(3, t.getTaskPriority());
		java.sql.Date taskdate = java.sql.Date.valueOf(t.getTaskDueDate());
		pst.setDate(4, taskdate);
		pst.setInt(5, t.getTaskId());
		return pst.executeUpdate();

	}

	public List<taskdto> findallbyuserid(int userid) throws ClassNotFoundException, SQLException {
		Connection con = getconnection();
		PreparedStatement pst = con.prepareStatement("select * from tasktodolist where userid=?");
		pst.setInt(1, userid);
		List<taskdto> l1 = new ArrayList<taskdto>();
		ResultSet rs = pst.executeQuery();

		while (rs.next()) {
			taskdto t = new taskdto(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5),
					rs.getString(6));
			l1.add(t);
		}
		return l1;
	}

	public int deletetaskbyid(int id) throws ClassNotFoundException, SQLException {
		Connection con = getconnection();
		PreparedStatement pst = con.prepareStatement("delete from tasktodolist where taskid=?");
		pst.setInt(1, id);
		return pst.executeUpdate();
	}

	public taskdto findbyid(int id) throws ClassNotFoundException, SQLException {
		Connection con = getconnection();
		PreparedStatement pst = con.prepareStatement("select * from tasktodolist where taskid=?");
		pst.setInt(1, id);
		ResultSet rs = pst.executeQuery();
		taskdto task = new taskdto();
		if (rs.next()) {
			task = new taskdto(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5),
					rs.getString(6));

		}
		return task;

	}

	public int updateprofile(userdto u) throws ClassNotFoundException, SQLException {
		Connection con = getconnection();
		PreparedStatement pst = con.prepareStatement(
				"update usertodolist set username=?,useremail=?,usercontact=?,userpasword=? where userid=?");
		pst.setString(1, u.getUsername());
		pst.setString(2, u.getUserEmail());
		pst.setLong(3, u.getUserContact());
		pst.setString(4, u.getUserpassword());
		pst.setInt(5, u.getUserId());
		return pst.executeUpdate();

	}

	public void updatetaskpriority() throws ClassNotFoundException, SQLException {
		Connection con = getconnection();
		PreparedStatement pst = con.prepareStatement("select taskid,taskduedate from tasktodolist");
		ResultSet rs = pst.executeQuery();
		while (rs.next()) {
			int taskid = rs.getInt(1);
			LocalDate duedate = rs.getDate(2).toLocalDate();
			LocalDate now = LocalDate.now();
			long daysuntilnow = Math.abs(ChronoUnit.DAYS.between(duedate, now));
			System.out.println(daysuntilnow);
			String newpriority = "";
			if (daysuntilnow <= 1) {
				newpriority = "high";
			} else {
				newpriority = "low";
			}

			pst = con.prepareStatement("update tasktodolist set taskpriority=? where taskid=?");
			pst.setString(1, newpriority);
			pst.setInt(2, taskid);
			System.out.println(newpriority);
			pst.executeUpdate();
		}

	}
}
