package co.three.prj.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.three.prj.comm.Command;
import co.three.prj.comment.service.CommentService;
import co.three.prj.comment.service.CommentVO;
import co.three.prj.comment.serviceImpl.CommentServiceImpl;
import co.three.prj.lfNotice.LfNoticeService;
import co.three.prj.lfNotice.LfNoticeVO;
import co.three.prj.lfNotice.serviceImpl.LfNoticeServiceImpl;

public class LostNoticeSelect implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		// 분실물 상세 내용 페이지.
		List<CommentVO> list = new ArrayList<CommentVO>();
		LfNoticeService lfnoticeDao = new LfNoticeServiceImpl();
		LfNoticeVO vo = new LfNoticeVO();
		CommentVO cvo = new CommentVO();
		
		CommentService commentDao = new CommentServiceImpl();
		cvo.setCboard(Integer.valueOf(request.getParameter("lfnid")));
		list=commentDao.CommentCSelect(cvo);
		request.setAttribute("comments", list);
		vo.setLFnid(request.getParameter("lfnid"));
		vo = lfnoticeDao.LfNoticeSelect(vo);

		
		request.setAttribute("lfnotice", vo);
		return "lfnotice/lostNoticeSelect";
	}

}
