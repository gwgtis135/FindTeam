package co.three.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.three.prj.comm.Command;
import co.three.prj.member.service.MemberService;
import co.three.prj.member.service.MemberVO;
import co.three.prj.member.serviceImpl.MemberServiceImpl;

public class ImfoAmend implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		MemberVO vo = new MemberVO();
		MemberService memberDao = new MemberServiceImpl();
		vo.setId(request.getParameter("id"));
		vo.setPassword(request.getParameter("password"));
		vo.setName(request.getParameter("name"));
		vo.setTel(request.getParameter("tel"));
		vo.setAddress(request.getParameter("address"));
		vo.setAuthor(request.getParameter("author"));
		memberDao.updateMember(vo);
		return "myManage.do";
	}

}
