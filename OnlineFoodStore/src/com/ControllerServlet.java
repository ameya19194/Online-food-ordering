package com;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.ConnectException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

import com.mysql.jdbc.PreparedStatement;

import dbutility.MyDBConnector;


public class ControllerServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		java.sql.PreparedStatement pstmt=null;
		String username=req.getParameter("usr");
		String password=req.getParameter("pass");
		PrintWriter out=resp.getWriter();
		
		Connection con=MyDBConnector.getConnection();
		//System.out.println("Connection established");
		try {
			pstmt=con.prepareStatement("select * from register where email=? and password=?");
			pstmt.setString(1, username);
			pstmt.setString(2, password);
			
			ResultSet rs=pstmt.executeQuery();
			
		   if(rs.next())
			{
				HttpSession session=req.getSession(true);
				String ouruser=rs.getString(2);
				session.setAttribute("User", ouruser);
				RequestDispatcher rd=req.getRequestDispatcher("/category.jsp");	
				rd.forward(req, resp);
			}
			
			else
			{
				
				RequestDispatcher rd=req.getRequestDispatcher("/index.jsp");	
				rd.include(req, resp);
				out.println("<br/><h4 style='font-family:Consolas; color:maroon'>Username & Password incorrect!</h4>");
				
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}

}
