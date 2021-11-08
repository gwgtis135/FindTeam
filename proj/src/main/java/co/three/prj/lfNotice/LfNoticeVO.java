package co.three.prj.lfNotice;

import java.sql.Date;

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

	private String id; // 회원 id 입니다
	public String getlFnid() {
		return lFnid;
	}
	public void setlFnid(String lFnid) {
		this.lFnid = lFnid;
	}
	public String getlFnTitle() {
		return lFnTitle;
	}
	public void setlFnTitle(String lFnTitle) {
		this.lFnTitle = lFnTitle;
	}
	public String getlFncontent() {
		return lFncontent;
	}
	public void setlFncontent(String lFncontent) {
		this.lFncontent = lFncontent;
	}
	public String getlFnDate() {
		return lFnDate;
	}
	public void setlFnDate(String lFnDate) {
		this.lFnDate = lFnDate;
	}
	public String getlFnAddress() {
		return lFnAddress;
	}
	public void setlFnAddress(String lFnAddress) {
		this.lFnAddress = lFnAddress;
	}
	public String getlFnHit() {
		return lFnHit;
	}
	public void setlFnHit(String lFnHit) {
		this.lFnHit = lFnHit;
	}
	public String getlFnObj() {
		return lFnObj;
	}
	public void setlFnObj(String lFnObj) {
		this.lFnObj = lFnObj;
	}
	public String getlFnImg() {
		return lFnImg;
	}
	public void setlFnImg(String lFnImg) {
		this.lFnImg = lFnImg;
	}
	public String getlFnobjType() {
		return lFnobjType;
	}
	public void setlFnobjType(String lFnobjType) {
		this.lFnobjType = lFnobjType;
	}
	public String getlFnStatus() {
		return lFnStatus;
	}
	public void setlFnStatus(String lFnStatus) {
		this.lFnStatus = lFnStatus;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	

	private String id; // 회원 id
	
	// 현재페이지, 시작페이지, 끝페이지, 게시글 총 갯수, 페이지당 글 갯수, 마지막페이지, SQL쿼리에 쓸 start, end
		private int nowPage, startPage, endPage, total, cntPerPage, lastPage, start, end;
		private int cntPage = 5;
		
		public LfNoticeVO() {
		}
		public LfNoticeVO(int total, int nowPage, int cntPerPage) {
			setNowPage(nowPage);
			setCntPerPage(cntPerPage);
			setTotal(total);
			calcLastPage(getTotal(), getCntPerPage());
			calcStartEndPage(getNowPage(), cntPage);
			calcStartEnd(getNowPage(), getCntPerPage());
		}
		// 제일 마지막 페이지 계산
		public void calcLastPage(int total, int cntPerPage) {
			setLastPage((int) Math.ceil((double)total / (double)cntPerPage));
		}
		// 시작, 끝 페이지 계산
		public void calcStartEndPage(int nowPage, int cntPage) {
			setEndPage(((int)Math.ceil((double)nowPage / (double)cntPage)) * cntPage);
			if (getLastPage() < getEndPage()) {
				setEndPage(getLastPage());
			}
			setStartPage(getEndPage() - cntPage + 1);
			if (getStartPage() < 1) {
				setStartPage(1);
			}
		}
		// DB 쿼리에서 사용할 start, end값 계산
		public void calcStartEnd(int nowPage, int cntPerPage) {
			setEnd(nowPage * cntPerPage);
			setStart(getEnd() - cntPerPage + 1);
		}
		
		public int getNowPage() {
			return nowPage;
		}
		public void setNowPage(int nowPage) {
			this.nowPage = nowPage;
		}
		public int getStartPage() {
			return startPage;
		}
		public void setStartPage(int startPage) {
			this.startPage = startPage;
		}
		public int getEndPage() {
			return endPage;
		}
		public void setEndPage(int endPage) {
			this.endPage = endPage;
		}
		public int getTotal() {
			return total;
		}
		public void setTotal(int total) {
			this.total = total;
		}
		public int getCntPerPage() {
			return cntPerPage;
		}
		public void setCntPerPage(int cntPerPage) {
			this.cntPerPage = cntPerPage;
		}
		public int getLastPage() {
			return lastPage;
		}
		public void setLastPage(int lastPage) {
			this.lastPage = lastPage;
		}
		public int getStart() {
			return start;
		}
		public void setStart(int start) {
			this.start = start;
		}
		public int getEnd() {
			return end;
		}
		public void setEnd(int end) {
			this.end = end;
		}	
		public int setCntPage() {
			return cntPage;
		}
		public void getCntPage(int cntPage) {
			this.cntPage = cntPage;
		}
		@Override
		public String toString() {
			return "PagingVO [nowPage=" + nowPage + ", startPage=" + startPage + ", endPage=" + endPage + ", total=" + total
					+ ", cntPerPage=" + cntPerPage + ", lastPage=" + lastPage + ", start=" + start + ", end=" + end
					+ ", cntPage=" + cntPage + "]";
		}


}
