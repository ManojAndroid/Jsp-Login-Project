package com.org.bridgelabz.Service;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/ViewData")
public class ViewDataServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.getRequestDispatcher("Header.jsp").include(request, response);

		PrintWriter printWriter = response.getWriter();

		HttpSession httpSession = request.getSession();
		String fpassword = (String) httpSession.getAttribute("fpassword");
		if (fpassword == null || fpassword == " ") {
			printWriter.println("Session out login Again");
			// response.sendRedirect("lj2");
		} else {
			Connection connection = null;
			PreparedStatement preparedStatement = null;
			ResultSet resultSet = null;

			String qry = "select * from abc.formdata where Password=?";

			try {
				Class.forName("com.mysql.jdbc.Driver");
				connection = DriverManager.getConnection("jdbc:mysql://localhost:3306?user=root&password=manoj");

				preparedStatement = connection.prepareStatement(qry);

				preparedStatement.setString(1, fpassword);
				resultSet = preparedStatement.executeQuery();
				int i = 1;
				
				while (resultSet.next()) {
					HttpSession session = request.getSession();
					session.setAttribute("data", resultSet);
					/*HttpSession session1 = request.getSession();
					session.setAttribute("data1", resultSet);*/
					RequestDispatcher rd = request.getRequestDispatcher("InformationTableJsp.jsp");
					rd.forward(request, response);

					
				}
				
			} catch (ClassNotFoundException | SQLException e) {
				e.printStackTrace();
				
				if (preparedStatement != null)
					try {
						preparedStatement.close();
					} catch (SQLException e1) {
						e1.printStackTrace();
					}
				if (connection != null)
					try {
						connection.close();
					} catch (SQLException e1) {
						e1.printStackTrace();
					}
			}
		}
	}

}
