package mind.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mind.model.dto.MemberDTO;
import mind.service.HealthService;

public class CheckGymCodeController implements HealthController {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {
		HttpSession session = request.getSession();
		ModelAndView mv = new ModelAndView();
		String id =session.getAttribute("curUserId").toString();
		String type =session.getAttribute("curUserType").toString();
		
		if(type.equals("1") || type.equals("0")) {
			request.setAttribute("errCode", "4");
			throw new SQLException();
		}else {
		MemberDTO member=  HealthService.selectMemberById(id);
			int gymCode=member.getGymCode();
			if(gymCode == -1) {
				mv.setViewName("buisness_register.jsp");
			}else {
				request.setAttribute("errCode", "5");
			throw new SQLException();
			}
		}
			
		return mv;
	}

}
