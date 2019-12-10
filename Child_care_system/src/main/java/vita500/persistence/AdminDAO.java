package vita500.persistence;

import java.util.List;

import vita500.domain.AdminVO;

public interface AdminDAO {
	
	public List<AdminVO> nfc_id_list() throws Exception; //글 목록 보기
	public void nfc_id_regist(AdminVO adminVO) throws Exception; //nfc_id_regist

}
