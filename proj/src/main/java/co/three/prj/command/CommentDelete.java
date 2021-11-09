package co.three.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.three.prj.comm.Command;
import co.three.prj.comment.service.CommentService;
import co.three.prj.comment.service.CommentVO;
import co.three.prj.comment.serviceImpl.CommentServiceImpl;

public class CommentDelete implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		CommentVO cvo = new CommentVO();
		CommentService commentDao = new CommentServiceImpl();
		cvo.setCnid(request.getParameter("cnid"));

		cvo = commentDao.CommentSelect(cvo);
		commentDao.CommentDelete(cvo);
	

		return "ajax:";
	}

}
