package vita500.service;

import java.util.List;

import vita500.domain.BoardVO;
import vita500.domain.Criteria;
import vita500.domain.SearchCriteria;

public interface BoardService {
	public void regist(BoardVO vo) throws Exception; //�۵��
	public BoardVO read(Integer Board_No) throws Exception; //���б� 
	public void modify(BoardVO vo) throws Exception;//�ۼ���
	public void remove(Integer Board_No) throws Exception;//����
	public List<BoardVO> listAll() throws Exception; //�۸�Ϻ���
	public List<BoardVO> listCriteria(Criteria cri) throws Exception; //�۸�Ϻ���
	public int listCountCriteria (Criteria cri) throws Exception; //��ü �� ���� �˱�
	public List<BoardVO> listSearchCriteria(SearchCriteria cri) throws Exception; //�˻� �۸�Ϻ���
	public int listSearchCount(SearchCriteria cri) throws Exception; //�˻� ��ü �� ���� �˱�
	


	
}
