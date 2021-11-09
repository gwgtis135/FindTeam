package co.three.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import co.three.prj.comm.Command;
import co.three.prj.comment.service.CommentService;
import co.three.prj.comment.service.CommentVO;
import co.three.prj.comment.serviceImpl.CommentServiceImpl;

public class CommentUpdate implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {

		CommentService commentDao = new CommentServiceImpl();
		CommentVO cvo= new CommentVO();
		ObjectMapper objectMapper = new ObjectMapper(); //jackson lib
		cvo.setCnid(request.getParameter("cnid"));
		cvo=commentDao.CommentSelect(cvo);
		cvo.setCcontent(request.getParameter("ccontent"));

		String comment=null;
		try {
			commentDao.CommentUpdate(cvo);
			comment = objectMapper.writeValueAsString(commentDao.CommentSelect(cvo)); //json 객체변환
		}catch(JsonProcessingException e) {
			e.printStackTrace();
		}
		//members = "{ \"data\" :"+members+"}"; // ajax에 이름달아주기
		return "ajax:"+comment; //ajax:[{"id":"micol","password":"1234" ...}]
	//	return "chart/ajaxTest";
	}

}
