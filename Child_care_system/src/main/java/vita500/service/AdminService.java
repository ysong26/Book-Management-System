package vita500.service;

import java.util.List;

import vita500.domain.AdminVO;

public interface AdminService {
	
	public List<AdminVO> nfc_id_list() throws Exception; //�� ��� ����	
	public void nfc_id_regist(AdminVO adminVO) throws Exception; //nfc_id_regist	

}
