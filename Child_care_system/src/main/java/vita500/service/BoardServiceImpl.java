package vita500.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import vita500.domain.BoardVO;
import vita500.domain.Criteria;
import vita500.domain.SearchCriteria;
import vita500.persistence.BoardDAO;

@Service
public class BoardServiceImpl implements BoardService {

	@Inject
	private BoardDAO dao;
	
	@Override
	public void regist(BoardVO vo) throws Exception {
		dao.create(vo);
	}

	@Override
	public BoardVO read(Integer board_No) throws Exception {
		return dao.read(board_No);
	}

	@Override
	public void modify(BoardVO vo) throws Exception {
		dao.update(vo);
	}

	@Override
	public void remove(Integer board_No) throws Exception {
		dao.delete(board_No);
	}

	@Override
	public List<BoardVO> listAll() throws Exception {	//게시판 목록 읽어오기
		return dao.listALL();
	}
	
	@Override
	public List<BoardVO> listCriteria(Criteria cri) throws Exception {
		return dao.listCriteria(cri);
	}

	@Override
	public int listCountCriteria(Criteria cri) throws Exception {
		return dao.countPaging(cri);
	}

	@Override
	public List<BoardVO> listSearchCriteria(SearchCriteria cri) throws Exception {
		return dao.listSearch(cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return dao.listSearchCount(cri);
	}

}
