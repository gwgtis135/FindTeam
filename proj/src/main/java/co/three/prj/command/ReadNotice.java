package co.three.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.three.prj.comm.Command;
import co.three.prj.member.service.MemberVO;
import co.three.prj.notice.service.NoticeService;
import co.three.prj.notice.service.NoticeVO;
import co.three.prj.notice.serviceImpl.NoticeServiceImpl;

public class ReadNotice implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		MemberVO mvo = new MemberVO();
		mvo.setId((String)session.getAttribute("id"));
		mvo.setAuthor((String)session.getAttribute("author"));
		NoticeService noticeDao =new NoticeServiceImpl();
		NoticeVO vo= new NoticeVO();
		vo.setNnid((String)request.getParameter("nnid"));
		vo=noticeDao.noticeSelect(vo);
		request.setAttribute("member", mvo);
		request.setAttribute("notice", vo);
		return "nnotice/readNotice";
	}

}
