package co.three.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import co.three.prj.comm.Command;
import co.three.prj.comment.service.CommentService;
import co.three.prj.comment.service.CommentVO;
import co.three.prj.comment.serviceImpl.CommentServiceImpl;

public class CommentInsert implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session =request.getSession();
		CommentService commentDao = new CommentServiceImpl();
		CommentVO cvo= new CommentVO();
		ObjectMapper objectMapper = new ObjectMapper(); //jackson lib
		cvo.setCid((String)session.getAttribute("id"));
		cvo.setCboard(Integer.valueOf( request.getParameter("cboard")));
		cvo.setCcontent(request.getParameter("ccontent"));
		cvo.setCparent(request.getParameter("cparent"));
		String comment=null;
		try {
			commentDao.CommentInsert(cvo);
			comment = objectMapper.writeValueAsString(commentDao.CommentSelect(cvo)); //json 객체변환
		}catch(JsonProcessingException e) {
			e.printStackTrace();
		}
		//members = "{ \"data\" :"+members+"}"; // ajax에 이름달아주기
		return "ajax:"+comment; //ajax:[{"id":"micol","password":"1234" ...}]
	//	return "chart/ajaxTest";

	}

}
