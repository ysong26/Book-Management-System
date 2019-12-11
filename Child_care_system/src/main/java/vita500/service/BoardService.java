package vita500.service;

import java.util.List;

import vita500.domain.BoardVO;
import vita500.domain.Criteria;
import vita500.domain.SearchCriteria;

public interface BoardService {
	public void regist(BoardVO vo) throws Exception; //글등록
	public BoardVO read(Integer Board_No) throws Exception; //글읽기 
	public void modify(BoardVO vo) throws Exception;//글수정
	public void remove(Integer Board_No) throws Exception;//삭제
	public List<BoardVO> listAll() throws Exception; //글목록보기
	public List<BoardVO> listCriteria(Criteria cri) throws Exception; //글목록보기
	public int listCountCriteria (Criteria cri) throws Exception; //전체 글 개수 알기
	public List<BoardVO> listSearchCriteria(SearchCriteria cri) throws Exception; //검색 글목록보기
	public int listSearchCount(SearchCriteria cri) throws Exception; //검색 전체 글 개수 알기
	


	
}
