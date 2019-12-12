package vita500.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import vita500.domain.MemberVO;
import vita500.persistence.MemberDAO;

@Service
public class MemberServiceImpl implements MemberService {

	@Inject
	private MemberDAO dao;
	
	@Override //회원가입
	public void regist(MemberVO vo) throws Exception {
		dao.singup(vo);
		}

	@Override //중복체크
	public MemberVO idCheck(String User_ID) throws Exception {
		return dao.idCheck(User_ID);
	}

	@Override //로그인
	public MemberVO login(MemberVO vo) throws Exception {
		return dao.login(vo);
	}

	@Override
	public void modify(MemberVO vo) throws Exception {
		dao.modify(vo);
		}

	}


