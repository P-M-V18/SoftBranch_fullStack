package com.login;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/logging")
public class Login extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		PrintWriter out = resp.getWriter();
		String myemail = req.getParameter("email");
		String mypass = req.getParameter("pswd");
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/softbranch","root","P******");
			PreparedStatement ps = con.prepareStatement("select * from register where email=? and password=?");
			ps.setString(1, myemail);
			ps.setString(2, mypass);
			ResultSet rs = ps.executeQuery();
			if(rs.next())
			{
				HttpSession session = req.getSession();
				session.setAttribute("session_name","Hi " + rs.getString("First_name"));
				
				RequestDispatcher rd = req.getRequestDispatcher("/index.jsp");
				rd.include(req, resp);
			}else{
				
				HttpSession session = req.getSession();
				session.setAttribute("session_name","Not Registered");
				
				RequestDispatcher rd = req.getRequestDispatcher("/index.jsp");
				rd.include(req, resp);
			}
		} catch (Exception e) {
			e.printStackTrace();
			resp.setContentType("text/html");
			out.print("<h3 style='color:red'> Exception occured"+e.getMessage()+" <h3>");
		}
		
	}

}
