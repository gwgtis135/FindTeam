package co.three.prj.lfNotice;

import java.util.List;

public interface LfNoticeMapper {
	List<LfNoticeVO> LfNoticeSelectList(LfNoticeVO vo);
	LfNoticeVO LfNoticeSearch(String obj, String sd, String ed);
	LfNoticeVO LfNoticeSelect(LfNoticeVO vo);
	List<LfNoticeVO> searchTypeSelect(LfNoticeVO vo);
	int LfNoticeCount(LfNoticeVO vo);
	int LfNoticeInsert(LfNoticeVO vo);
	int LfNoticeDelete(LfNoticeVO vo);
	int LfNoticeUpdate(LfNoticeVO vo);
	int LfNoticeHitUpdate(LfNoticeVO vo);
}