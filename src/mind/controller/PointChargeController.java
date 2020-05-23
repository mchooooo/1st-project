package mind.controller;


import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mind.service.HealthService;

public class PointChargeController implements HealthController {

	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {
		ModelAndView mv = new ModelAndView();
		HttpSession session = request.getSession();
		String login = (String) session.getAttribute("curUserType");
		
		//로그인 되어있는 경우
		if(login.equals("1")) {
			//point_charge.jsp에서 받아온 point 값을 request에 설정해서 받는다.
			
			
			int price = Integer.parseInt(request.getParameter("point"));
			//로그인 된 계정의 아이디를 
			
			String memberId = (String) session.getAttribute("curUserId");
			
			//db에서 받아온 point update결과를 int 타입으로 받는다.
			int result = HealthService.updatePoint(memberId, price);
			if(result == 0) {
				request.setAttribute("errCode", "50");
				throw new SQLException();
			}
			
			mv.setViewName("front?command=selectPoint");//포인트 충전에 성공한 경우 마이페이지로 이동한다.
			//넘길 값이 없기 때문에 redirect방식 x : setRedirect(true) 설정 필요 없음
		}else {
			//로그인 안되어있는 경우 해당 페이지에서 로그인 회원가입 페이지로 이동한 후
			//alert메소드로 "로그인 하세요!"를 띄운다
			
			mv.setViewName("register.jsp");
			
		}
		return mv;
		
	}
		
		

}
