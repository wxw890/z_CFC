package board;

import java.util.Date;

import com.mysql.fabric.xmlrpc.base.Data;

public class BoardDto {
	private int noticenum; //�Խ��� ��ȣ
	private String noticepw; //�Խ��� ��й�ȣ
	private String noticetitle; //�Խ��� ����
	private String noticecontext; //�Խ��� ����
	private Date noticedate; //�Խ���
	private int noticecount; //��ȸ��
	private int pos; //���
	private String poslength; //��� ����
	private String answer; //����
	private int matterrecom; //�� ��õ��
	private int mattersopeople; //������ Ǭ �����
	private String id; //�Խ���
	private int mileage; //���ϸ���
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
		System.out.println("getAnswer() ����"+ this.answer);
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
