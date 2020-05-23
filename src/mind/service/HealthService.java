package mind.service;

import java.sql.SQLException;
import java.util.List;

import mind.model.dao.HealthDAO;
import mind.model.dao.HealthDAOImpl;
import mind.model.dto.GymDTO;
import mind.model.dto.MemberDTO;
import mind.model.dto.ReviewDTO;
import mind.model.dto.UseDetailDTO;
import mind.util.PwUtil;

public class HealthService {
	private static HealthDAO healthDAO = new HealthDAOImpl();
		
	/**
	 * 유저 로그인
	 */
	public static boolean login(String id,String inputPwd) throws SQLException{
		
		String pwd = healthDAO.selectPwdById(id);

	//해당되는 아이디가 없으면 return
	if(pwd==null) {
		return false;
	}
	//패스워드 체크 메소드
	//패스워드가 일치하면 true, 틀리면 false 출력
	//System.out.println(inputPwd+" | "+pwd);
	return new PwUtil().PWCheck(inputPwd,pwd);
	}
	
	/**
	 * 유저 회원가입(등록)
	 * */
	public static int insertMember(MemberDTO member) throws SQLException{
		int result = 0;
		
		if(healthDAO.duplicateById(member.getId()))
			throw new SQLException("사용 중인 아이디입니다.");
		else 
			result = healthDAO.insertMember(member);
		return result;
	}
	
	/**
	 * 아이디로유저검색
	 * */
	public static MemberDTO selectMemberById(String id) throws SQLException{
		MemberDTO memberDTO = healthDAO.selectMemberById(id);
		return memberDTO;
	}
	
	/**
	 * 회원 정보 수정
	 * */
	public static int updateMember(MemberDTO member, String type) throws SQLException{
		if(type.equals("1")) {
			PwUtil pwutil = new PwUtil();
			String pwd = member.getPwd();
			String enpwd = pwutil.Encryption(pwd);
			member.setPwd(enpwd);
		}
		int result = healthDAO.updateMember(member, type);
		return result;
	}
	
	/**
	 * 회원 탈퇴(삭제)
	 * */
	public static int deleteMember(String id) throws SQLException{
		int result = healthDAO.deleteMember(id);
		return result;
	}
	
	/**
	 * 포인트 잔액 갱신 : 포인트 충전용
	 * */
	public static int updatePoint(String id, int price) throws SQLException{
		int result = healthDAO.updatePoint(id, price);
		return result;
	}
	
	/**
	 * 포인트 잔액 갱신 : 사용자가 헬스장 이용하기 시
	 * */
	public static int updatePoint(String id, int gymCode, int price) throws SQLException{
		int result = healthDAO.updatePoint(id, gymCode, price);
		return result;
	}
	
	/**
	 * 포인트 잔액 검색, 출력
	 * */
	public static MemberDTO selectPoint(String id) throws SQLException{
		MemberDTO memberDTO = healthDAO.selectPoint(id);
		return memberDTO;
	}
	
	//////////////////////////////////////////////////////////////////////////////
	
	/**
	 * 헬스장 등록
	 * */
	public static int insertGym(GymDTO gym, String id) throws SQLException{
		int result = healthDAO.insertGym(gym,id);
		return result;
	}
	
	/**
	 * 모든 헬스장 검색
	 * */
	public static List<GymDTO> selectAllGym() throws SQLException{
		List<GymDTO> list = healthDAO.selectAllGym();
		return list;
	}
	
	/**
	 * 헬스장 조건 검색
	 * */
	public static List<GymDTO> selectGymByKeyword(String keyField, String keyword) throws SQLException {
		List<GymDTO> list = healthDAO.selectGymByKeyword(keyField, keyword);
		return list;
	}
	
