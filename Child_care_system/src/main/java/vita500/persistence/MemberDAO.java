package vita500.persistence;

import vita500.domain.MemberVO;


public interface MemberDAO {
	
	public void singup(MemberVO vo) throws Exception; //회원가입
	
	public MemberVO idCheck(String User_ID) throws Exception; //아이디 중복 검사
	
	public MemberVO login(MemberVO vo) throws Exception; //로그인
}
