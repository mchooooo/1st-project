package mind.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mind.model.dto.GymDTO;
import mind.model.dto.ReviewDTO;
import mind.service.HealthService;

public class GymDetailController implements HealthController {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
		ModelAndView mv = new ModelAndView();
		//NumberFormatException 주의
		int code = Integer.parseInt(request.getParameter("code"));
		GymDTO gymDTO = HealthService.selectGymByCode(code);
		
		//헬스장 코드에 맞춰서 리뷰를 가져온다.
		List<ReviewDTO> reviewList = HealthService.selectReviewByGymCode(code);
		
		//db에서 받아온 list를 request에 설정해서 넘긴다.
		if(reviewList != null && reviewList.size()>0) { //list가 null이 아니고, 사이즈가 0보다 크다면 list를 request에 파라메터로 넘긴다.
			request.setAttribute("review", reviewList);
//			System.out.println(reviewList.get(0));
//			System.out.println(reviewList.get(0).getCode());
//			System.out.println(reviewList.get(0).getContent());
//			System.out.println(reviewList.get(0).getGymCode());
//			System.out.println(reviewList.get(0).getStarScore());
		}
		
		request.setAttribute("gym", gymDTO);
		mv.setViewName("property-1.jsp");
		return mv;
	}
}
