package chap20;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * Application Lifecycle Listener implementation class ServletContextListener04
 *
 */
@WebListener
public class ServletContextListener04 implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public ServletContextListener04() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent sce)  { 
         // TODO Auto-generated method stub
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent sce)  { 
    	System.out.println("4번 서블릿콘텍스트 리스너 시작 메소드 실행됨!!!!");
    	
    	ServletContext application = sce.getServletContext();
    	String val = application.getInitParameter("initParamName1");
    	String adminEmail = application.getInitParameter("adminEmail");
    	
    	application.setAttribute("adminEmail", adminEmail);
    	System.out.println(val);
    }
	
}
