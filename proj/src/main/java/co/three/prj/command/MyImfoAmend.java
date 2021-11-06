package co.three.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.three.prj.comm.Command;
import co.three.prj.member.service.MemberService;
import co.three.prj.member.service.MemberVO;
import co.three.prj.member.serviceImpl.MemberServiceImpl;

public class MyImfoAmend implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		MemberVO vo = new MemberVO();
		MemberService memberDao = new MemberServiceImpl();
		vo.setId((String) session.getAttribute("id"));
		vo=memberDao.selectMember(vo); 
		request.setAttribute("member", vo);
		return "member/myImfoAmend";
	}

}
