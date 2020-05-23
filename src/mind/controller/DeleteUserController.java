package mind.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mind.service.HealthService;

public class DeleteUserController implements HealthController {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws SQLException {
	
		response.setCharacterEncoding("UTF-8");
		ModelAndView mv = new ModelAndView();
		
		HttpSession session = request.getSession();
		String id = session.getAttribute("curUserId").toString();
		String type = session.getAttribute("curUserType").toString();
		//서비스 메소드 호출
		if(type.equals("2")) {
			request.setAttribute("errCode","6");
			throw new SQLException();
		}
		
		int result = HealthService.deleteMember(id);
		
		if (result >  0) {
			session.setAttribute("curUserType", "0");
			session.setAttribute("curUserId", "");
			request.setAttribute("Msg", "1");
			mv.setViewName("index-5.jsp");
		} else {
			request.setAttribute("errCode","1");
			throw new SQLException();
		}
		return mv;
			
			
	
	
	
	}

}



