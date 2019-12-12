package vita500.persistence;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import vita500.domain.MemberVO;


@Repository
public class MemberDAOImpl implements MemberDAO {

	@Inject
	private SqlSession session;
	
	private static String namespace="org.zerock.mapper.MemberMapper";
	
	@Override //ȸ������
	public void singup(MemberVO vo) throws Exception {
		session.insert(namespace+".singup", vo);
				}

	@Override //�ߺ�Ȯ��
	public MemberVO idCheck(String User_ID) throws Exception {
		return session.selectOne(namespace+".idCheck", User_ID);
	}

	@Override //�α���
	public MemberVO login(MemberVO vo) throws Exception {
		return session.selectOne(namespace+ ".login", vo);
	}

	@Override //��й�ȣ ����
	public void modify(MemberVO vo) throws Exception {
		session.update(namespace + ".modify", vo);
	}




	

	  }


