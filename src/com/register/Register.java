package com.register;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/registering")
public class Register extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		PrintWriter out = resp.getWriter();
		String fName = req.getParameter("fname");
		String lName = req.getParameter("lname");
		String eml = req.getParameter("email");
		String pass = req.getParameter("fpass");
		String phn = req.getParameter("phone");
		String dob = req.getParameter("DOB");
		String sex = req.getParameter("gender");
		String cntry = req.getParameter("country");
		
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/softbranch","root","P******");
			
			PreparedStatement ps = con.prepareStatement("insert into register values(?,?,?,?,?,?,?,?)");
			ps.setString(1,fName);
			ps.setString(2,lName);
			ps.setString(3,eml);
			ps.setString(4,pass);
			ps.setString(5,phn);
			ps.setString(6,dob);
			ps.setString(7,sex);
			ps.setString(8,cntry);
			
		    int count =  ps.executeUpdate();
		    if(count > 0){
		    	RequestDispatcher rd = req.getRequestDispatcher("/index.jsp");
		    	rd.include(req, resp);
		    }else{
		    	RequestDispatcher rd = req.getRequestDispatcher("/error");
		    }
		} catch (Exception e) {
			e.printStackTrace();
			resp.setContentType("text/html");
			out.print("<h3 style='color:red'> Exception occured"+e.getMessage()+" <h3>");
		}
		
	}
	

}
