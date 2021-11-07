package co.three.prj.lfNotice.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.three.prj.comm.DataSource;
import co.three.prj.lfNotice.service.LfNoticeMapper;
import co.three.prj.lfNotice.service.LfNoticeService;
import co.three.prj.lfNotice.service.LfNoticeVO;

public class LfNoticeServiceImpl implements LfNoticeService {

	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private LfNoticeMapper map = sqlSession.getMapper(LfNoticeMapper.class);
	
	@Override
	public List<LfNoticeVO> selectLfNoticeList() {
		
		return map.selectLfNoticeList();
	}

	@Override
	public LfNoticeVO selectLfNotice(LfNoticeVO vo) {
		
		return map.selectLfNotice(vo);
	}

	@Override
	public int insertLfNotice(LfNoticeVO vo) {
		
		return map.insertLfNotice(vo);
	}

	@Override
	public int deleteLfNotice(LfNoticeVO vo) {
		
		return map.deleteLfNotice(vo);
	}

	@Override
	public int updateLfNotice(LfNoticeVO vo) {
	
		return map.updateLfNotice(vo);
	}

}
