package mind.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mind.model.dto.ReviewDTO;
import mind.service.HealthService;

public class ReviewSelectController implements HealthController {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
		//헬스장 코드에 맞춰서 리뷰를 가져온다.
		int gymCode = Integer.parseInt(request.getParameter("gymCode"));
		
		List<ReviewDTO> list = HealthService.selectReviewByGymCode(gymCode);
		
		//db에서 받아온 list를 request에 설정해서 넘긴다.
		if(list != null && list.size()>0) { //list가 null이 아니고, 사이즈가 0보다 크다면 list를 request에 파라메터로 넘긴다.
			request.setAttribute("review", list);
		}else { //list가 null이면 아직 리뷰가 없는 헬스장이므로 메시지를 넘긴다.
			request.setAttribute("review", "아직 등록된 리뷰가 없습니다.");
		}
		
		ModelAndView mv = new ModelAndView();
		//헬스장 상세보기 페이지로 넘긴다.
		mv.setViewName("property-1.jsp");
		//setAttribute로 넘기기 때문에 redirect방식 x : setRedirect(true) 설정 필요 없음

		return mv;
	}

}
