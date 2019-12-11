package vita500.service;

import java.util.List;

import vita500.domain.AdminVO;
import vita500.domain.MemberVO;
import vita500.domain.WifiVO;

public interface AdminService {
	
	public List<AdminVO> nfc_id_list() throws Exception; //글 목록 보기	
	
	public void nfc_id_regist(AdminVO adminVO) throws Exception; //nfc_id_regist
	
	public List<MemberVO> user_list() throws Exception; //유저 목록 보기	
	
	public List<WifiVO> time_list() throws Exception; //시간 목록 보기
	
	public List<WifiVO> time_chart() throws Exception; //시간 차트 보기
	
	public List<AdminVO> nfc_id() throws Exception; // nfc_id

}
