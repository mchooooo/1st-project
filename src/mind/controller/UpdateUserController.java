package mind.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import mind.model.dao.HealthDAO;
import mind.model.dto.MemberDTO;
import mind.service.HealthService;

public class UpdateUserController implements HealthController {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws SQLException ,IOException  {
	response.setCharacterEncoding("UTF-8");
	ModelAndView mv = new ModelAndView();
	HttpSession session = request.getSession();
	String id = session.getAttribute("curUserId").toString();
	
	//서비스 메소드 호출
	String type = request.getParameter("type");
	if(type.equals("1")) {
		String pwd1= request.getParameter("password1");
		String pwd2= request.getParameter("password2");
		if(pwd1.equals(pwd2)) {
			HealthService.updateMember(new MemberDTO(id,pwd1,null),type);
		} else {
			request.setAttribute("errCode", "3");
			throw new SQLException();
		}
	} else {
		String phone= request.getParameter("phone");
		HealthService.updateMember(new MemberDTO(id,null,phone),type);
	}
	mv.setViewName("mypage.jsp");
	mv.setRedirect(true);
	return mv;
	}


}
