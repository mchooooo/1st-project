package mind.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mind.model.dto.MemberDTO;
import mind.model.dto.UseDetailDTO;
import mind.service.HealthService;

public class SelectUseDetailByGymCodeStateController implements HealthController {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {	
		ModelAndView mv = new ModelAndView();
		//현재 로그인 계정의 아이디 받기
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("curUserId");
		
		//사업자의 짐코드를 받아오기
		MemberDTO memberDTO = HealthService.selectMemberById(id);
		int gymcode = memberDTO.getGymCode();
		System.out.println("gymCode "+ gymcode);

		//사업자의 짐코드이용, 해당 헬스장의 이용신청자 목록받아오기
		List<UseDetailDTO> list = HealthService.selectUseDetailByGymCodeState(gymcode);
		
		for(UseDetailDTO dto : list) {
			System.out.println(dto.getMemberId() + ": " + dto.getState());
		}
		
		if(list==null) {
			request.setAttribute("errCode", "51");//이용신청자 목록 출력에 실패했습니다.
			throw new SQLException();
		}
		
		request.setAttribute("alist", list);
		mv.setViewName("applicant_list.jsp");
		//front?command=applicantList
		mv.setRedirect(false);		
		
		return mv;
	}

}