	/**
	 * 헬스장 상세보기에 필요한 검색
	 * */
	public static GymDTO selectGymByCode(int gymCode) throws SQLException {
		GymDTO gymDTO = healthDAO.selectGymByCode(gymCode);
		List<ReviewDTO> reviewList = healthDAO.selectReviewByGymCode(gymCode);
		double avg = 0;//평균을 저장할 변수
		double sum = 0; //별점 더해서 저장할 변수
		if(reviewList == null || reviewList.size()==0) { //리뷰가 없으면 평균 별점 0으로 세팅
			gymDTO.setAvgScore(0);
		}else { //리뷰가 있다면
			for(ReviewDTO r : reviewList) {
				sum += r.getStarScore();
				avg = sum / reviewList.size();
				avg = Math.round(avg*10)/10.0; //소수점 1번째 까지 반올림해서 출력 
				gymDTO.setAvgScore(avg);
			}
		}
		
		if(gymDTO==null) throw new SQLException("선택한 헬스장을 검색할 수 없습니다.");
		
		return gymDTO;
	}

	/////////////////////////////////////////////////////////////////////////////////////////////////
	
	/**
	 * 리뷰등록
	 * */
	public static int insertReview(ReviewDTO review) throws SQLException {
		int result = healthDAO.insertReview(review);
		
		if(result==0) throw new SQLException("리뷰 등록에 실패했습니다.");
		
		return result;
	}
	
	/**
	 * 헬스장 리뷰 검색(출력)
	 * */
	public static List<ReviewDTO> selectReviewByGymCode(int gymCode) throws SQLException {
		List<ReviewDTO> list = healthDAO.selectReviewByGymCode(gymCode);
		return list;
	}
	
	/**
	 * 리뷰 수정
	 * */
	public static int updateReview(ReviewDTO review) throws SQLException {
		int result = healthDAO.updateReview(review);
		if(result==0) throw new SQLException("리뷰 수정에 실패했습니다.");
		return result;
	}
	
	/**
	 * 리뷰 삭제
	 * */
	public static int deleteReview(int reviewCode, String memberId) throws SQLException {
		int result = healthDAO.deleteReview(reviewCode, memberId);
		
		if(result==0) throw new SQLException("리뷰 삭제에 실패했습니다.");
		return result;
	}
	
	/////////////////////////////////////////////////////////////////////
	
	/**
	 * 이용내역 추가 
	 * 사용자가 헬스장 이용 버튼을 눌렀을 때 등록(호출)됨
	 * */
	public static int insertUseDetail(UseDetailDTO useDetail) throws SQLException {
		int result = healthDAO.insertUseDetail(useDetail);
		return result;
	}
	
	/**
	 * 사용자의 이용내역 검색
	 * */
	public static List<UseDetailDTO> selectUseDetailByKeyword(String keyField, String keyword) throws SQLException {
		healthDAO.checkUseDetailState();
		List<UseDetailDTO> list = healthDAO.selectUseDetailByKeyword(keyField, keyword);
		return list;
	}
	
	/**
	 * 헬스장 이용 신청을 한 사용자 목록 검색
	 * */
	public static List<UseDetailDTO> selectUseDetailByGymCodeState(int gymCode) throws SQLException {
		healthDAO.checkUseDetailState();
		List<UseDetailDTO> list = healthDAO.selectUseDetailByGymCodeState(gymCode);
		return list;
	}
	
	/**
	 * 이용상태 갱신 - 사업자가 헬스장 이용확인
	 * */
	public static int updateUseDetail(int useDetailCode) throws SQLException {
		int result = healthDAO.updateUseDetail(useDetailCode);
		return result;
	}
	
	/*
	 * 이용 내역에서 헬스장 이름으로 출력
	 */
	public static List<UseDetailDTO> selectUseDetailByMemberId(String memberId) throws SQLException {
		List<UseDetailDTO> list = healthDAO.selectUseDetailByMemberId(memberId);
		return list;
	}
	
	public static int  updateBalToUse(String userId, String ceoId, int price) throws SQLException {
		int result = healthDAO.updateBalToUse(userId, ceoId, price);
		return result;
	}
}
