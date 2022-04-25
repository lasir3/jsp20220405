package chap14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import chap14.javaBeans.Customer;

/**
 * Servlet implementation class S14Servlet13
 */
@WebServlet("/S14Servlet13")
public class S14Servlet13 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public S14Servlet13() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sql = "SELECT CustomerName, City, Country, PostalCode "
				+ "FROM Customers "
				+ "WHERE City = ? AND Country = ?";
		
		ServletContext application = getServletContext();
		DataSource ds = (DataSource) application.getAttribute("dbpool");
		
		try (Connection con = ds.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);
				) {
			String param1 = request.getParameter("city");
			String param2 = request.getParameter("country");
			
			pstmt.setString(1, param1);
			pstmt.setString(2, param2);
			
			try (ResultSet rs = pstmt.executeQuery();) {
				List<Customer> list = new ArrayList<>();
				
				
				while (rs.next()) {
					Customer customer = new Customer();
					customer.setName(rs.getString("CustomerName"));
					customer.setCity(rs.getString("city"));
					customer.setCountry(rs.getString("Country"));
					customer.setPostCode(rs.getString("PostalCode"));
					
					list.add(customer);
					
				}
				
				request.setAttribute("customers", list);
				
			}
			
			pstmt.executeQuery();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		String path = "/WEB-INF/view/chap14/ex05.jsp";
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
