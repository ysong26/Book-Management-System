package vita500.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import vita500.domain.AdminVO;

@Repository
public class AdminDAOImpl implements AdminDAO {
	
	@Inject
	private SqlSession session;
	
	static String namespace="org.zerock.mapper.AdminMapper";

	@Override
	public void nfc_id_regist(AdminVO adminVO) throws Exception {
		session.insert(namespace+".nfc_id_regist", adminVO);	

	}

}
