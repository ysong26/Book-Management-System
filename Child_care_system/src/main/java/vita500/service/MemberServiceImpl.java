package vita500.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import vita500.domain.MemberVO;
import vita500.persistence.MemberDAO;

@Service
public class MemberServiceImpl implements MemberService {

	@Inject
	private MemberDAO dao;
	
	@Override //ȸ������
	public void regist(MemberVO vo) throws Exception {
		dao.singup(vo);
		}

	@Override //�ߺ�üũ
	public MemberVO idCheck(String User_ID) throws Exception {
		return dao.idCheck(User_ID);
	}

	@Override //�α���
	public MemberVO login(MemberVO vo) throws Exception {
		return dao.login(vo);
	}

	@Override //��й�ȣ ����
	public void modify(MemberVO vo) throws Exception {
		dao.modify(vo);
		}

	@Override //ȸ�� Ż��
	public void delete(MemberVO vo) throws Exception {
		dao.delete(vo);
		
		}

	
	
	
	
}


