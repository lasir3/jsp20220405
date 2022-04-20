package chap19;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet Filter implementation class Filter05
 */
//@WebFilter("/Filter05")
public class Filter05 implements Filter {

    /**
     * Default constructor. 
     */
    public Filter05() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// 세션에 loggedInUser가 있으면 로그인된 상태
		
		boolean loggedIn = false;
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session = req.getSession();
		loggedIn = session.getAttribute("loggedInUser") != null;
		
		if(loggedIn) {
			// 로그인이 되어있으면 다음 필터(서블릿)이 일하고 
			chain.doFilter(request, response);			
		} else {
			// 로그아웃 상태면 로그인 폼 화면으로 이동
			((HttpServletResponse) response).sendRedirect(req.getContextPath() + "/chap19/ex02.jsp");
		}
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
