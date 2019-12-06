package vita500.persistence;

import vita500.domain.MemberVO;


public interface MemberDAO {
	
	public void singup(MemberVO vo) throws Exception; //글 작성
	public MemberVO idCheck(String user_ID) throws Exception; //아이디 중복 검사
}
