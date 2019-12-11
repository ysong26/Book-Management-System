package vita500.service;

import java.util.List;

import vita500.domain.AdminVO;
import vita500.domain.MemberVO;
import vita500.domain.WifiVO;

public interface AdminService {
	
	public List<AdminVO> nfc_id_list() throws Exception; //�� ��� ����	
	
	public void nfc_id_regist(AdminVO adminVO) throws Exception; //nfc_id_regist
	
	public List<MemberVO> user_list() throws Exception; //���� ��� ����	
	
	public List<WifiVO> time_list() throws Exception; //�ð� ��� ����
	
	public List<WifiVO> time_chart() throws Exception; //�ð� ��Ʈ ����
	
	public List<AdminVO> nfc_id() throws Exception; // nfc_id

}
