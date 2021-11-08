package co.three.prj.totalApi.service;

import java.util.List;

public interface TotalApiService {
	
	List<TotalApiVO> selectTotalList(TotalApiVO vo);
	
	List<TotalApiVO> selectSearchList(TotalApiVO vo); //키워드
	
	TotalApiVO selectTotalDetail(TotalApiVO vo); //상세조회
	
	int insertTotalApi(TotalApiVO vo);
	
	int deleteTotalApi();
	
	int searchCount(TotalApiVO vo);
	
	
	
	
}
