package mind.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mind.controller.ModelAndView;
import mind.model.dto.MemberDTO;
import mind.service.HealthService;

public class LoginController implements HealthController {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws SQLException ,IOException  {
	response.setCharacterEncoding("UTF-8");
	ModelAndView mv = new ModelAndView();
	
	HttpSession session = request.getSession();
	String userType = session.getAttribute("curUserType").toString();
	
	if(userType.equals("0")) {
	//서비스 메소드 호출
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	boolean result = HealthService.login(id,password);
	
	
	//로그인 성공
	if (result) {
		int gymCode = HealthService.selectMemberById(id).getGymCode();
		
		if(gymCode==0) {
			session.setAttribute("curUserType", "1");
		} else {
			session.setAttribute("curUserType", "2");
		} 
		session.setAttribute("curUserId",id);
		mv.setViewName("index.html");
		
		
		
	} else {		
		//방법3
		//에러페이지를 통해 처리
		request.setAttribute("errCode","1");
		throw new SQLException();
	}
	} else { 
		  session.setAttribute("curUserType", "0");
		  session.setAttribute("curUserId",""); 
		  mv.setViewName("index.html");
		  mv.setRedirect(true); 
		  }

	
		 
	return mv;
	}
}
