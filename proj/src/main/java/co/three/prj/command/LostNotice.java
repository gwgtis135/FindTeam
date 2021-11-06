package co.three.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.three.prj.comm.Command;





public class LostNotice implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {

		/*
		 * // 분실물 게시판 출력하기 LfNoticeService lfnNoticeDao = new LfNoticeServiceImpl();
		 * request.setAttribute("lostNotice", lfnNoticeDao.LfNoticeSelectList());
		 */
		

		return "lfnotice/lostNotice";

	}

}
