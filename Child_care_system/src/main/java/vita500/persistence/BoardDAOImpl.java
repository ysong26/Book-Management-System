package vita500.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import vita500.domain.BoardVO;
import vita500.domain.Criteria;
import vita500.domain.SearchCriteria;

@Repository
public class BoardDAOImpl implements BoardDAO {

	@Inject
	private SqlSession session;
	
	private static String namespace="org.zerock.mapper.BoardMapper";
	
	@Override
	public void create(BoardVO vo) throws Exception {
		session.insert(namespace+".create", vo);
		
	}

	@Override
	public BoardVO read(Integer bno) throws Exception {
		return session.selectOne(namespace+".read", bno);
	}

	@Override
	public void update(BoardVO vo) throws Exception {
		session.update(namespace+".update",vo);

	}

	@Override
	public void delete(Integer bno) throws Exception {
		session.delete(namespace+".delete",bno);

	}

	@Override
	public List<BoardVO> listALL() throws Exception {		//�Խ��� �� ��� �о����
		return session.selectList(namespace+".listAll");
	}

	@Override
	public List<BoardVO> listCriteria(Criteria cri) throws Exception {
//		//1page -> 0
//		//2page -> 10
//		//3page -> 20
//		if(page <=0) {
//			page=1;
//		}
//		page = (page-1)*10;
		return session.selectList(namespace+".listPage",cri);
	}
	
	@Override
	public int countPaging(Criteria cri) throws Exception {
		return session.selectOne(namespace+".countPaging",cri);
	}

	@Override
	public List<BoardVO> listSearch(SearchCriteria cri) throws Exception {
	    return session.selectList(namespace + ".listSearch", cri);
	  }

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return session.selectOne(namespace + ".listSearchCount", cri);
	  }

}
