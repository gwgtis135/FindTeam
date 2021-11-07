package co.three.prj.lfNotice.service;

import java.util.List;

public interface LfNoticeMapper {

	List<LfNoticeVO> selectLfNoticeList();
	LfNoticeVO selectLfNotice(LfNoticeVO vo);
	
	int insertLfNotice(LfNoticeVO vo);
	int deleteLfNotice(LfNoticeVO vo);
	int updateLfNotice(LfNoticeVO vo);
	
}
