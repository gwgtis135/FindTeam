package co.three.prj.command;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.three.prj.comm.Command;
import co.three.prj.totalApi.service.GetOpenApi;
import co.three.prj.totalApi.service.Pagination;
import co.three.prj.totalApi.service.TotalApiVO;
import co.three.prj.totalApi.serviceImpl.TotalApiServiceImpl;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class TotalApi implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {

		int curPage = 1; //디폴트 페이지

		if (request.getParameter("pageNum") != null) {
			curPage = Integer.parseInt(request.getParameter("pageNum"));
		}
		System.out.println(curPage); //현재페이지

		String pc = "PRA000"; //디폴트값(가방)

		if (request.getParameter("pc") != null) {
			pc = request.getParameter("pc");
		}

		TotalApiVO vo = new TotalApiVO();
		TotalApiServiceImpl totalApiDao = new TotalApiServiceImpl();

		// header메뉴를 통해 첫번째 접근한 경우
		if (curPage == 1 ) {

			// GetApi클래스의 GetApi메소드 호출
			String jsonData;

			try {
				jsonData = GetOpenApi.GetApi(pc);

				System.out.println(jsonData);

				// String타입의 jsonData를 jsonObject라는 것을 인식시켜줌
				JSONObject obj_jsonData = JSONObject.fromObject(jsonData);

				// JSONObject 애들 꺼내기
				JSONObject obj_response = obj_jsonData.getJSONObject("response");
				JSONObject obj_body = obj_response.getJSONObject("body");
				JSONObject obj_items = obj_body.getJSONObject("items");
				JSONArray itemArray = obj_items.getJSONArray("item");
				System.out.println(itemArray);

				// delete
				totalApiDao.deleteTotalApi();
				System.out.println("테이블이 잘렸습니다");

				// 배열을 VO클래스에 담아서 Insert
				for (int i = 0; i < itemArray.size(); i++) {

					// 배열 안에 있는 item객체를 가져옴
					JSONObject item = itemArray.getJSONObject(i);
					vo = new TotalApiVO();
					vo.setAtcId(item.getString("atcId"));
					vo.setDepPlace(item.getString("depPlace"));
					vo.setFdFilePathImg(item.getString("fdFilePathImg"));
					vo.setFdPrdtNm(item.getString("fdPrdtNm"));
					vo.setFdSbjt(item.getString("fdSbjt"));
					vo.setFdSn(Integer.parseInt(item.getString("fdSn")));
					vo.setFdYmd(item.getString("fdYmd"));
					vo.setPrdtClNm(item.getString("prdtClNm"));
					vo.setrNum(Integer.parseInt(item.getString("rnum")));

					// insert
					totalApiDao.insertTotalApi(vo);

				}
			} catch (IOException e) {
				
				e.printStackTrace();
			}
		}

		
		// 페이징 처리
		int listCnt = 57; // 전체리스트 개수

		Pagination pagination = new Pagination(listCnt, curPage);
		
		vo = new TotalApiVO();
		vo.setStartRow(pagination.getStartIndex());
		vo.setEndRow(curPage * 10);
			
		// select		
		List<TotalApiVO> list = new ArrayList<>();
		list = totalApiDao.selectTotalList(vo);
		
		request.setAttribute("list", list);
		request.setAttribute("pagination", pagination);

		// 유실물 통합 페이지로 가세용
		return "notice/totalApi";
	}

}
