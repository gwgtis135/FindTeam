package co.three.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.three.prj.comm.Command;
import co.three.prj.member.service.MemberService;
import co.three.prj.member.service.MemberVO;
import co.three.prj.member.serviceImpl.MemberServiceImpl;

public class RegisterMember implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		//멤버 가입처리
		String saveFolder="c:\\upload";
		int n =0;
		MemberVO vo = new MemberVO();
		MemberService memberDao = new MemberServiceImpl();
		try {
			MultipartRequest multipartRequest =
					new MultipartRequest(request,saveFolder,1024*1024*100,"UTF-8",
							new DefaultFileRenamePolicy()); 
		}catch(Exception e) {
			e.printStackTrace();
		}
		vo.setId(request.getParameter("id"));
		vo.setPassword(request.getParameter("password"));
		vo.setName(request.getParameter("name"));
		vo.setAddress(request.getParameter("address")+" "+request.getParameter("detailAddress"));
		vo.setAuthor(request.getParameter("author"));		
		vo.setTel(request.getParameter("tel"));
		n=memberDao.insertMember(vo);

		String viewPage = null;
		if(n!=0) {
			viewPage="member/memberAccept.jsp"; 
		}else {
			request.setAttribute("message", "회원가입이 정상적으로 처리되지 못했습니다.");
			viewPage="member/memberError";
		}
		
		return viewPage;
	}

}
