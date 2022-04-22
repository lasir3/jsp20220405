package chap14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 * Servlet implementation class S14Servlet02
 */
@WebServlet("/S14Servlet02")
public class S14Servlet02 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public S14Servlet02() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sql = "SELECT CustomerName FROM Customers WHERE CustomerID = 1";
		
		ServletContext application = getServletContext();
		DataSource ds = (DataSource) application.getAttribute("dbpool");
		try (
			// 1. 연결얻기
			Connection con = ds.getConnection();
			// 2. statment 생성
			Statement stmt = con.createStatement();
			// 3. 쿼리 실행
			ResultSet rs = stmt.executeQuery(sql);
				) {
			// 4. 결과 정제
			if (rs.next()) {
				String customerName = rs.getString(1);
				System.out.println(customerName);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		// 5. 자원닫고 (try-with-resource 문법으로 해결)
		

		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
