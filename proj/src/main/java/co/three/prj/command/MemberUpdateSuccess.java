package co.three.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.three.prj.comm.Command;
import co.three.prj.member.service.MemberService;
import co.three.prj.member.service.MemberVO;
import co.three.prj.member.serviceImpl.MemberServiceImpl;

public class MemberUpdateSuccess implements Command{

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		// 관리자 -> 회원 수정완료
		String saveFolder=request.getServletContext().getRealPath("images");
		int n = 0;
		System.out.println(n);
		MemberVO vo = new MemberVO();
		MemberService memberDao = new MemberServiceImpl();
		try {
			MultipartRequest multipartRequest = new MultipartRequest(request,saveFolder,1024*1024*100,"utf-8",new DefaultFileRenamePolicy());
			
			String fileName = multipartRequest.getFilesystemName("picture");
			
			String original = multipartRequest.getOriginalFileName("picture");
		
			vo.setId(multipartRequest.getParameter("id"));
			vo=memberDao.selectMember(vo);
			
			vo.setName(multipartRequest.getParameter("name"));
			vo.setAddress(multipartRequest.getParameter("address")+" "+multipartRequest.getParameter("detailAddress"));
			vo.setTel(multipartRequest.getParameter("tel"));
			if(fileName==null) {				
			}else {
			vo.setPicture(fileName);}
			n=memberDao.updateMemberSuccess(vo);
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		String viewPage = null;
		if( n != 0) {
			viewPage = "memberList.do";
		}else {
			request.setAttribute("message", "삭제실패");
			viewPage = "member/memberFail";
		}
		return viewPage;
	}
	
}
