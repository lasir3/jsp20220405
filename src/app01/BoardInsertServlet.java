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
 * Servlet implementation class BoardInsertServlet
 */
@WebServlet("/board/insert")
public class BoardInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private DataSource ds;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardInsertServlet() {
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
		
		String path = "/WEB-INF/view/app01/insert.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// request 파라미터 가공
		String title = request.getParameter("title");
		String body = request.getParameter("body");
		BoardDto dto = new BoardDto();
		dto.setTitle(title);
		dto.setBody(body);
		
		// db에 입력
		// DAO (Data Access Object)
		try (Connection con = ds.getConnection();) {
			BoardDao dao = new BoardDao();
			boolean success = dao.insert(con, dto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		// forward/redirect
		String path = request.getContextPath() + "/board/insert";
		response.sendRedirect(path);
		
	}

}













