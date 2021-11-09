package co.three.prj.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.three.prj.comm.Command;
import co.three.prj.member.service.MemberService;
import co.three.prj.member.service.MemberVO;
import co.three.prj.member.serviceImpl.MemberServiceImpl;

public class AdminMember implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		MemberService dao = new MemberServiceImpl();
		List<MemberVO> list = new ArrayList<MemberVO>();
		list = dao.selectMemberList();
		
		request.setAttribute("members", list); //넘어온 값을 보여줄 페이지에 전달하기 위해
		
		return "member/memberList";
	}

}
