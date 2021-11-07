package co.three.prj.command;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.three.prj.comm.Command;
import co.three.prj.lfNotice.service.LfNoticeService;
import co.three.prj.lfNotice.service.LfNoticeVO;
import co.three.prj.lfNotice.serviceImpl.LfNoticeServiceImpl;

public class LfNoticeInsert implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		//  분실물 습득물 작성글 저장.
		
		LfNoticeService lfnoticeDao = new LfNoticeServiceImpl();
		LfNoticeVO vo = new LfNoticeVO();
		
		vo.setId(request.getParameter("id"));
		vo.setLFnAdress(request.getParameter("LFnAdress"));
		vo.setLFncontent(request.getParameter("LFncontent"));
		vo.setLFnDate(Date.valueOf(request.getParameter("LFnDate")));
		vo.setLFnHit(request.getParameter("LFnHit"));
		vo.setLFnid(request.getParameter("LFnid"));
		vo.setLFnImg(request.getParameter("LFnImg"));
		vo.setLFnObj(request.getParameter("LFnObj"));
		vo.setLFnobjType(request.getParameter("LFnobjType"));
		vo.setLFnStatus(request.getParameter("LFnStatus"));
		vo.setLFTitle(request.getParameter("LFTitle"));
		
		int n = lfnoticeDao.insertLfNotice(vo);
		String viewPage = null;
		if (n != 0) {
			viewPage = "";   // 작성글 등록 성공시 보여줄 화면. // 맞춰서 입력하면 될 것 같음
		} else {
			request.setAttribute("massage", "등록실패");
			viewPage = "lfnotice/lnfnoticeFail";   // 작성글 등록 실패시 보여줄 화면.
		}
		
		return viewPage;
	}

}
