package vita500.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import vita500.domain.AdminVO;
import vita500.persistence.AdminDAO;

@Service
public class AdminServiceImpl implements AdminService {

	@Inject
	private AdminDAO adminDAO;
	
	@Override
	public List<AdminVO> nfc_id_list() throws Exception {
		return adminDAO.nfc_id_list();
	}	
	
	
	@Override
	public void nfc_id_regist(AdminVO adminVO) throws Exception {
		adminDAO.nfc_id_regist(adminVO);
	}

	
}
