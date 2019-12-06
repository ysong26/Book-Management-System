package vita500.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import vita500.domain.AdminVO;
import vita500.persistence.AdminDAO;

@Service
public class AdminServiceImpl implements AdminService {

	@Inject
	private AdminDAO adminDAO;
	
	@Override
	public void nfc_id_regist(AdminVO adminVO) throws Exception {
		adminDAO.nfc_id_regist(adminVO);

	}

}
