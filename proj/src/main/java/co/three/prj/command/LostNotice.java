package co.three.prj.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.three.prj.comm.Command;
import co.three.prj.lfNotice.LfNoticeService;
import co.three.prj.lfNotice.LfNoticeVO;
import co.three.prj.lfNotice.serviceImpl.LfNoticeServiceImpl;

public class LostNotice implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {

		try {
			// (Before) Doing...
			LfNoticeService lfnNoticeDao = new LfNoticeServiceImpl();
			List<LfNoticeVO> list = new ArrayList<LfNoticeVO>();
			int nowPage =0;
			if(request.getParameter("nowPage") == null) {
				nowPage = 1;
			}else {
				nowPage = Integer.parseInt(request.getParameter("nowPage"));
			}
			
			LfNoticeVO vo = new LfNoticeVO(39,nowPage,9);
			
			
			
			list = lfnNoticeDao.LfNoticeSelectList(vo);
			request.setAttribute("lostNotice", list);
			request.setAttribute("LfNoticeVO", vo);

			// (After) Doing...
		} catch (Exception e) {
			throw e;
		}

		/*
		 * // 분실물 게시판 출력하기 LfNoticeService lfnNoticeDao = new LfNoticeServiceImpl();
		 * request.setAttribute("lostNotice", lfnNoticeDao.LfNoticeSelectList());
		 */

		return "lfnotice/lostNotice";

	}

}
