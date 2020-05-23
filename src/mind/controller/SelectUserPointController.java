package mind.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mind.model.dto.MemberDTO;
import mind.service.HealthService;

public class SelectUserPointController implements HealthController {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws SQLException {
		HttpSession session = request.getSession();
		String id = session.getAttribute("curUserId").toString();
		MemberDTO member = HealthService.selectPoint(id);
		
		System.out.println(member.getBalance());
		
		request.setAttribute("balance",member.getBalance());
		ModelAndView mv = new ModelAndView();
		mv.setViewName("mypage.jsp");
		
		return mv;
	}

}
