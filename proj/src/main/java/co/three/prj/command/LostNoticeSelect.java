package co.three.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.three.prj.comm.Command;
import co.three.prj.lfNotice.LfNoticeService;
import co.three.prj.lfNotice.LfNoticeVO;
import co.three.prj.lfNotice.serviceImpl.LfNoticeServiceImpl;

public class LostNoticeSelect implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		// 분실물 상세 내용 페이지.
		
		LfNoticeService lfnoticeDao = new LfNoticeServiceImpl();
		LfNoticeVO vo = new LfNoticeVO();
		
		vo.setLFnid(request.getParameter("lFnid"));
		vo = lfnoticeDao.LfNoticeSelect(vo);
		
		request.setAttribute("lfnotice", vo);
		return "lfnotice/lostNoticeSelect";
	}

}
