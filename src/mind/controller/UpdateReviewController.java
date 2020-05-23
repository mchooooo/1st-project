package mind.controller;

import java.io.File;
import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import mind.model.dto.ReviewDTO;
import mind.service.HealthService;

public class UpdateReviewController implements HealthController {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {
		
		ReviewDTO review = null;
		
		//멀티파트리퀘스트 생성에 필요한 매개변수들 설정
		ServletContext application = request.getServletContext();
		String saveDir=application.getRealPath("/save/review");
		String encoding = "UTF-8";
		int maxSize=1024*1024*100; //100mb
		
		//멀티파트리퀘스트 생성
		MultipartRequest m = new MultipartRequest(request, saveDir, maxSize, encoding, new DefaultFileRenamePolicy());
		File file = m.getFile("file");
		
		
		//리뷰 디티오를 만들 변수들 받기
		int starScore = Integer.parseInt(m.getParameter("starScore"));
		String content = m.getParameter("content");
		int gymCode = Integer.parseInt(m.getParameter("gymCode"));
		int code = Integer.parseInt(m.getParameter("reviewCode"));
		// 사진이 있는 리뷰에서 수정하기를 눌렀을 때 업로드 되어있던 사진이름.
		String oldFile = m.getParameter("oldFile");
		//세션에 유저 아이디 받기()
		HttpSession session = request.getSession();
		String memberId = (String)session.getAttribute("curUserId");
		//본문내용에 스크립트 태그를 막기 위해서 사용
		content= content.replace("<", "&lt;");
		
//		System.out.println(m.getParameter("gymCode"));
//		System.out.println(m.getParameter("starScore"));
//		System.out.println(m.getParameter("content"));
		
		
		
		if(file==null) {//file업로드 안하는 리뷰파일 
			review = new ReviewDTO(code, memberId, null, starScore, content, gymCode);
		}else { //file업로드 하는 리뷰파일
			
			review = new ReviewDTO(code, memberId, null, starScore, content,m.getOriginalFileName("file") , gymCode);
		}
		if(file==null && oldFile!=null) { //기존에 사진이 있고 신규파일은 업로드 안하는 친구들 ㅇㅈ?
			review = new ReviewDTO(code, memberId, null, starScore, content, oldFile, gymCode);
		}
		
		int result = HealthService.updateReview(review);
		
		ModelAndView mv = new ModelAndView();	
		mv.setViewName("front?command=gymDetail&code="+gymCode);
		mv.setRedirect(true);
		return mv;
		
	
	}

}
