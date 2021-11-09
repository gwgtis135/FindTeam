package co.three.prj.command;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.three.prj.comm.Command;
import co.three.prj.lfNotice.LfNoticeService;
import co.three.prj.lfNotice.LfNoticeVO;
import co.three.prj.lfNotice.serviceImpl.LfNoticeServiceImpl;

public class LfNoticeInsert implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		// 분실물 입력 저장.
		
		LfNoticeService lfnotoceDao = new LfNoticeServiceImpl();
		LfNoticeVO vo = new LfNoticeVO();
		
		// 필요한 값만
		vo.setLFnTitle(request.getParameter("lFnTitle"));  // 제목.
		vo.setLFnAddress(request.getParameter("lFnAddress")); // 주소.
		vo.setLFnObj(request.getParameter("lFnObj")); // 물건 이름.
		vo.setLFnDate(Date.valueOf(request.getParameter("lFnDate"))); // 날짜.
		vo.setLFnStatus(request.getParameter("lFnStatus")); //분실 습득 상태.
		vo.setLFnobjType(request.getParameter("lFnobjType")); // 물건타입.
		vo.setLFncontent(request.getParameter("lFncontent")); // 내용.
		
		int n = lfnotoceDao.LfNoticeInsert(vo);
		String viewPage = null;
		if (n != 0) {
			viewPage = "lostNotice.do";   // 등록 성공시 분실물 게시판 화면 보여주기.
		} else {
			request.setAttribute("message", "등록이 되지 않았습니다.");
			viewPage = "lfnotice/lfnoticeFail";  // 등록 실패시 보여줄 화면.
		}
		
		return viewPage;
	}

}
