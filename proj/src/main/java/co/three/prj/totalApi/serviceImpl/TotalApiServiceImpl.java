package co.three.prj.totalApi.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.three.prj.comm.DataSource;
import co.three.prj.totalApi.service.TotalApiService;
import co.three.prj.totalApi.service.TotalApiVO;

public class TotalApiServiceImpl implements TotalApiService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private TotalApiService map = sqlSession.getMapper(TotalApiService.class);

	@Override
	public int insertTotalApi(TotalApiVO vo) {
		
		return map.insertTotalApi(vo); //~건
	}

	@Override
	public List<TotalApiVO> selectTotalList(TotalApiVO vo) {
		
		return map.selectTotalList(vo);
	}

	@Override
	public int deleteTotalApi() {
		return map.deleteTotalApi();
	}


	@Override
	public List<TotalApiVO> selectSearchList(TotalApiVO vo) {
		
		return map.selectSearchList(vo);
	}

	@Override
	public int searchCount(TotalApiVO vo) {
		
		return map.searchCount(vo);
	}

	@Override
	public TotalApiVO selectTotalDetail(TotalApiVO vo) {
		
		return map.selectTotalDetail(vo);
	}

	


	
}
