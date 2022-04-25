package chap14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 * Servlet implementation class S14Servlet14
 */
@WebServlet("/S14Servlet14")
public class S14Servlet14 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public S14Servlet14() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<String> list1 = new ArrayList<>();
		List<String> list2 = new ArrayList<>();

		String sql1 = "SELECT DISTINCT Country FROM Customers ORDER BY Country";
		String sql2 = "SELECT DISTINCT City FROM Customers ORDER BY City";

		ServletContext application = getServletContext();
		DataSource ds = (DataSource) application.getAttribute("dbpool");

		try (Connection con = ds.getConnection();
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery(sql1);) {

			while (rs.next()) {
				list1.add(rs.getString(1));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		try (Connection con = ds.getConnection();
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery(sql2);) {

			while (rs.next()) {
				list2.add(rs.getString(1));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		request.setAttribute("countryList", list1);
		request.setAttribute("cityList", list2);
		
		String path = "/WEB-INF/view/chap14/ex08.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sql = "INSERT INTO Customers "
				+ "(CustomerName, ContactName, Address, City, PostalCode, Country) "
				+ "VALUES "
				+ "(?, ?, ?, ?, ?, ?)";
		
		ServletContext application = getServletContext();
		DataSource ds = (DataSource) application.getAttribute("dbpool");
		int result = 0;
		
		try (Connection con = ds.getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql)) {
			
			String customerName = request.getParameter("customerName");
			String contactName = request.getParameter("contactName");
			String address = request.getParameter("address");
			String city = request.getParameter("city");
			String postalCode = request.getParameter("postalCode");
			String country = request.getParameter("country");
			
			pstmt.setString(1, customerName);
			pstmt.setString(2, contactName);
			pstmt.setString(3, address);
			pstmt.setString(4, city);
			pstmt.setString(5, postalCode);
			pstmt.setString(6, country);
			
			result = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}

		String path = "S14Servlet14";
		
		if (result == 1) {
			// insert 성공
			path += "?success=true";
		} else {
			path += "?success=false";
		}
		
		response.sendRedirect(path);
		
	}

}
