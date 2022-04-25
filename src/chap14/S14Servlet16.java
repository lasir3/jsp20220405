package chap14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import chap14.javaBeans.Employee;

/**
 * Servlet implementation class S14Servlet16
 */
@WebServlet("/S14Servlet16")
public class S14Servlet16 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public S14Servlet16() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String id = request.getParameter("id");
		if (id != null) {
			// db에서 조회
			String sql = "SELECT EmployeeID, LastName, FirstName, BirthDate, Photo, Notes "
					+ "FROM Employees "
					+ "WHERE EmployeeID = ?";
			
			ServletContext application = getServletContext();
			DataSource ds = (DataSource) application.getAttribute("dbpool");
			
			try (Connection con = ds.getConnection();
					PreparedStatement pstmt = con.prepareStatement(sql)) {
				
				pstmt.setInt(1, Integer.parseInt(id));
				
				try (ResultSet rs = pstmt.executeQuery()) {
					if (rs.next()) {
						Employee emp = new Employee();
						
						emp.setLastName(rs.getString("LastName"));
						emp.setFirstName(rs.getString("FirstName"));
						emp.setBirthDate(rs.getString("BirthDate"));
						emp.setPhoto(rs.getString("Photo"));
						emp.setNotes(rs.getString("Notes"));
						emp.setId(rs.getInt("EmployeeID"));
						
						// request에 attribute로 넣고
						request.setAttribute("employee", emp);
						
					}
				}
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		}
		// forward
		String path = "/WEB-INF/view/chap14/ex10.jsp";
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
