package co.three.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.three.prj.comm.Command;

public class TotalNotice implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		// 유실물 통합 페이지로 가세용
		return "notice/totalNotice";
	}

}
