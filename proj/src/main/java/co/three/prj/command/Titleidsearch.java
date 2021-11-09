package co.three.prj.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.three.prj.comm.Command;
import co.three.prj.lfNotice.LfNoticeService;
import co.three.prj.lfNotice.LfNoticeVO;
import co.three.prj.lfNotice.serviceImpl.LfNoticeServiceImpl;
import co.three.prj.paging.PagingVO;

public class Titleidsearch implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		try {
			// (Before) Doing...
			LfNoticeService lfnNoticeDao = new LfNoticeServiceImpl();
			List<LfNoticeVO> list = new ArrayList<LfNoticeVO>();
			int nowPage =0;
			if(request.getParameter("nowPage") == null) {
				nowPage = 1;
			}else {
				nowPage = Integer.parseInt(request.getParameter("nowPage"));
			}
			
			LfNoticeVO lfnVo = new LfNoticeVO();
			
			
			lfnVo.setSearchType(request.getParameter("searchType"));
			lfnVo.setLostsearch(request.getParameter("lostsearch"));
			
			System.out.println(lfnVo.getSearchType());
			System.out.println(lfnVo.getLostsearch());
			int n = lfnNoticeDao.LfNoticeCount(lfnVo);
			PagingVO vo = new PagingVO(n,nowPage,9);
			
			System.out.println(n);
		
			
			System.out.println(lfnVo.getSearchType());
			System.out.println(lfnVo.getLostsearch());
			
			lfnVo.setStart(vo.getStart());
			lfnVo.setEnd(vo.getEnd());
			
			list = lfnNoticeDao.searchTypeSelect(lfnVo);
			for(LfNoticeVO str: list) {
				System.out.println(str);
			}
			System.out.println(list);
			request.setAttribute("lostNotice", list);
			request.setAttribute("LfNoticeVO", lfnVo);
			request.setAttribute("pagingVO", vo);

			// (After) Doing...
		} catch (Exception e) {
			throw e;
		}
		return "lfnotice/lostNotice";
	}

}
