package vita500.persistence;

import vita500.domain.MemberVO;


public interface MemberDAO {
	
	public void singup(MemberVO vo) throws Exception; //�� �ۼ�
	public MemberVO check(String user_ID) throws Exception; //���̵� �ߺ� �˻�
}
