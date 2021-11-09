
package co.three.prj.web;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.three.prj.comm.Command;
import co.three.prj.command.AdminMember;
import co.three.prj.command.AjaxMemberList;
import co.three.prj.command.AjaxNoticeList;
import co.three.prj.command.AjaxTest;
import co.three.prj.command.Charts;
import co.three.prj.command.CommentDelete;
import co.three.prj.command.CommentInsert;
import co.three.prj.command.CommentUpdate;
import co.three.prj.command.FoundNotice;
import co.three.prj.command.HomeCommand;
import co.three.prj.command.ImfoAmend;
import co.three.prj.command.IntroSelf;
import co.three.prj.command.IntroSite;
import co.three.prj.command.LNForm;
import co.three.prj.command.Logout;
import co.three.prj.command.LostNotice;
import co.three.prj.command.LostNoticeSelect;
import co.three.prj.command.MemberDelete;
import co.three.prj.command.MemberList;
import co.three.prj.command.MemberLogin;
import co.three.prj.command.MemberLoginForm;
import co.three.prj.command.MemberUpdate;
import co.three.prj.command.MemberUpdateSuccess;
import co.three.prj.command.MyImfoAmend;
import co.three.prj.command.MyManage;
import co.three.prj.command.NoticeMain;
import co.three.prj.command.ReadNotice;
import co.three.prj.command.RegisterForm;
import co.three.prj.command.RegisterMember;
import co.three.prj.command.SearchPw;
import co.three.prj.command.Test;

import co.three.prj.command.TotalApi;
import co.three.prj.command.TotalApiDetail;
import co.three.prj.command.TotalApiSearch;


@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HashMap<String, Command> map = new HashMap<String, Command>();

	public FrontController() {
		super();

	}

	public void init(ServletConfig config) throws ServletException {
		// 실제 수행할 명령들 넣어두는 곳
		map.put("/home.do", new HomeCommand()); // 첫 페이지 호출
		map.put("/test.do", new Test()); // .do 호출 테스트

		map.put("/logout.do", new Logout()); //로그아웃
		map.put("/memberLoginForm.do", new MemberLoginForm()); //로그인 폼 호출
		map.put("/memberLogin.do", new MemberLogin()); //로그인 처리
		

		map.put("/charts.do", new Charts()); //차트 보여주기
		map.put("/ajaxTest.do", new AjaxTest()); //ajax test form
		map.put("/ajaxMemberList.do", new AjaxMemberList()); // 실제 처리

        map.put("/lostNotice.do", new LostNotice());	//분실물 페이지   
        map.put("/foundNotice.do", new FoundNotice()); // 습득물 페이지

		map.put("/lostNoticeSelect.do", new LostNoticeSelect()); // 분실물 상세페이지.
		map.put("/lNForm.do", new LNForm());  // 분실물 습득물 입력폼. 
		//map.put("/LfNoticeInsert.do", new LfNoticeInsert());  // 분실물 입력 처리.

		
		map.put("/registerForm.do", new RegisterForm()); //회원 가입 폼 호출
		map.put("/registerMember.do", new RegisterMember()); // 회원 가입

		map.put("/searchPw.do", new SearchPw()); //비밀번호 찾기
		map.put("/myManage.do", new MyManage()); // 내정보 관리
		map.put("/myImfoAmend.do", new MyImfoAmend()); //내정보 수정
		map.put("/imfoAmend.do", new ImfoAmend()); //수정완료시
		
		map.put("/introSite.do", new IntroSite()); //오시는길
		map.put("/introSelf.do", new IntroSelf());//인사말
		map.put("/memberList.do", new MemberList()); //멤버 목록 (관리자)
		map.put("/memberDelete.do", new MemberDelete()); //회원 삭제(관리자)
		map.put("/memberUpdate.do", new MemberUpdate()); //회원 수정(관리자)
		map.put("/memberUpdateSuccess.do", new MemberUpdateSuccess());
		map.put("/noticeMain.do", new NoticeMain()); //공지메인
		map.put("/ajaxNoticeList.do", new AjaxNoticeList()); //공지 리스트
		map.put("/readNotice.do", new ReadNotice());
    
    map.put("/totalApi.do", new TotalApi()); // 유실물 통합 페이지.
		map.put("/totalApiSearch.do", new TotalApiSearch()); // 유실물 통합 페이지(키워드검색).
		map.put("/totalApiDetail.do", new TotalApiDetail()); // 유실물 통합 상세페이지.
		
		
		map.put("/commentInsert.do", new CommentInsert());
		map.put("/commentDelete.do", new CommentDelete());		
		map.put("/commentUpdate.do", new CommentUpdate());
	
	
	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String uri = request.getRequestURI();
		String contextPath = request.getContextPath();
		String page = uri.substring(contextPath.length());

		Command command = map.get(page);
		String viewPage = command.run(request, response);
		if (viewPage != null && !viewPage.endsWith(".do")) {
			if (viewPage.startsWith("ajax:")) { // ajax 리턴
				response.setContentType("text/plain; charset=utf-8");
				response.getWriter().append(viewPage.substring(5));

				return;
			}
			if (viewPage.endsWith(".jsp")) { // 타일즈 적용 안할때
				viewPage = "WEB-INF/views/" + viewPage;
			} else {
				viewPage = viewPage + ".tiles"; // 타일즈 적용
			}

		}

		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);

	}

}
