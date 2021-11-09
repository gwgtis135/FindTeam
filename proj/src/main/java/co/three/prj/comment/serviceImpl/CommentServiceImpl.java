package co.three.prj.comment.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.three.prj.comm.DataSource;
import co.three.prj.comment.service.CommentMapper;
import co.three.prj.comment.service.CommentService;
import co.three.prj.comment.service.CommentVO;

public class CommentServiceImpl implements CommentService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private CommentMapper map = sqlSession.getMapper(CommentMapper.class);
	@Override
	public List<CommentVO> CommentSelectList(CommentVO vo) {
		// TODO Auto-generated method stub
		return map.CommentSelectList(vo);
	}
	@Override
	public CommentVO CommentSelect(CommentVO vo) {
		// TODO Auto-generated method stub
		return map.CommentSelect(vo);
	}
	@Override
	public int CommentInsert(CommentVO vo) {
		// TODO Auto-generated method stub
		return map.CommentInsert(vo);
	}
	@Override
	public int CommentDelete(CommentVO vo) {
		// TODO Auto-generated method stub
		return map.CommentDelete(vo);
	}
	@Override
	public int CommentUpdate(CommentVO vo) {
		// TODO Auto-generated method stub
		return map.CommentUpdate(vo);
	}
	@Override
	public List<CommentVO> CommentCSelect(CommentVO vo) {
		// TODO Auto-generated method stub
		return map.CommentCSelect(vo);
	}

	}
	




