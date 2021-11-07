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
		
		// 분실물 게시판 출력하기 
		LfNoticeService lfnNoticeDao = new LfNoticeServiceImpl();
		List<LfNoticeVO> list = new ArrayList<LfNoticeVO>();
		list = lfnNoticeDao.LfNoticeSelectList();
		for(LfNoticeVO str : list) {
			System.out.println(str);
		}
		request.setAttribute("lostNotice", list);
		
		
		

		/*
		 * // 분실물 게시판 출력하기 LfNoticeService lfnNoticeDao = new LfNoticeServiceImpl();
		 * request.setAttribute("lostNotice", lfnNoticeDao.LfNoticeSelectList());
		 */
		

		return "lfnotice/lostNotice";

	}

}
