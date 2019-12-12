package vita500.persistence;

import java.util.List;

import vita500.domain.BoardVO;
import vita500.domain.Criteria;
import vita500.domain.SearchCriteria;

public interface BoardDAO {
	
	public void create(BoardVO vo) throws Exception; //�� �ۼ�
	public BoardVO read(Integer board_No) throws Exception;  //�� �б�
	public void update(BoardVO vo) throws Exception;//�� ������Ʈ
	public void delete(Integer board_No) throws Exception;//�� ����
	public List<BoardVO> listALL() throws Exception; //��ü�� ����
	public List<BoardVO> listCriteria(Criteria cri) throws Exception; //Ư�� ������ ��� ����
	public int countPaging(Criteria cri) throws Exception;//��ü ���� ��ȯ
	public List<BoardVO> listSearch(SearchCriteria cri) throws Exception; //�˻� �� ��Ϻ���
	public int listSearchCount (SearchCriteria cri) throws Exception; //�˻��� ��ü�� ���� �˱�

}
