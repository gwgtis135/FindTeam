package co.three.prj.command;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.three.prj.comm.Command;
import co.three.prj.totalApi.service.TotalApiVO;
import co.three.prj.totalApi.serviceImpl.TotalApiServiceImpl;

public class TotalApiDetail implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		// 유실물 통합 상세페이지 
		
		TotalApiServiceImpl totalApiDao = new TotalApiServiceImpl();
		TotalApiVO vo = new TotalApiVO();
		vo.setrNum(Integer.valueOf(request.getParameter("rnum")));
		vo = totalApiDao.selectTotalDetail(vo);
		
		request.setAttribute("detail", vo);
		return "notice/totalApiDetail";
	}

}
