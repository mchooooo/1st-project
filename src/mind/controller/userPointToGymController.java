
package mind.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mind.model.dto.UseDetailDTO;
import mind.service.HealthService;

public class userPointToGymController implements HealthController {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {
		HttpSession session = request.getSession();
		
		
		ModelAndView mv = new ModelAndView();
		////////////////// 이용내역 추가 //////////////////////
	
		
		//로그인된 사용자의 계정에서 id를 얻어온다.
		String memberId = (String)session.getAttribute("curUserId");
		System.out.println("curUserId : "+memberId+"  입니다.");
		//해당 헬스장의 gymCode와 price를 받아온다.(넘어오는 파라미터 이름 점검필요)
		String gymName = request.getParameter("gymName");
		System.out.println("gymName : "+gymName+"  입니다.");
		System.out.println();
		int gymCode = Integer.parseInt(request.getParameter("gymCode"));
		System.out.println("gymCode : "+gymCode+"  입니다.");
		int price = Integer.parseInt(request.getParameter("price"));
		System.out.println("price : "+price+"  입니다.");
		
		
		//button을 누른 해당 시간의 시간을 받아온다.   toLocaleDateString()을 이용해서 String 값으로 받는다.
//		SimpleDateFormat format2 = new SimpleDateFormat ( "yyyy년 MM월dd일 HH시mm분");
//				
//		String useStartHour = format2.format (System.currentTimeMillis());
		
		//잔액 체크
		int balance = HealthService.selectPoint(memberId).getBalance();
		if(balance < price) {
			request.setAttribute("errCode","40");
			throw new SQLException();
		}
				
		UseDetailDTO useDetail = new UseDetailDTO(0, memberId, gymName, gymCode, price, null, 1);
		
		int insertUseDetailResult = HealthService.insertUseDetail(useDetail);
		System.out.println("insertUseDetailResult  :  "+insertUseDetailResult+"  테스트입니다.");
		if(insertUseDetailResult == 0 ) {
			//update에 실패한 경우
			//error코드 작성 필요
			request.setAttribute("errCode","30");
			
			throw new SQLException();
			
			
		}
		
		mv.setViewName("front?command=selectPoint");
		mv.setRedirect(true);
		return mv;
	}

}
