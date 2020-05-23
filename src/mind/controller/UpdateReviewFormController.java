package mind.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mind.model.dto.ReviewDTO;

public class UpdateReviewFormController implements HealthController {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {
		

		//수정할 리뷰에서 데이터를 받아와서 reviewDTO로 만든다.
		String memberId = request.getParameter("memberId");
		int code = Integer.parseInt(request.getParameter("reviewCode"));
		int gymCode = Integer.parseInt(request.getParameter("gymCode"));
		String content = request.getParameter("reviewContent");
		String fileName = request.getParameter("reviewFileName");
		//리뷰 디티오 만듦 
		ReviewDTO review = new ReviewDTO(code, memberId, null, 0, content, fileName, gymCode);
		
		ModelAndView mv = new ModelAndView();
		request.setAttribute("review", review);
		//업데이트 jsp로 보냄ㅋㅋ
		mv.setViewName("review_update.jsp");
		return mv;
	}

}
