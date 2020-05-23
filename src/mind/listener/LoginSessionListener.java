package mind.listener;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 * Application Lifecycle Listener implementation class LoginSessionListener
 *
 */
@WebListener
public class LoginSessionListener implements HttpSessionListener {

    /**
     * Default constructor. 
     */
    public LoginSessionListener() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see HttpSessionListener#sessionCreated(HttpSessionEvent)
     */
    public void sessionCreated(HttpSessionEvent arg0)  { 
        HttpSession session = arg0.getSession();
        session.setAttribute("curUserId", "");
        session.setAttribute("curUserType", "0");
        session.setMaxInactiveInterval(10*60);
    }

	/**
     * @see HttpSessionListener#sessionDestroyed(HttpSessionEvent)
     */
    public void sessionDestroyed(HttpSessionEvent arg0)  { 
         // TODO Auto-generated method stub
    }
	
}
