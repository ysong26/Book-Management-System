package vita500.service;


import vita500.domain.MemberVO;

public interface MemberService {
	//ȸ������
	public void regist(MemberVO vo) throws Exception; 
	
	//���̵� �ߺ�Ȯ��
	public MemberVO idCheck(String user_ID) throws Exception;
	
	
	
	
	
}
