package vita500.persistence;

import java.util.List;

import vita500.domain.AdminVO;
import vita500.domain.MemberVO;

public interface AdminDAO {
	
	public List<AdminVO> nfc_id_list() throws Exception; //�� ��� ����
	public void nfc_id_regist(AdminVO adminVO) throws Exception; //nfc_id_regist
	
	public List<MemberVO> user_list() throws Exception; //���� ��� ����	

}
