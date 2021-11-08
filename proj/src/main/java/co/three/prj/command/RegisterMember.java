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
		String saveFolder=request.getServletContext().getRealPath("images");
		int n =0;
		MemberVO vo = new MemberVO();
		MemberService memberDao = new MemberServiceImpl();
		try {
			MultipartRequest multipartRequest = new MultipartRequest(request,saveFolder,1024*1024*100,"utf-8",new DefaultFileRenamePolicy());
			
			String fileName = multipartRequest.getFilesystemName("picture");
			
			String original = multipartRequest.getOriginalFileName("picture");

			vo.setId(multipartRequest.getParameter("id"));
			vo.setPassword(multipartRequest.getParameter("password"));
			vo.setName(multipartRequest.getParameter("name"));
			vo.setAddress(multipartRequest.getParameter("address")+" "+multipartRequest.getParameter("detailAddress"));
			vo.setAuthor(multipartRequest.getParameter("author"));		
			vo.setTel(multipartRequest.getParameter("tel"));
			if(fileName==null) {
				int a = (int)Math.floor(Math.random()*10);
				System.out.println(a);
				fileName="flower"+a+".jpg";
			}
			vo.setPicture(fileName);
			n=memberDao.insertMember(vo);
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}


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
