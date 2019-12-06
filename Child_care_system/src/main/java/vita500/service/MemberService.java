package vita500.service;


import vita500.domain.MemberVO;

public interface MemberService {
	//회원가입
	public void regist(MemberVO vo) throws Exception; 
	
	//아이디 중복확인
	public MemberVO idCheck(String User_ID) throws Exception;
	
	//로그인
	public MemberVO login(MemberVO vo) throws Exception;
	
	
	
}
