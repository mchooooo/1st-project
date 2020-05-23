package mind.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mind.model.dto.GymDTO;
import mind.service.HealthService;

public class GymListController implements HealthController {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("index-5.jsp");
		String keyfield = null;
		String keyword = request.getParameter("keyword");
		
		if(request.getParameter("keyfield").equals("주소")) {
			keyfield="addr";
		}else if(request.getParameter("keyfield").equals("이름")) {
			keyfield = "name";
		}
		List<GymDTO> list = new ArrayList<GymDTO>();
		if(keyfield == null)
			list = HealthService.selectAllGym();
		else
			list = HealthService.selectGymByKeyword(keyfield, keyword);
		
		request.setAttribute("list", list);
		return mv;
	}

}
