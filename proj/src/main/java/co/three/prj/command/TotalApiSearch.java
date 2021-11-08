package co.three.prj.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.three.prj.comm.Command;
import co.three.prj.totalApi.service.Pagination;
import co.three.prj.totalApi.service.TotalApiVO;
import co.three.prj.totalApi.serviceImpl.TotalApiServiceImpl;

public class TotalApiSearch implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {

		String searchBox = request.getParameter("searchBox");
		
		int curPage = 1; // 디폴트 페이지
		
		if (request.getParameter("pageNum") != null) {
			curPage = Integer.parseInt(request.getParameter("pageNum"));
		}
		System.out.println(curPage); //현재페이지
		
		TotalApiServiceImpl totalApiDao = new TotalApiServiceImpl();
		TotalApiVO vo = new TotalApiVO();
		List<TotalApiVO> list = new ArrayList<>();
		

		// 키워드 창이 비워져있을시 전체 리스트 띄우기
		if (searchBox != null) {			
			vo.setSearchBox(searchBox);		
			int listCnt = totalApiDao.searchCount(vo);
			
			System.out.println(searchBox);
			Pagination pagination = new Pagination(listCnt, curPage);
			System.out.println(curPage);
			vo.setStartRow(pagination.getStartIndex());
			vo.setEndRow(curPage * 10);			
			
			// select
			list = totalApiDao.selectSearchList(vo);
			request.setAttribute("ss", searchBox);
			request.setAttribute("list", list);
			request.setAttribute("pagination", pagination);

		}
		
		return "notice/totalApiSearch";

		
	}
}
