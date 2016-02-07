package board;

import java.util.Date;

import com.mysql.fabric.xmlrpc.base.Data;

public class BoardDto {
	private int noticenum; //게시판 번호
	private String noticepw; //게시판 비밀번호
	private String noticetitle; //게시판 제목
	private String noticecontext; //게시판 내용
	private Date noticedate; //게시일
	private int noticecount; //조회수
	private int pos; //답글
	private String poslength; //답글 내용
	private String answer; //정답
	private int matterrecom; //글 추천수
	private int mattersopeople; //문제를 푼 사람수
	private String id; //게시자
	private int mileage; //마일리지
	private String level;

	
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	public int getNoticenum() {
		return noticenum;
	}
	public void setNoticenum(int noticenum) {
		this.noticenum = noticenum;
	}
	public String getNoticepw() {
		return noticepw;
	}
	public void setNoticepw(String noticepw) {
		this.noticepw = noticepw;
	}
	public String getNoticetitle() {
		return noticetitle;
	}
	public void setNoticetitle(String noticetitle) {
		this.noticetitle = noticetitle;
	}
	public String getNoticecontext() {
		return noticecontext;
	}
	public void setNoticecontext(String noticecontext) {
		this.noticecontext = noticecontext;
	}
	public Date getNoticedate() {
		return noticedate;
	}
	public void setNoticedate(Date noticedate) {
		this.noticedate = noticedate;
	}
	public int getNoticecount() {
		return noticecount;
	}
	public void setNoticecount(int noticecount) {
		this.noticecount = noticecount;
	}
	public int getPos() {
		return pos;
	}
	public void setPos(int pos) {
		this.pos = pos;
	}
	public String getPoslength() {
		return poslength;
	}
	public void setPoslength(String poslength) {
		this.poslength = poslength;
	}
	public String getAnswer() {
		System.out.println("getAnswer() 실행"+ this.answer);
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
		
	}
	public int getMatterrecom() {
		return matterrecom;
	}
	public void setMatterrecom(int matterrecom) {
		this.matterrecom = matterrecom;
	}
	public int getMattersopeople() {
		return mattersopeople;
	}
	public void setMattersopeople(int mattersopeople) {
		this.mattersopeople = mattersopeople;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getMileage() {
		return mileage;
	}
	public void setMileage(int mileage) {
		this.mileage = mileage;
	}
	
	
	
}
