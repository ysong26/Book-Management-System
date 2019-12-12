package vita500.service;


import vita500.domain.MemberVO;

public interface MemberService {
	//회원가입
	public void regist(MemberVO vo) throws Exception; 
	
	//아이디 중복확인
	public MemberVO idCheck(String User_ID) throws Exception;
	
	//로그인
	public MemberVO login(MemberVO vo) throws Exception;
	
	//비밀번호 변경
	public void modify(MemberVO vo) throws Exception;
	
	//회원 탈퇴
	public void delete(MemberVO vo) throws Exception;
	

}
