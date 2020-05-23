package mind.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mind.model.dao.HealthDAO;
import mind.model.dao.HealthDAOImpl;

/**
 * Servlet implementation class IdCheckServlet
 */
@WebServlet("/idCheckServlet")
public class IdCheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8"); 
		
		//회원 가입 아이디 체크
		String id = request.getParameter("memberId");
			
			HealthDAO dao = new HealthDAOImpl();
			
			try {
				Boolean result = dao.duplicateById(id);
				PrintWriter out = response.getWriter();
				
				if(result) {
					out.print("중복입니다.");
				}else {
					out.print("사용가능입니다.");
				}
				
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
	}

}
