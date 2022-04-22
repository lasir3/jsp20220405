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
 * Servlet implementation class S14Servlet11
 */
@WebServlet("/S14Servlet11")
public class S14Servlet11 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public S14Servlet11() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String sql = "SELECT CostomerName, Country, City, PostalCode FROM CUstomers WHERE Ciyt = ?";
		List<Customer> list = new ArrayList<>();
		ServletContext application = getServletContext();
		DataSource ds = (DataSource) application.getAttribute("dbpool");

		String param = request.getParameter("city");
		
		try (Connection con = ds.getConnection();
				
				// String타입으로 query 전달 시 조작이 가능해짐 (SQL Injection)
				// PreparedStatment로 예방 가능함
				PreparedStatement pstmt = con.prepareStatement(sql);) {

			// 첫번째 ?에 parameter 적용
			
			pstmt.setString(1, param);
			try (ResultSet rs = pstmt.executeQuery()) {
				while (rs.next()) {
					Customer c = new Customer();
					c.setName(rs.getString(1));
					c.setCountry(rs.getString(2));
					c.setCity(rs.getString(3));
					c.setPostCode(rs.getString(4));

					list.add(c);
				}

			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		request.setAttribute("customers", list);

		String path = "/WEB-INF/view/chap14/ex05.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
