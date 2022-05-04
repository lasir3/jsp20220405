package app01;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import app01.dao.BoardDao;
import app01.dao.ReplyDao;

/**
 * Servlet implementation class BoardRemoveServlet
 */
@WebServlet("/board/remove")
public class BoardRemoveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DataSource ds;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public BoardRemoveServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public void init() throws ServletException {
		ServletContext application = getServletContext();
		this.ds = (DataSource) application.getAttribute("dbpool");
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		// request 파라미터 수집, 가공
		String idStr = request.getParameter("id");
		int id = Integer.parseInt(idStr);
		
		// 비지니스 로직 처리(db crud)
		BoardDao dao = new BoardDao();
		ReplyDao replyDao = new ReplyDao();
		
		boolean success = false;
		Connection con = null;
		try {
			con = ds.getConnection();
			con.setAutoCommit(false);
			
			replyDao.deleteByBoardId(con, id);
			success = dao.delete(con, id);
			
			con.commit();
			
		} catch (Exception e) {
			e.printStackTrace();
			if (con != null) {
				try {
					con.rollback();
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
			}
		} finally {
			if (con != null) {
				try {
					con.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
		// 결과 set
		
		
		// forward/redirect
		String location = request.getContextPath() + "/board/list";
		if (success) {
			location += "?success=true";
		} else {
			location += "?success=false";
		}
		
		response.sendRedirect(location);
		
		
	}

}










