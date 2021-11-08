package co.three.prj.lfNotice;

import java.util.List;

public interface LfNoticeService {

	List<LfNoticeVO> LfNoticeSelectList(LfNoticeVO vo);
	LfNoticeVO LfNoticeSelect(LfNoticeVO vo);
	int LfNoticeInsert(LfNoticeVO vo);
	int LfNoticeDelete(LfNoticeVO vo);
	int LfNoticeUpdate(LfNoticeVO vo);
	int LfNoticeHitUpdate(LfNoticeVO vo);
}
