package vita500.persistence;

import vita500.domain.MemberVO;


public interface MemberDAO {
	
	public void singup(MemberVO vo) throws Exception; //�� �ۼ�
	
	public MemberVO idCheck(String User_ID) throws Exception; //���̵� �ߺ� �˻�
	
	public MemberVO login(MemberVO vo) throws Exception; //�α���
}
