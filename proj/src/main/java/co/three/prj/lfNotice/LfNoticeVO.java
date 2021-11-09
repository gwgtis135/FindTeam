package co.three.prj.lfNotice;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class LfNoticeVO {

	private String lFnid;
	private String lFnTitle;
	private String lFncontent;
	private String lFnDate;
	private String lFnAddress;
	private String lFnHit;
	private String lFnObj; // 물건이름
	private String lFnImg;
	private String lFnobjType; // 물건타입(가방, 핸드폰...)
	private String lFnStatus; // 페이지 상태(분실,습득)
	private String id; // 회원 id
	private String sDate;
	private String eDate;
	private int start;
	private int end;
	private int count;
	private String searchType;
	private String lostsearch;
	@Override
	public String toString() {
		return "LfNoticeVO [lFnid=" + lFnid + ", lFnTitle=" + lFnTitle + ", lFncontent=" + lFncontent + ", lFnDate="
				+ lFnDate + ", lFnAddress=" + lFnAddress + ", lFnHit=" + lFnHit + ", lFnObj=" + lFnObj + ", lFnImg="
				+ lFnImg + ", lFnobjType=" + lFnobjType + ", lFnStatus=" + lFnStatus + ", id=" + id + ", sDate=" + sDate
				+ ", eDate=" + eDate + ", start=" + start + ", end=" + end + ", count=" + count + "]";
	}
	
	
}
