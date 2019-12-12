package vita500.persistence;

import java.util.List;

import vita500.domain.BoardVO;
import vita500.domain.Criteria;
import vita500.domain.SearchCriteria;

public interface BoardDAO {
	
	public void create(BoardVO vo) throws Exception; //글 작성
	public BoardVO read(Integer board_No) throws Exception;  //글 읽기
	public void update(BoardVO vo) throws Exception;//글 업데이트
	public void delete(Integer board_No) throws Exception;//글 삭제
	public List<BoardVO> listALL() throws Exception; //전체글 보기
	public List<BoardVO> listCriteria(Criteria cri) throws Exception; //특정 페이지 목록 보기
	public int countPaging(Criteria cri) throws Exception;//전체 개수 반환
	public List<BoardVO> listSearch(SearchCriteria cri) throws Exception; //검색 글 목록보기
	public int listSearchCount (SearchCriteria cri) throws Exception; //검색된 전체글 개수 알기

}
