package vita500.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import vita500.domain.MemberVO;
import vita500.persistence.MemberDAO;

@Service
public class MemberServiceImpl implements MemberService {

	@Inject
	private MemberDAO dao;
	
	@Override
	public void regist(MemberVO vo) throws Exception {
		dao.singup(vo);
		}

	@Override
	public MemberVO idCheck(String User_ID) throws Exception {
		return dao.idCheck(User_ID);
	}

	
	

	}


