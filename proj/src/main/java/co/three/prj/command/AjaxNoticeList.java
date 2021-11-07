package co.three.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import co.three.prj.comm.Command;
import co.three.prj.notice.service.NoticeService;
import co.three.prj.notice.serviceImpl.NoticeServiceImpl;

public class AjaxNoticeList implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		NoticeService noticeDao = new NoticeServiceImpl();
		ObjectMapper objectMapper = new ObjectMapper(); //jackson lib
		String notices=null;
		try {
			notices = objectMapper.writeValueAsString(noticeDao.noticeSelectList()); //json 객체변환
		}catch(JsonProcessingException e) {
			e.printStackTrace();
		}
		System.out.println(notices);
		//members = "{ \"data\" :"+members+"}"; // ajax에 이름달아주기
		return "ajax:"+notices; //ajax:[{"id":"micol","password":"1234" ...}]
	//	return "chart/ajaxTest";
	}

}
