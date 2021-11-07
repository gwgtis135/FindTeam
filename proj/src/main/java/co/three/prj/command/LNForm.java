package co.three.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.three.prj.comm.Command;

public class LNForm implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		// 분실물 습득물 입력폼.
		return "lfnotice/lNForm";
	}

}
