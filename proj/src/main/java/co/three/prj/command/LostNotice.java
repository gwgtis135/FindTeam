package co.three.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.three.prj.comm.Command;
import co.three.prj.lfNotice.LfNoticeService;
import co.three.prj.lfNotice.serviceImpl.LfNoticeServiceImpl;





public class LostNotice implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		
		// 분실물 게시판 출력하기 
		LfNoticeService lfnNoticeDao = new LfNoticeServiceImpl();
		request.setAttribute("lostNotice", lfnNoticeDao.LfNoticeSelectList());
		
		

		return "lfnotice/lostNotice";
	}

}
