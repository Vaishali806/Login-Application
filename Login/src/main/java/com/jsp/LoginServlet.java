package com.jsp;



import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
@WebServlet("/register")

public class LoginServlet extends HttpServlet{
	

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out = resp.getWriter();
		resp.setContentType("text/html");
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs=null;
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/userdb","root","Vaishali@28");
		String firstName = req.getParameter("firstName");
		String lastName = req.getParameter("lastName");
		String phoneNumber = req.getParameter("phoneNumber");
		String email = req.getParameter("email");
		String address = req.getParameter("address");

		
		ps=con.prepareStatement("INSERT INTO users (first_name, last_name, phone_number, email_id, address) VALUES (?, ?, ?, ?, ?)");
		ps.setString(1, firstName);
		ps.setString(2, lastName);
		ps.setString(3, phoneNumber);
		ps.setString(4, email);
		ps.setString(5, address);

        int rowsAffected = ps.executeUpdate();
        if (rowsAffected > 0) {
            resp.sendRedirect("Success.jsp");
        }  else{
            out.println("<h2>Registration Failed!!</h2>");
       
		}
	} catch (ClassNotFoundException e) {
		out.println("<h2>error occurred</h2>");
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} finally {
		try {
			if(rs!=null) rs.close();
			if(ps!=null)ps.close();
			if(con!=null)con.close();
	}
	catch (SQLException e) {
		e.printStackTrace();
		
	}
	}
	
	}
}



