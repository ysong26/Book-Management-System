package vita500.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import vita500.domain.AdminVO;
import vita500.domain.MemberVO;
import vita500.domain.WifiVO;

@Repository
public class AdminDAOImpl implements AdminDAO {
	
	@Inject
	private SqlSession session;
	
	static String namespace="vita500.mapper.AdminMapper";
	
	@Override
	public List<AdminVO> nfc_id_list() throws Exception {		
		return session.selectList(namespace+".nfc_id_list");
	}

	@Override
	public void nfc_id_regist(AdminVO adminVO) throws Exception {
		session.insert(namespace+".nfc_id_regist", adminVO);
	}

	@Override
	public List<MemberVO> user_list() throws Exception {
		return session.selectList(namespace+".user_list");		
	}

	@Override
	public List<WifiVO> time_list() throws Exception {
		return session.selectList(namespace+".time_list");		
	}

	@Override
	public List<WifiVO> time_chart() throws Exception {
		return session.selectList(namespace+".time_chart");

	}

	@Override
	public List<AdminVO> nfc_id() throws Exception {		
		return session.selectList(namespace+".nfc_id");
	}
	

}
