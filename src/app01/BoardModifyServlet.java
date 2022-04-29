package app01;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import app01.dao.BoardDao;
import app01.dto.BoardDto;

/**
 * Servlet implementation class BoardModifyServlet
 */
@WebServlet("/board/modify")
public class BoardModifyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private DataSource ds;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardModifyServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    @Override
    public void init() throws ServletException {
    	ServletContext application = getServletContext();
    	this.ds = (DataSource) application.getAttribute("dbpool");
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// request parameter 가공
		String title = request.getParameter("title");
		String body = request.getParameter("body");
		String idStr = request.getParameter("id");
		int id = Integer.parseInt(idStr);

		BoardDto board = new BoardDto();
		board.setId(id);
		board.setTitle(title);
		board.setBody(body);
		
		// 비지니스 로직 처리
		BoardDao dao = new BoardDao();
		boolean success = false;
		try (Connection con = ds.getConnection()) {
			success = dao.modify(con, board);
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		// 결과 attribute 넣고
		
		// forward / redirect
		String location = request.getContextPath() + "/board/get?id=" + id;
		if (success) {
			location += "&success=true";
		} else {
			location += "&success=false";
		}
		
		response.sendRedirect(location);
		
	}

}












