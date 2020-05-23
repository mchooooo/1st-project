package mind.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mind.model.dto.MemberDTO;
import mind.service.HealthService;

public class UserManagingController implements HealthController {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {
		//이용신청한 고객의 사용시작을 사업자가 허가. 즉 사업자가 이용시작버튼 누르기
		//controller
		System.out.println("UserManagingController call....");
		ModelAndView mv = new ModelAndView();
		HttpSession session = request.getSession();
		
		//1. 이용신청을 누르면 useDetailCode를 가져오기. form으로 value(useDetailCode)를 넘겨받는다.
		int code = Integer.parseInt(request.getParameter("usercode"));
		System.out.println(code+"   테스트입니다.");
		
		//2. updateUseDetail를 통해 state를 0(사용됨으로 DB를 바꿔준다.)
		int result = HealthService.updateUseDetail(code);
		if(result == 0 ) {
			request.setAttribute("errCode", "52");//"이용승인에 실패했습니다."
			throw new SQLException();
		}
		
		//3. 현재 사업자가 보고있는 화면을 갱신시켜준다.(이용버튼을 누른 회원이 나오지 않게 만들어준다.)
		mv.setViewName("front?command=applicantList");
		
		//////////////////포인트 잔액 갱신 : 사업자가 헬스장 이용하기 시///////////////////
		//1. 사용자의 아이디를 가져오기
		String memberId = request.getParameter("userId");
		
		
		//2. 로그인된 사업자의 gymCode를 가져오기
		//사업자의 id
		String businessId = (String)session.getAttribute("curUserId");
		//사업자의 id를 이용해서 사업자의 gymcode받아오기
		
		MemberDTO businessDTO = HealthService.selectMemberById(businessId);
		int gymcode = businessDTO.getGymCode();
		
		//3. 해당 업장의 가격 가져오기
		int price = Integer.parseInt(request.getParameter("gymPrice"));
		
		int updatePoinResult = HealthService.updateBalToUse(memberId, businessId, price);
		System.out.println("updatePoinResult  :  "+updatePoinResult+"  테스트입니다.");
		if(updatePoinResult == 0 ) {
			//update에 실패한 경우
			//error코드 작성 필요
			request.setAttribute("errCode","51");
			throw new SQLException();			
		}
		mv.setRedirect(true);
		return mv;
	}

}
