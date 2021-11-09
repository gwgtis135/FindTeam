package co.three.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.three.prj.comm.Command;
import co.three.prj.member.service.MemberService;
import co.three.prj.member.service.MemberVO;
import co.three.prj.member.serviceImpl.MemberServiceImpl;

public class MemberDelete implements Command{

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		//회원 삭제
		MemberService memberDao = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		vo.setId(request.getParameter("id"));
		int n = memberDao.deleteMember(vo);
		System.out.println(n);
		
		String viewPage = null;
		if(n != 0) {
			viewPage = "memberList.do";
		}else {
			request.setAttribute("message", "삭제실패");
			viewPage = "member/memberFail";
		}
		return viewPage;
	}

	

}
