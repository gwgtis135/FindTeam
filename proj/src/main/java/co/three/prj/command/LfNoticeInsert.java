package co.three.prj.command;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.three.prj.comm.Command;
import co.three.prj.lfNotice.LfNoticeService;
import co.three.prj.lfNotice.LfNoticeVO;
import co.three.prj.lfNotice.serviceImpl.LfNoticeServiceImpl;

public class LfNoticeInsert implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		// 분실물 입력 저장.
		// session 애 있는 id 값 가져와서 
	
	//	HttpSession session = request.getSession();
		
		String saveFolder="c:\\upload"; 
		
		LfNoticeService lfnotoceDao = new LfNoticeServiceImpl();
		LfNoticeVO vo = new LfNoticeVO();
		
		try {
			MultipartRequest multipartRequest =
					new MultipartRequest(request,saveFolder,1024*1024*100,"UTF-8",
							new DefaultFileRenamePolicy()); 
			
			String fileName = multipartRequest.getFilesystemName(saveFolder)
			
			vo.setlFnTitle(multipartRequest.getParameter("lfntitle"));  // 제목.
			vo.setlFnAddress(multipartRequest.getParameter("lfnaddress")); // 주소.
			vo.setlFnObj(multipartRequest.getParameter("lfnobj")); // 물건 이름.
			vo.setlFnDate(multipartRequest.getParameter("lfnDate")); // 날짜.
			vo.setlFnStatus(multipartRequest.getParameter("lFnStatus")); //분실 습득 상태.
			vo.setlFnobjType(multipartRequest.getParameter("lFnobjType")); // 물건타입.
			vo.setlFncontent(multipartRequest.getParameter("lFncontent")); // 내용.
			vo.setlFnImg(multipartRequest.getParameter("lFnimg")); // 물건사진.
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		System.out.println(request.getParameter("lfntitle")); // 값은 제대로 잘 들어오는지 확인.
		
		//vo.setId((String) session.getAttribute("id")); // session에 있는 id 값을 가져온다.
		//request.setAttribute("lostNotices", lfnotoceDao.LfNoticeSelect(vo));
		
		
		
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
