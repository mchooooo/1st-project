package mind.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mind.service.HealthService;

public class DeleteReviewController implements HealthController {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {
		System.out.println("deleteReview call");
		//리뷰 코드를 받는다.
		int code = Integer.parseInt(request.getParameter("reviewCode"));
		//memberId를 받는다
		String memberId = request.getParameter("memberId");
		//gymCode를 받는다 --> 다시 헬스장 상세보기 페이지로 이동하기 위해서
		int gymCode=Integer.parseInt(request.getParameter("gymCode"));
		//서비스 호출 
		int result = HealthService.deleteReview(code, memberId);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("front?command=gymDetail&code="+gymCode);
		mv.setRedirect(true);
		return mv;
	}

}
