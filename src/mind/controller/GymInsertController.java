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

import mind.model.dto.GymDTO;
import mind.service.HealthService;

public class GymInsertController implements HealthController {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {
		HttpSession session = request.getSession();

		String id = session.getAttribute("curUserId").toString();

		//멀티파트리퀘스트 생성에 필요한 매개변수들 설정
		ServletContext application = request.getServletContext();
		String saveDir=application.getRealPath("/save/gym");
		String encoding = "UTF-8";
		int maxSize=1024*1024*100; //100mb
		
		//멀티파트리퀘스트 생성
		MultipartRequest m = new MultipartRequest(request, saveDir, maxSize, encoding, new DefaultFileRenamePolicy());
		File file = m.getFile("file");
		
		
		//String name = request.getParameter("gymName");
		//String addr = request.getParameter("addr");
		//String phoneNum = request.getParameter("phone");
		//int gymCapacity =Integer.parseInt(request.getParameter("capacity"));
		//int price = Integer.parseInt(request.getParameter("price"));
		//String comment = request.getParameter("comment");
		//String weekday = request.getParameter("weekday");
		//String weekend = request.getParameter("weekend");
		//String fileName = request.getParameter("fileName");
		
		String name = m.getParameter("gymName");
		String addr = m.getParameter("addr");
		String phoneNum =m.getParameter("phone");
		int gymCapacity =Integer.parseInt(m.getParameter("capacity"));
		int price = Integer.parseInt(m.getParameter("price"));
		String comment = m.getParameter("comment");
		String weekday = m.getParameter("weekday");
		String weekend = m.getParameter("weekend");
		String fileName = m.getOriginalFileName("file");
		//System.out.println(name);
		//System.out.println(fileName);
		
		GymDTO gym = new GymDTO(name,addr,phoneNum,gymCapacity,price,comment, weekday,weekend,fileName);
		
		HealthService.insertGym(gym,id);
		
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("front?command=selectPoint");
		mv.setRedirect(true);
			
		return mv;
	}

}
